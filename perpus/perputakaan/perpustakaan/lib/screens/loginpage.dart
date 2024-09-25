import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perpustakaan/screens/ForgetPassword.dart';
import 'package:perpustakaan/screens/homepage.dart';
import 'package:perpustakaan/screens/registerpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    // Handle login here
    String email = _emailController.text;
    String password = _passwordController.text;

    // Contoh logika masuk sederhana
    if (email == 'admin@gmail.com' && password == 'password123') {
      // Jika kombinasi email dan password valid
      // Tambahkan kode untuk menavigasi ke layar beranda atau layar setelah berhasil masuk
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    } else {
      // Jika kombinasi email dan password tidak valid
      // Tambahkan kode untuk menampilkan pesan kesalahan atau tindakan yang sesuai
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Login Failed'),
          content: Text('Invalid email or password. Please try again.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Text(
                            "Welcome Back",
                            style: GoogleFonts.jetBrainsMono(
                                fontSize: 35, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "",
                          style: GoogleFonts.jetBrainsMono(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  child: Image.asset(
                    'images/AMan.png',
                    width: 320,
                    height: 320,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: GoogleFonts.jetBrainsMono(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[300],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextFormField(
                      controller: _passwordController,
                      obscureText:
                          true, // Ini untuk mengubah menjadi format password
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[300],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {
                      // Handle ketika teks "Forgot password?" ditekan
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PasswordPage()),
                      );
                    },
                    child: Text(
                      "Forgot password?",
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: 16,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: _login,
                child: Container(
                  height: 38,
                  width: 120,
                  decoration: BoxDecoration(
                      boxShadow: [
                        // Tambahkan boxShadow
                        BoxShadow(
                          color: Colors.brown.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "Enter",
                      style: GoogleFonts.jetBrainsMono(
                          fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child: GestureDetector(
                    onTap: () {
                      // Handle ketika teks "Forgot password?" ditekan
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: Text(
                      "Create a new account",
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: 18,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}
