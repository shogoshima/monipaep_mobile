import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/gpt_inputs.dart';
import 'package:monipaep_mobile/providers/gpt_protocol.dart';
import 'package:shimmer/shimmer.dart';

class OccurrenceAnalysisScreen extends ConsumerWidget {
  final String symptomOccurrenceId;
  final List<Analysis> analyses;
  const OccurrenceAnalysisScreen({
    super.key,
    required this.analyses,
    required this.symptomOccurrenceId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inputs = ref.watch(gptInputsProvider(symptomOccurrenceId, analyses));
    final textAsync = ref.watch(
      gptProtocolProvider(symptomOccurrenceId, inputs),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Análise de Ocorrência'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            analyses.isEmpty
                ? Center(
                  child: Text(
                    'Nenhuma análise disponível',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                )
                : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Card para o texto gerado pela IA
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 3,
                      margin: const EdgeInsets.only(bottom: 16),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: textAsync.when(
                          data:
                              (data) => Text(
                                data,
                                style: Theme.of(
                                  context,
                                ).textTheme.bodyLarge?.copyWith(height: 1.5),
                              ),
                          loading:
                              () => SizedBox(
                                width: double.infinity,
                                child: Shimmer.fromColors(
                                  baseColor: Colors.black26,
                                  highlightColor: Colors.black12,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: List.generate(6, (index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 6.0,
                                        ),
                                        child: Container(
                                          height: 12,
                                          width:
                                              double
                                                  .infinity, // ou defina um valor fixo se quiser variar o comprimento
                                          decoration: BoxDecoration(
                                            color:
                                                Colors
                                                    .white, // a cor interna; o shimmer vai animar sobre ela
                                            borderRadius: BorderRadius.circular(
                                              8.0,
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                ),
                              ),

                          error:
                              (error, stack) => Text(
                                'Erro ao carregar análise: $error',
                                style: const TextStyle(color: Colors.red),
                              ),
                        ),
                      ),
                    ),

                    // Lista de análises detalhadas
                    Expanded(
                      child: ListView.builder(
                        itemCount: analyses.length,
                        itemBuilder: (context, index) {
                          final analysis = analyses[index];
                          return Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 2,
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            child: ExpansionTile(
                              leading: CircleAvatar(
                                backgroundColor:
                                    Theme.of(context).primaryColorLight,
                                child: Text(
                                  analysis.gravityLevel.toString(),
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColorDark,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              title: Text(
                                analysis.diseaseName,
                                style: Theme.of(context).textTheme.titleSmall
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(analysis.gravityLabel),
                              childrenPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 12,
                              ),
                              children: [
                                Text(
                                  'Protocolo de Saúde: ${analysis.healthProtocolId}',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Instruções:',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  analysis.instructions,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                const SizedBox(height: 12),
                                if (analysis
                                    .comorbiditiesMatched
                                    .isNotEmpty) ...[
                                  Text(
                                    'Suas comorbidades em risco:',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Wrap(
                                    spacing: 8,
                                    runSpacing: 4,
                                    children:
                                        analysis.comorbiditiesMatched
                                            .map(
                                              (c) => Chip(
                                                label: Text(c),
                                                backgroundColor:
                                                    Theme.of(context)
                                                        .colorScheme
                                                        .primaryContainer,
                                              ),
                                            )
                                            .toList(),
                                  ),
                                  const SizedBox(height: 12),
                                ],
                                if (analysis
                                    .specialConditionsMatched
                                    .isNotEmpty) ...[
                                  Text(
                                    'Suas condições especiais em risco:',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Wrap(
                                    spacing: 8,
                                    runSpacing: 4,
                                    children:
                                        analysis.specialConditionsMatched
                                            .map(
                                              (c) => Chip(
                                                label: Text(c),
                                                backgroundColor:
                                                    Theme.of(context)
                                                        .colorScheme
                                                        .primaryContainer,
                                              ),
                                            )
                                            .toList(),
                                  ),
                                  const SizedBox(height: 12),
                                ],
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
      ),
    );
  }
}
