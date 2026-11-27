import 'package:flutter/material.dart';
import 'config/app_palette.dart';
import 'config/app_theme.dart';
import 'components/action_pill_button.dart';

void main() {
  runApp(const StudentPortfolioApp());
}

class StudentPortfolioApp extends StatelessWidget {
  const StudentPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.cleanLight,
      home: const StudentProfileScreen(),
    );
  }
}

class StudentProfileScreen extends StatelessWidget {
  const StudentProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 380),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            decoration: BoxDecoration(
              color: AppPalette.cardSurface,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: AppPalette.inkDark.withValues(alpha: 0.06),
                  blurRadius: 24,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Avatar Inisial
                Container(
                  width: 76,
                  height: 76,
                  decoration: const BoxDecoration(
                    color: AppPalette.accentSoft,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'DP',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      color: AppPalette.accent,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Nama Lengkap
                const Text(
                  'Darrell Putra Prayata',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppPalette.inkDark,
                  ),
                ),
                const SizedBox(height: 8),

                // Lencana (Badge) NIM
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                  decoration: BoxDecoration(
                    color: AppPalette.canvas,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'NIM • 20250801150',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppPalette.inkMuted,
                      letterSpacing: 0.8,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Deskripsi Singkat
                const Text(
                  'Kunjungi repositori GitHub di bawah untuk melihat progres tugas dan proyek pemrograman saya.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.5,
                    color: AppPalette.inkMuted,
                  ),
                ),
                const SizedBox(height: 28),

                // Tombol Utama: Buka GitHub
                const ActionPillButton(
                  text: 'Kunjungi GitHub',
                  icon: Icons.open_in_new_rounded,
                  externalUrl: 'https://github.com/Darrellsz',
                ),
                const SizedBox(height: 12),

                // Tombol Sekunder: Aksi Internal
                ActionPillButton(
                  text: 'Sapa Darrell',
                  icon: Icons.waving_hand_rounded,
                  isOutlined: true,
                  onTap: () {
                    debugPrint('Halo dari Darrell Putra Prayata (20250801150)');
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Halo! Terima kasih sudah berkunjung.'),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}