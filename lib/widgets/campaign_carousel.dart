import 'package:flutter/material.dart';

final List<String> campaigns = [
  'https://www.gov.br/conitec/pt-br/assuntos/noticias/2024/fevereiro/pacientes-com-vasculite-ganham-protocolo-sobre-tratamento-da-doenca-no-sus/vasculite-sus_card-conitec-1.png',
  'https://www.conass.org.br/wp-content/uploads/2022/01/IMG000000000278418-1024x1024.jpeg',
  'https://www.unasus.gov.br/uploads/Lanc%CC%A7amento%20Odonto%20infecciosas_%20FEED%201_%20%281%29.jpg',
];

class CampaignCarousel extends StatefulWidget {
  const CampaignCarousel({super.key});

  @override
  State<CampaignCarousel> createState() => _CampaignCarouselState();
}

class _CampaignCarouselState extends State<CampaignCarousel> {
  final CarouselController _controller = CarouselController(initialItem: 1);
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: height * 2 / 5),
      child: CarouselView.weighted(
        controller: _controller,
        itemSnapping: true,
        flexWeights: const <int>[1, 7, 1],
        children:
            campaigns.map((String campaign) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: NetworkImage(campaign),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}
