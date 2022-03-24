import 'package:after_bell_students/views/classscreen/classscreen.dart';
import 'package:after_bell_students/views/register_screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          alignment: Alignment.center,
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
              gradient: RadialGradient(colors: [
                Color.fromRGBO(33, 137, 156, 0.15),
                Colors.white,
              ], center: Alignment.topRight, radius: 0.8)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                //welcome text, logo and loginPage text here
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      welcomeText(),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      richText(20.42),
                    ],
                  ),
                ),

                //email, password textField and recovery password here
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      emailTextField(size),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      passwordTextField(size),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Recovery Password?',
                          style: GoogleFonts.inter(
                            fontSize: 11.0,
                            color: const Color(0xFF6A6F7D),
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),

                //sign in button here
                Expanded(flex: 1, child: signInButton(size)),

                //footer content
                //don't have account text,social logo and sign up text here
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildNoAccountText(),
                      SizedBox(
                        height: size.height * 0.03,
                      ),

                      //here social logo and sign up text
                      buildFooter(size),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget welcomeText() {
    return Center(
      child: Text.rich(
        TextSpan(
          style: GoogleFonts.inter(
            fontSize: 22.0,
            color: Colors.black,
            height: 1.59,
          ),
          children: const [
            TextSpan(
              text: 'Welcome Back',
            ),
            TextSpan(
              text: '\n ',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: 'Login',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(
              text: ' ',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: 'to Continue!',
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }


  Widget richText(double fontSize) {
    return Text.rich(
      TextSpan(
        style: GoogleFonts.inter(
          fontSize: fontSize,
          color: const Color(0xFF21899C),
          letterSpacing: 2.000000061035156,
        ),
        children: const [
          TextSpan(
            text: 'AFTER',
            style: TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: 'BELL',
            style: TextStyle(
              color: Color(0xFFFE9879),
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }

  Widget emailTextField(Size size) {
    return SizedBox(
      height: size.height / 13,
      child: TextField(
        controller: emailController,
        style: GoogleFonts.inter(
          fontSize: 16.0,
          color: const Color(0xFF151624),
        ),
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        cursorColor: const Color(0xFF21899C),
        decoration: InputDecoration(
            hintText: 'Enter your email',
            hintStyle: GoogleFonts.inter(
              fontSize: 16.0,
              color: const Color(0xFFABB3BB),
              height: 1.0,
            ),
            filled: true,
            fillColor: const Color.fromRGBO(248, 247, 251, 1),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                    color: emailController.text.isEmpty
                        ? Colors.transparent
                        : const Color(0xFF21899C))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                    color: emailController.text.isEmpty
                        ? Colors.transparent
                        : const Color(0xFF21899C))),
            border: InputBorder.none),
      ),
    );
  }

  Widget passwordTextField(Size size) {
    return Container(
      height: size.height / 13,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromRGBO(248, 247, 251, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            const Icon(
              Icons.lock_outline_rounded,
              size: 16,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: TextField(
                controller: passController,
                style: GoogleFonts.inter(
                  fontSize: 16.0,
                  color: const Color(0xFF151624),
                ),
                cursorColor: const Color(0xFF21899C),
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  hintStyle: GoogleFonts.inter(
                    fontSize: 16.0,
                    color: const Color(0xFFABB3BB),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            passController.text.isEmpty
                ? const Center()
                : Container(
              height: 30,
              width: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(249, 225, 224, 1),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: const Color.fromRGBO(254, 152, 121, 1),
                  )),
              child: Text(
                '',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 12.0,
                  color: const Color(0xFFFE9879),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget signInButton(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 13,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: const Color(0xFF21899C),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF4C2E84).withOpacity(0.2),
            offset: const Offset(0, 15.0),
            blurRadius: 60.0,
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: const Color(0xFF21899C)),
        onPressed: () {Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const classscreen()));  },
        child:Text(
        'Sign in',
        style: GoogleFonts.inter(
          fontSize: 16.0,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          height: 1.5,
        ),
        textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget buildNoAccountText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Expanded(
            flex: 2,
            child: Divider(
              color: Color(0xFF969AA8),
            )),
        Expanded(
          flex: 3,
          child: Text(
            'Don’t Have Account?',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 12.0,
              color: const Color(0xFF969AA8),
              fontWeight: FontWeight.w500,
              height: 1.67,
            ),
          ),
        ),
        const Expanded(
            flex: 2,
            child: Divider(
              color: Color(0xFF969AA8),
            )),
      ],
    );
  }

  Widget buildFooter(Size size) {
    return Center(
      child: Column(
        children: <Widget>[
          //social icon here
          SizedBox(
            width: size.width * 0.6,
            height: 44.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                //facebook logo here
                SizedBox(width: 16),

                //google logo here
                SizedBox(width: 16),

                //apple logo here
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),

          //footer text here
          Text.rich(
            TextSpan(
              style: GoogleFonts.inter(
                fontSize: 12.0,
                color: Colors.black,
              ),
              children: const [
                TextSpan(
                  text: 'Don’t have an account? ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: 'Sign Up here',
                  style: TextStyle(
                    color: Color(0xFFFF7248),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}