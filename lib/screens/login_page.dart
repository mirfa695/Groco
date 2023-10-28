import 'package:flutter/material.dart';
import 'package:groco/custom_widget/custom_textfield.dart';
import 'package:groco/provider_helper/login_provider.dart';
import 'package:groco/routes/route_name.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/illustration1.png'),
                SizedBox(height: 30,),
                RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                          text: 'SIGN',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              fontFamily: 'AlfaSlab',
                              letterSpacing: 1.5,
                              color: Colors.black)),
                      TextSpan(
                          text: 'IN',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              fontFamily: 'AlfaSlab',
                              letterSpacing: 1.5,
                              color: Colors.orange))
                    ])),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFiels(
                  text: 'Email',
                  controller: emailController,
                  val: (value){if(value==null||!value!.contains('@')||!value!.endsWith('.com'))
                  {return 'Please enter valid email';}return null;},
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFiels(
                  text: 'Password',
                  val:(value){if(value==null||value!.length<8){return 'Password must be greater than 8';}return null;},
                  controller: passwordController,
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                    width: 180,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () async {
                        if(formKey.currentState!.validate()){
                          await context.read<loginProvider>().userLogin(email: emailController.text,password: passwordController.text,context: context);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(fontSize: 18),
                      ),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).viewInsets.bottom,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
