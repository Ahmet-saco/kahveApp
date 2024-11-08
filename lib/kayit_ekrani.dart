import 'package:flutter/material.dart';
import 'package:kahveapp/login_page.dart';

class KayitEkrani extends StatelessWidget {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerKa2 = TextEditingController();
  final TextEditingController _controllerSifre = TextEditingController();
  final TextEditingController _controllerSifreT = TextEditingController();

  KayitEkrani({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                _buildEmailField(),
                const SizedBox(height: 20),
                _buildUsernameField(),
                const SizedBox(height: 20),
                _buildPasswordField(),
                const SizedBox(height: 20),
                _buildPasswordConfirmationField(),
                const SizedBox(height: 40),
                _buildRegisterButton(context),
                _buildSignInLink(context),
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

  // E-mail input alanı
  Widget _buildEmailField() {
    return TextField(
      controller: _controllerEmail,
      decoration: InputDecoration(
        labelText: 'E-mail',
        labelStyle: TextStyle(color: Colors.brown[600]),
        suffixIcon: Icon(Icons.mail, color: Colors.brown[600]),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.brown[800]!, width: 2),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      ),
    );
  }

  // Kullanıcı adı input alanı
  Widget _buildUsernameField() {
    return TextField(
      controller: _controllerKa2,
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
      controller: _controllerSifre,
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

  // Şifre tekrar input alanı
  Widget _buildPasswordConfirmationField() {
    return TextField(
      controller: _controllerSifreT,
      obscureText: true, // Şifreyi gizler
      decoration: InputDecoration(
        labelText: 'Şifre Tekrar',
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

  // Kayıt Ol butonu
  Widget _buildRegisterButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // Kayıt işlemleri burada yapılabilir.
          _LoginPageSayfasinaGit(context);
        },
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(150, 50),
          iconColor: Colors.brown[800], // Kahve rengi
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 5, // Gölge efekti
        ),
        child: const Text(
          'Kayıt Ol',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.brown,
          ),
        ),
      ),
    );
  }

  // Giriş yap linki
  Widget _buildSignInLink(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: GestureDetector(
          onTap: () {
            _LoginPageSayfasinaGit(context); // Login sayfasına git
          },
          child: Text(
            "Zaten bir hesabınız var mı? Giriş Yap",
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

  // Login sayfasına yönlendirme işlemi
  void _LoginPageSayfasinaGit(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
}
