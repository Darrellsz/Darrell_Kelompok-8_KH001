import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../config/app_palette.dart';

class ActionPillButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final String? externalUrl;
  final VoidCallback? onTap;
  final bool isOutlined;

  const ActionPillButton({
    super.key,
    required this.text,
    required this.icon,
    this.externalUrl,
    this.onTap,
    this.isOutlined = false,
  });

  Future<void> _executeAction(BuildContext context) async {
    if (onTap != null) {
      onTap!();
      return;
    }

    if (externalUrl != null) {
      final Uri target = Uri.parse(externalUrl!);
      final bool launched = await launchUrl(
        target,
        mode: LaunchMode.externalApplication,
      );

      if (!launched && context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Tidak dapat membuka tautan browser.'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final shape = const StadiumBorder();
    const padding = EdgeInsets.symmetric(vertical: 15, horizontal: 24);

    if (isOutlined) {
      return SizedBox(
        width: double.infinity,
        child: OutlinedButton.icon(
          onPressed: () => _executeAction(context),
          icon: Icon(icon, size: 20),
          label: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
          ),
          style: OutlinedButton.styleFrom(
            foregroundColor: AppPalette.accent,
            side: const BorderSide(color: AppPalette.accent, width: 1.5),
            padding: padding,
            shape: shape,
          ),
        ),
      );
    }

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () => _executeAction(context),
        icon: Icon(icon, size: 20),
        label: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppPalette.accent,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: padding,
          shape: shape,
        ),
      ),
    );
  }
}