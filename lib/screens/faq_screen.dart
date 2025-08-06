import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/faq_list.dart';

class FaqScreen extends ConsumerStatefulWidget {
  const FaqScreen({super.key});

  @override
  ConsumerState<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends ConsumerState<FaqScreen> {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<FaqGroup>> faqGroups = ref.watch(faqListProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Perguntas Frequentes')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: faqGroups.when(
          data: (groups) {
            if (groups.isEmpty) {
              return const Center(child: Text('Nenhum FAQ disponível.'));
            }
            return ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: groups.length,
              itemBuilder: (context, index) {
                final group = groups[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 4.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ExpansionTile(
                    title: Text(
                      group.name,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    children:
                        group.faqs.map((faq) {
                          return ListTile(
                            title: Text(
                              faq.question,
                              style: const TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                faq.answer,
                                style: const TextStyle(fontSize: 13.0),
                              ),
                            ),
                            visualDensity: const VisualDensity(vertical: 0),
                          );
                        }).toList(),
                  ),
                );
              },
            );
          },
          error:
              (err, stack) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Erro ao carregar FAQs: \$err',
                  style: const TextStyle(color: Colors.red),
                ),
              ),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
