import 'package:flutter/material.dart';

/// Botões customizados seguindo o estilo arredondado, padding consistente e tipografia clara.

/// Botão principal (Elevated) — para ações principais.
class PrimaryButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final bool fullWidth;

  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.fullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fullWidth ? double.infinity : null,
      child: FilledButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: Text(label),
      ),
    );
  }
}

/// Botão secundário (Outlined) — para ações secundárias.
class SecondaryButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final bool fullWidth;

  const SecondaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.fullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fullWidth ? double.infinity : null,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          side: BorderSide(color: Theme.of(context).primaryColor),
        ),
        onPressed: onPressed,
        child: Text(label),
      ),
    );
  }
}

/// Botão de texto (Text) — para ações menos importantes.
class TextActionButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;

  const TextActionButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}

/// Botão com ícone e texto — para ações específicas.
class IconTextButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final void Function()? onPressed;
  final bool fullWidth;

  const IconTextButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
    this.fullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fullWidth ? double.infinity : null,
      child: ElevatedButton.icon(
        icon: Icon(icon, size: 20),
        label: Text(label),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 4,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
