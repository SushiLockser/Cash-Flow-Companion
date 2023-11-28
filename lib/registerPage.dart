import 'package:flutter/material.dart';
import 'package:flutter_it14proj/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(100),
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                  child: Image.asset(
                    '../lib/images/zzz.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              'REGISTRATION',
              style: GoogleFonts.daysOne(
                textStyle: Theme.of(context).textTheme.displayMedium,
                fontSize: 32,
                color: primaryWhite,
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter a pasword";
                      }
                      return null;
                    },
                    style: const TextStyle(color: primaryWhite),
                    decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(color: primaryGreen),
                        prefixIcon: const Icon(
                          Icons.person,
                          color: primaryGreen,
                        ),
                        iconColor: primaryGreen,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color:
                                  primaryGreen), //colors does not work for the border of the textField
                        )),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter a pasword";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(color: primaryGreen),
                        prefixIcon: const Icon(
                          Icons.email,
                          color: primaryGreen,
                        ),
                        iconColor: primaryGreen,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color:
                                  primaryGreen), //colors does not work for the border of the textField
                        )),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter a pasword";
                      }
                      return null;
                    },
                    style: const TextStyle(color: primaryWhite),
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: primaryGreen),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: primaryGreen,
                        ),
                        iconColor: primaryGreen,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color:
                                  primaryGreen), //colors does not work for the border of the textField
                        )),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter a pasword";
                      }
                      return null;
                    },
                    style: const TextStyle(color: primaryWhite),
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
                        hintStyle: TextStyle(color: primaryGreen),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: primaryGreen,
                        ),
                        iconColor: primaryGreen,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color:
                                  primaryGreen), //colors does not work for the border of the textField
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 48,
              width: 294,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, 'navBarPage');
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryGreen,
                  elevation: 0,
                ),
                child: const Text(
                  "REGISTER",
                  style: TextStyle(color: primaryWhite),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account ? ",
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.displaySmall,
                    fontSize: 12,
                    color: primaryWhite,
                  ),
                  textAlign: TextAlign.center,
                ),
                InkWell(
                    child: Text(
                      'Login Now',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.displaySmall,
                        fontSize: 12,
                        color: primaryGreen,
                        decoration: TextDecoration.underline,
                        decorationColor: primaryGreen,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'loginPage');
                    }) //add route of the register page
              ],
            ),
          ],
        ),
      ),
    );
  }
}
