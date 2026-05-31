import 'package:flutter/material.dart';
import 'layar_pilih_hewan.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6AA76A)),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFEFF7EF), // soft background
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF6AA76A),
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 56),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/pilih': (context) => const LayarPilihHewan(),
        '/profil': (context) => const ProfileScreen(),
      },
    );
  }

  static void showInfoDialog(BuildContext context) {
    showAboutDialog(
      context: context,
      applicationName: 'Aktivitas1',
      applicationVersion: '1.0',
      applicationLegalese: 'UNTAG Surabaya - Praktikum PAB',
      children: const [
        Text('Aplikasi sederhana untuk memilih hewan dan melihat informasinya.'),
      ],
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const boldText = TextStyle(color: Colors.black87, fontWeight: FontWeight.bold);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final h = constraints.maxHeight;
            final w = constraints.maxWidth;

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: h * 0.03),
                  const Text('UNTAG SURABAYA', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900)),
                  const SizedBox(height: 6),
                  const Text('PRAKTIKUM PAB 2026', style: TextStyle(fontSize: 16, color: Colors.black54)),
                  SizedBox(height: h * 0.04),

                  Text('1462300098', style: boldText.copyWith(fontSize: 16)),
                  SizedBox(height: h * 0.03),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      width: w * 0.78,
                      height: h * 0.48,
                      child: Image.asset(
                        'assets/foto_profil.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.03),

                  Text('Gilang Labuh Samudra', style: boldText.copyWith(fontSize: 20)),
                  SizedBox(height: h * 0.04),

                  SizedBox(
                    width: w * 0.92,
                    height: 60,
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.login, size: 24),
                      label: const Text(
                        'Masuk',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'serif',
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LayarPilihHewan(),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: h * 0.03),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        backgroundColor: const Color(0xFFEFF7EF),
        selectedItemColor: const Color(0xFF4D8A4D),
        unselectedItemColor: const Color(0xFF7F7F7F),
        selectedIconTheme: const IconThemeData(size: 28),
        unselectedIconTheme: const IconThemeData(size: 24),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
        iconSize: 26,
        onTap: (index) {
          if (index == 1) {
            Navigator.of(context).pushReplacementNamed('/pilih');
          } else if (index == 2) {
            Navigator.of(context).pushReplacementNamed('/profil');
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Hewan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final h = constraints.maxHeight;
            final w = constraints.maxWidth;

            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: h * 0.28,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFF4D8A4D),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.16),
                                blurRadius: 16,
                                offset: const Offset(0, 6),
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.person,
                              size: 60,
                              color: Color(0xFF4D8A4D),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Profil',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.06),
                    child: Column(
                      children: [
                        _buildProfileTile(
                          icon: Icons.person,
                          text: 'PAB 2025',
                        ),
                        _buildProfileTile(
                          icon: Icons.phone,
                          text: '1462300098',
                        ),
                        _buildProfileTile(
                          icon: Icons.email,
                          text: 'pab2023@gmail.com',
                        ),
                        _buildProfileTile(
                          icon: Icons.location_on,
                          text: 'Surabaya',
                        ),
                        _buildProfileTile(
                          icon: Icons.camera_alt,
                          text: 'pab2023',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.04),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 2,
        backgroundColor: const Color(0xFFEFF7EF),
        selectedItemColor: const Color(0xFF4D8A4D),
        unselectedItemColor: const Color(0xFF7F7F7F),
        selectedIconTheme: const IconThemeData(size: 28),
        unselectedIconTheme: const IconThemeData(size: 24),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
        iconSize: 26,
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context).pushReplacementNamed('/');
          } else if (index == 1) {
            Navigator.of(context).pushReplacementNamed('/pilih');
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Hewan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }

  static Widget _buildProfileTile({required IconData icon, required String text}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFF4D8A4D)),
        title: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
