import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:splittin_money_on_the_ride/helpers/load_custom.dart';
import 'package:splittin_money_on_the_ride/helpers/validators.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwrodController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          centerTitle: true,
        ),
        body: Center(
          child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: formKey,
                child: ListView(
                    padding: const EdgeInsets.all(16),
                    shrinkWrap: true,
                    children: [
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(hintText: "E-mail"),
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        validator: (email) {
                          if (!isEmail(email!)) {
                            return "E-mail Invalido";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: passwrodController,
                        decoration: InputDecoration(hintText: "Seha"),
                        autocorrect: false,
                        obscureText: true,
                        validator: (password) {
                          if (password!.isEmpty || password.length < 6) {
                            return "Senha Inválida";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 32),
                      SizedBox(
                          height: 44,
                          child: ElevatedButton(
                            onPressed: () async {
                              if (formKey.currentState?.validate() == true) {
                                LoadCustom().openLoadMsg("Logando....");
                              }
                            },
                            child: Text("Login"),
                          )),
                      const SizedBox(height: 5),
                      SizedBox(
                          height: 44,
                          child: SignInButton(
                            Buttons.Google,
                            text: "Login com google",
                            onPressed: () {},
                          ))
                    ]),
              )),
        ));
  }
}
