import 'package:flutter/material.dart';
import 'package:kahveapp/kahveler_sayfasi.dart';
import 'package:kahveapp/kayit_ekrani.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // TextEditingController'lar
  final TextEditingController _controllerKa = TextEditingController();
  final TextEditingController _controllerSi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: _buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildLogo(),
                const SizedBox(height: 60),
                _buildUsernameField(),
                const SizedBox(height: 20),
                _buildPasswordField(),
                const SizedBox(height: 40),
                _buildLoginButton(context),
                _buildSignUpLink(context), // SignUp link düzenlendi
              ],
            ),
          ),
        ),
      ),
    );
  }

  // AppBar widget'ı
  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () {
          Navigator.pop(context); // Geri gitme işlemi
        },
      ),
    );
  }

  // Logo image widget'ı
  Widget _buildLogo() {
    return Center(
      child: Image.asset(
        'lib/assets/images/Eslab.png',
        width: 275,
        height: 150,
      ),
    );
  }

  // Kullanıcı adı input alanı
  Widget _buildUsernameField() {
    return TextField(
      controller: _controllerKa,
      decoration: InputDecoration(
        labelText: 'Kullanıcı Adı',
        labelStyle: TextStyle(color: Colors.brown[600]),
        suffixIcon: Icon(Icons.person, color: Colors.brown[600]),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.brown[800]!, width: 2),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      ),
    );
  }

  // Şifre input alanı
  Widget _buildPasswordField() {
    return TextField(
      controller: _controllerSi,
      obscureText: true, // Şifreyi gizler
      decoration: InputDecoration(
        labelText: 'Şifre',
        labelStyle: TextStyle(color: Colors.brown[600]),
        suffixIcon: Icon(Icons.lock, color: Colors.brown[600]),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.brown[800]!, width: 2),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      ),
    );
  }

  // Giriş Yap butonu
  Widget _buildLoginButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => _kahvelerSayfasinaGit(context),
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(150, 50),
          iconColor: Colors.brown[800], // Kahve rengi
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 5, // Gölge efekti
        ),
        child: const Text(
          'Giriş Yap',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.brown,
          ),
        ),
      ),
    );
  }

  // Sign up linki
  Widget _buildSignUpLink(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: GestureDetector(
          onTap: () {
            _kayitEkraninaGit(context); // Kayıt sayfasına yönlendirme
          },
          child: Text(
            "Hesabınız yok mu? Kayıt Ol",
            style: TextStyle(
              color: Colors.brown[800],
              fontSize: 16,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
    );
  }

  // Kahveler sayfasına yönlendirme işlemi
  void _kahvelerSayfasinaGit(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => KahvelerSayfasi()),
    );
  }

  // Kayıt sayfasına yönlendirme işlemi
  void _kayitEkraninaGit(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => KayitEkrani()),
    );
  }
}
