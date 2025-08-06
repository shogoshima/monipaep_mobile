import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProtocolScreen extends ConsumerStatefulWidget {
  final String symptomOccurrenceId;

  const ProtocolScreen({super.key, required this.symptomOccurrenceId});

  @override
  ConsumerState<ProtocolScreen> createState() => _ProtocolScreenState();
}

class _ProtocolScreenState extends ConsumerState<ProtocolScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registro de Sintomas')),
      body: Center(
        child: Text(
          'Protocolo para o ID: ${widget.symptomOccurrenceId}',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
