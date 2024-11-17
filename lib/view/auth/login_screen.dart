import 'package:flutter/material.dart';
import 'package:snapora/theme/colors/colors.dart';
import 'package:snapora/theme/components/text_field.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'LoginScreen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
      backgroundColor: SnaporaColors.mainYellow,
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/shopping_basket.png',
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                  ),
                ),
              ),
              //
              const Text(
                'Snapora',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //
              SizedBox(height: height * 0.1),
              //
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SnaporaTextField(
                  controller: emailController,
                  hint: 'Enter your email',
                  icon: Icons.email,
                  height: height,
                  hasSuffix: false,
                ),
              ),
              //
              SizedBox(height: height * 0.02),
              //
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SnaporaTextField(
                  controller: passController,
                  hint: 'Enter your password',
                  icon: Icons.lock,
                  height: height,
                  hasSuffix: true,
                ),
              ),
              //
              SizedBox(height: height * 0.04),
              //
              MaterialButton(
                onPressed: () {},
                splashColor: Colors.blue,
                highlightColor: Colors.red,
                color: Colors.black,
                textColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //
              SizedBox(height: height * 0.02),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      height: 1,
                      color: SnaporaColors.whiteWellow,
                    ),
                  ),
                  const Text(
                    '  OR  ',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      height: 1,
                      color: SnaporaColors.whiteWellow,
                    ),
                  ),
                ],
              ),
              //
              SizedBox(height: height * 0.02),
              //
              MaterialButton(
                onPressed: () {},
                splashColor: Colors.blue,
                highlightColor: Colors.red,
                color: Colors.black,
                textColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //
              const SizedBox(height: 20)
              //
            ],
          ),
        ],
      ),
    );
  }
}
