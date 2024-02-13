import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var isVisible = true;
  var isChecked = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 242, 239),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 100.0, left: 16, right: 16, bottom: 16),
          child: Column(
            // physics: const NeverScrollableScrollPhysics(),
            children: [
              Text(
                'Login to your Account',
                style: GoogleFonts.roboto(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 32, 65, 56),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Email',
                      hintStyle:
                          GoogleFonts.roboto(color: Colors.grey, fontSize: 15),
                      prefixIcon: Icon(
                        Icons.mail_outline_outlined,
                        color: Colors.grey,
                      ),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                child: TextField(
                  obscureText: isVisible,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Password',
                      hintStyle:
                          GoogleFonts.roboto(color: Colors.grey, fontSize: 15),
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        icon: isVisible
                            ? const Icon(
                                Icons.visibility_off_outlined,
                                color: Colors.grey,
                              )
                            : const Icon(
                                Icons.visibility_outlined,
                                color: Colors.grey,
                              ),
                      ),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
                 Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Checkbox(
                    activeColor: Color.fromARGB(255, 90, 184, 158),
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    'Remember me',
                    style: GoogleFonts.roboto(
                        fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
