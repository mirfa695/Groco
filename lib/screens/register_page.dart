import 'package:flutter/material.dart';
import 'package:groco/custom_widget/custom_textfield.dart';
import 'package:groco/provider_helper/register_provider.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
   RegisterPage({Key? key}) : super(key: key);
   final TextEditingController nameController=TextEditingController();
  final TextEditingController emailController=TextEditingController();
   final TextEditingController phNoController=TextEditingController();
   final TextEditingController passwordController=TextEditingController();
   final TextEditingController cPasswordController=TextEditingController();
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
                Image.asset('assets/images/illustration2.png'),
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
                      text: 'UP',
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
                  text: 'Name',
                  val: (value){if(value==null){return 'Please enter a value';}return null;},
                  controller: nameController,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextFiels(
                  text: 'Email',
                  val: (value){if(value==null||!value.contains('@')||!value.endsWith('.com'))
                  {return 'Please enter valid email';}return null;},
                  controller: emailController,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextFiels(
                  text: 'PhoneNo',
                  type: TextInputType.number,
                  val: (value){if(value==null){return 'Please enter phone number';}return null;},
                  controller: phNoController,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextFiels(
                  text: 'Password',
                  controller: passwordController,
                  val: (value){if(value==null||value!.length<8){return 'Password must be greater than 8';}return null;},
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextFiels(
                  text: 'Confirm Password',
                  controller: cPasswordController,
                  val: (value){
                    if(value!=passwordController.text){return 'Password must be same';}
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    width: 180,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () async {
                        if(formKey.currentState!.validate()){
                          await context.read<RegisterProvider>().postRegister(
                              nameController.text.toString(), emailController.text.toString(),int.parse(phNoController.text) , passwordController.text.toString(), context);
                        }
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
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
