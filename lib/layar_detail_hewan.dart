import 'package:flutter/material.dart';
import 'model_hewan.dart';

class LayarDetailHewan extends StatelessWidget {
  final Animal animal;

  const LayarDetailHewan({
    super.key,
    required this.animal,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text('Detail Hewan'),
        backgroundColor: const Color(0xFF6AA76A),
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final h = constraints.maxHeight;
            final w = constraints.maxWidth;

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.04, vertical: h * 0.01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Icon hewan
                  Container(
                    width: w * 0.25,
                    height: w * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color(0xFF6AA76A),
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        animal.iconPath,
                        style: const TextStyle(fontSize: 60),
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.01),
                  // Nama hewan
                  Text(
                    animal.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: h * 0.01),
                  // Konten info dalam grid
                  Expanded(
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                        crossAxisSpacing: w * 0.03,
                        mainAxisSpacing: h * 0.01,
                      ),
                      children: [
                        _buildInfoCard('Deskripsi', animal.description),
                        _buildInfoCard('Karakteristik', animal.characteristics),
                        _buildInfoCard('Habitat', animal.habitat),
                        _buildInfoCard('Diet', animal.diet),
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.01),
                  // Tombol kembali
                  SizedBox(
                    width: w * 0.92,
                    height: h * 0.06,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        'Kembali',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
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


  Widget _buildInfoCard(String title, String content) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFF6AA76A),
          width: 1.5,
        ),
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6AA76A),
            ),
          ),
          const SizedBox(height: 4),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                content,
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.black87,
                  height: 1.3,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
