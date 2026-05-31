class Animal {
  final String name;
  final String iconPath;
  final String description;
  final String characteristics;
  final String habitat;
  final String diet;

  Animal({
    required this.name,
    required this.iconPath,
    required this.description,
    required this.characteristics,
    required this.habitat,
    required this.diet,
  });
}

final List<Animal> animals = [
  Animal(
    name: 'Kucing',
    iconPath: '🐱',
    description: 'Kucing adalah hewan peliharaan yang lucu dan menggemaskan.',
    characteristics:
        'Kucing memiliki cakar yang tajam, mata yang tajam, dan telinga yang sensitif. Mereka adalah predator yang gesit dan lincah.',
    habitat: 'Kucing dapat hidup di berbagai lingkungan, terutama di rumah manusia.',
    diet: 'Kucing adalah karnivora yang makan daging, ikan, dan makanan khusus untuk kucing.',
  ),
  Animal(
    name: 'Anjing',
    iconPath: '🐕',
    description: 'Anjing adalah sahabat setia manusia dan dikenal sebagai hewan yang loyal.',
    characteristics:
        'Anjing memiliki pendengaran dan penciuman yang sangat baik. Mereka cerdas, ramah, dan dapat dilatih dengan mudah.',
    habitat: 'Anjing dapat hidup di rumah, peternakan, atau di alam liar tergantung jenisnya.',
    diet: 'Anjing adalah omnivora yang makan daging, sayuran, dan butiran dalam makanan mereka.',
  ),
  Animal(
    name: 'Kelinci',
    iconPath: '🐰',
    description: 'Kelinci adalah hewan kecil yang lucu dengan telinga panjang dan bulu yang lembut.',
    characteristics:
        'Kelinci memiliki gigi yang terus tumbuh, kaki belakang yang kuat untuk melompat, dan mata di samping kepala.',
    habitat: 'Kelinci hidup di liang tanah di padang rumput, hutan, dan daerah bervegetasi lainnya.',
    diet: 'Kelinci adalah herbivora yang makan rumput, sayuran, dan biji-bijian.',
  ),
  Animal(
    name: 'Burung',
    iconPath: '🐦',
    description: 'Burung adalah makhluk yang menakjubkan dengan kemampuan terbang yang luar biasa.',
    characteristics:
        'Burung memiliki bulu, sayap, paruh, dan telur. Banyak burung dapat terbang dengan sangat cepat dan gesit.',
    habitat: 'Burung hidup di berbagai habitat termasuk hutan, gunung, pantai, dan perkotaan.',
    diet: 'Burung memiliki diet yang beragam termasuk biji, serangga, ikan, dan buah-buahan tergantung jenisnya.',
  ),
];
