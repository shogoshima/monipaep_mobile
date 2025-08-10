import 'package:flutter/material.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/widgets/widgets.dart';

Future<void> showErrorDialog(BuildContext context, String content) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Erro', style: TextStyle(color: Colors.red)),
        content: Text(content),
        actions: <Widget>[
          TextActionButton(
            label: 'OK',
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

Future<void> showSuccessDialog(BuildContext context, String content) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Icon(Icons.check_circle, color: Colors.green, size: 100),
        content: Text(content, textAlign: TextAlign.center),
        actions: <Widget>[
          TextActionButton(
            label: 'OK',
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

Future<void> showInfoDialog(BuildContext context, String content) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Informação',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        content: Text(content),
        actions: <Widget>[
          TextActionButton(
            label: 'OK',
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

Future<void> showInputDialog(
  BuildContext context,
  String title,
  String content,
  Function(String) onConfirm,
) async {
  GlobalKey key = GlobalKey();
  final TextEditingController controller = TextEditingController();
  return showDialog<void>(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title, style: Theme.of(context).textTheme.titleLarge),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(content),
            Form(
              key: key,
              child: TextFormField(
                controller: controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Digite aqui'),
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      (value.length != 7 && value.length != 8)) {
                    return 'Por favor, digite um número USP válido';
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment:
                MainAxisAlignment
                    .spaceBetween, // Distribute space between buttons
            children: <Widget>[
              TextActionButton(
                label: 'Cancelar',
                onPressed: () => Navigator.of(context).pop(),
              ),
              PrimaryButton(
                label: 'Confirmar',
                onPressed: () async {
                  if ((key.currentState as FormState).validate()) {
                    Navigator.of(context).pop(); // Close the dialog
                    onConfirm(controller.text); // Trigger the callback
                  }
                },
              ),
            ],
          ),
        ],
      );
    },
  );
}

Future<void> showConfirmDialog(
  BuildContext context,
  List<Symptom> selectedSymptoms,
  TextEditingController remarksController,
  VoidCallback onConfirm,
) async {
  return showDialog<void>(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 8,
        titlePadding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
        contentPadding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
        actionsPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        title: Row(
          children: [
            Icon(Icons.info_outline, color: Theme.of(context).primaryColor),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                'Confirmar Sintomas',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ],
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sintomas selecionados:',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 8),
              ...selectedSymptoms.map(
                (symptom) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        size: 20,
                        color: Theme.of(context).highlightColor,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          symptom.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(height: 24),
              Text(
                'Observações adicionais (opcional):',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: remarksController,
                maxLines: 4,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: const EdgeInsets.all(12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'Digite suas observações aqui',
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextActionButton(
            label: 'Cancelar',
            onPressed: () => Navigator.of(context).pop(),
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.of(context).pop();
              onConfirm();
            },
            label: 'Enviar',
          ),
        ],
      );
    },
  );
}
