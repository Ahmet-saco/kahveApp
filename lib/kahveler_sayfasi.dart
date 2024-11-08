import 'package:flutter/material.dart';

class KahvelerSayfasi extends StatelessWidget {
  // Kahve türleri listesi
  final List<String> kahveler = [
    'Espresso',
    'Americano',
    'Latte',
    'Filtre Kahve',
    'Cappuccino',
    'Macchiato',
    'Mocha',
    'Türk Kahvesi',
    'Flat White',
    'Menengiç',
    'Cold Brew',
    'Affogato',
    'Macchiato',
    'Mocha',
    'Türk Kahvesi',
    'Flat White',
    'Menengiç',
    'Cold Brew',
    'Affogato',
    'Espresso',
    'Americano',
    'Latte',
    'Filtre Kahve',
    'Cappuccino',
  ];

  KahvelerSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: ListView.builder(
          itemCount: kahveler.length,
          itemBuilder: (context, index) {
            return _buildCoffeeTile(context, index);
          },
        ),
      ),
    );
  }

  // AppBar widget'ı
  AppBar _buildAppBar() {
    return AppBar(
      title: const Text(
        'Our Coffees',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.brown[800], // Kahve rengi
      elevation: 0,
    );
  }

  // Kahve kartı widget'ı
  Widget _buildCoffeeTile(BuildContext context, int index) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(15),
        leading: Icon(
          Icons.local_cafe,
          color: Colors.brown[600], // Kahve simgesi rengi
          size: 30,
        ),
        title: Text(
          kahveler[index],
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.brown[800], // Kahve türü yazı rengi
          ),
        ),
        subtitle: const Text(
          'Lezzetli bir kahve deneyimi.',
          style: TextStyle(color: Colors.grey),
        ),
        onTap: () => _showCoffeeDialog(context, index),
      ),
    );
  }

  // Kahve türüne tıklandığında gösterilecek dialog
  void _showCoffeeDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            kahveler[index],
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.brown[800],
            ),
          ),
          content: Text(
            '${kahveler[index]} kahvesi seçildi! Keyifli bir içim deneyimi!',
            style: TextStyle(
              fontSize: 16,
              color: Colors.brown[700],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Dialogu kapatma
              },
              child: const Text(
                'Kapat',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
