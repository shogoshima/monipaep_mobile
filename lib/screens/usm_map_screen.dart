import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:monipaep_mobile/providers/usm_list.dart';
import 'package:monipaep_mobile/models/usm.dart';
import 'package:monipaep_mobile/widgets/buttons.dart'; // ensure this path is correct

class UsmMapScreen extends ConsumerStatefulWidget {
  const UsmMapScreen({super.key});

  @override
  ConsumerState<UsmMapScreen> createState() => _UsmMapScreenState();
}

class _UsmMapScreenState extends ConsumerState<UsmMapScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  CameraPosition? _initialPosition; // null until location is fetched
  final CameraPosition defaultPosition = const CameraPosition(
    target: LatLng(-22.0185347, -47.9372568), // Default to São Carlos
    zoom: 5.0,
  );

  String? _selectedUsmId;

  @override
  void initState() {
    super.initState();
    _determinePosition();
  }

  Future<void> _determinePosition() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return; // optionally show user prompt
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        return;
      }

      final position = await Geolocator.getCurrentPosition();
      setState(() {
        _initialPosition = CameraPosition(
          target: LatLng(position.latitude, position.longitude),
          zoom: 16.0,
        );
      });
    } catch (e) {
      // handle errors if desired
    }
  }

  Future<void> _moveCameraTo(Usm usm, {double zoom = 16.0}) async {
    final controller = await _controller.future;
    final pos = CameraPosition(
      target: LatLng(usm.latitude, usm.longitude),
      zoom: zoom,
    );
    await controller.animateCamera(CameraUpdate.newCameraPosition(pos));
    setState(() {
      _selectedUsmId = usm.id;
    });
  }

  Future<void> _showUsmDetails(Usm usm) async {
    // also move camera (optional)
    await _moveCameraTo(usm);

    if (!mounted) return;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // allow full-height / full-width control
      backgroundColor: Colors.transparent, // we'll draw the sheet container
      builder: (context) {
        // FractionallySizedBox with widthFactor 1.0 makes it take full width
        return FractionallySizedBox(
          widthFactor: 0.95,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              // match app sheet style: rounded top corners, full width
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              ),
              child: SafeArea(
                top: false,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 40,
                          height: 4,
                          margin: const EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      Text(
                        usm.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text('${usm.city} • ${usm.state}'),
                      if (usm.neighborhood.isNotEmpty)
                        Text('Bairro: ${usm.neighborhood}'),
                      if ((usm.street ?? '').isNotEmpty)
                        Text('Rua: ${usm.street} ${usm.number ?? ''}'),
                      const SizedBox(height: 12),
                      if (usm.weekdayDescriptions != null &&
                          usm.weekdayDescriptions!.isNotEmpty)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Horários:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            ...usm.weekdayDescriptions!.map(
                              (s) => Text('• $s'),
                            ),
                          ],
                        ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: TextActionButton(
                              onPressed: () => Navigator.of(context).pop(),
                              label: 'Fechar',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Set<Marker> _buildMarkers(List<Usm> usms) {
    return usms.map((usm) {
      final isSelected = _selectedUsmId == usm.id;
      return Marker(
        markerId: MarkerId(usm.id),
        position: LatLng(usm.latitude, usm.longitude),
        infoWindow: InfoWindow(
          title: usm.name,
          snippet: '${usm.city} - ${usm.neighborhood}',
        ),
        icon:
            isSelected
                ? BitmapDescriptor.defaultMarkerWithHue(
                  BitmapDescriptor.hueAzure,
                )
                : BitmapDescriptor.defaultMarker,
        onTap: () => _showUsmDetails(usm),
      );
    }).toSet();
  }

  @override
  Widget build(BuildContext context) {
    final usmsAsync = ref.watch(usmListProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Unidades de Saúde Próximas')),
      body: usmsAsync.when(
        data: (usms) {
          return Stack(
            children: [
              GoogleMap(
                myLocationEnabled: true,
                mapType: MapType.normal,
                padding: const EdgeInsets.only(
                  bottom: 220.0,
                ), // leave more space for the bigger list
                initialCameraPosition: _initialPosition ?? defaultPosition,
                markers: _buildMarkers(usms),
                onMapCreated: (GoogleMapController controller) {
                  if (!_controller.isCompleted) {
                    _controller.complete(controller);
                  }
                },
              ),

              // Bottom horizontal scrollable list of USMs (larger cards)
              Positioned(
                left: 0,
                right: 0,
                bottom: 16,
                height: 220,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 200,
                    child: ListView.separated(
                      clipBehavior: Clip.none,
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      scrollDirection: Axis.horizontal,
                      itemCount: usms.length,
                      separatorBuilder: (_, __) => const SizedBox(width: 14),
                      itemBuilder: (context, index) {
                        final usm = usms[index];
                        final isSelected = usm.id == _selectedUsmId;
                        final distance = (Geolocator.distanceBetween(
                                  _initialPosition?.target.latitude ??
                                      -22.0185347,
                                  _initialPosition?.target.longitude ??
                                      -47.9372568,
                                  usm.latitude,
                                  usm.longitude,
                                ) /
                                1000)
                            .toStringAsFixed(2); // distance in kilometers
                        return GestureDetector(
                          onTap: () => _moveCameraTo(usm),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            width: 340, // bigger width
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black45,
                                  blurRadius: 6,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              color:
                                  isSelected
                                      ? Colors.blue.shade50
                                      : Colors.white,
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                color:
                                    isSelected
                                        ? Colors.blue
                                        : Colors.transparent,
                                width: 1.6,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  usm.name,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  usm.neighborhood,
                                  style: const TextStyle(fontSize: 13),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  '${usm.street ?? ''} ${usm.number ?? ''}',
                                  style: const TextStyle(fontSize: 13),
                                ),
                                Text(
                                  '${usm.city} • ${usm.state}',
                                  style: const TextStyle(fontSize: 13),
                                ),
                                const SizedBox(height: 8),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '$distance km',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Theme.of(
                                                context,
                                              ).colorScheme.primary,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: ' de você',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    PrimaryButton(
                                      onPressed: () => _moveCameraTo(usm),
                                      label: 'Mostrar no mapa',
                                    ),
                                    SecondaryButton(
                                      onPressed: () => _showUsmDetails(usm),
                                      label: 'Mais detalhes',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error:
            (err, st) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Erro ao carregar unidades: $err'),
            ),
      ),
    );
  }
}
