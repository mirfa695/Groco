import 'package:flutter/material.dart';
import 'package:groco/custom_widget/custom_heading.dart';
import 'package:groco/routes/route_name.dart';
class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Stack(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 30.0, left: 130),
              child: CustomHeading(text1: 'GRO',text2: 'CO',)
              ),
          Container(
            height: 690,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/vegi6.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 690,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.white.withOpacity(.9),
                    Colors.black.withOpacity(0)
                  ]),
            ),
          ),
          Positioned(
              bottom: 70,
              left: 50,
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: ''' All your kitchen
needs are ''',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: 'Here...',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange[800]))
              ]))
              //Text('''All your kitchen
//needs are here''',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),))
              ),
          Positioned(
              bottom: 10,
              left: 90,
              child: SizedBox(
                  width: 180,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                     Navigator.pushNamed(context, RouteName.loginRoute);
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )))
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Dont you have an account?'),
          InkWell(
            onTap: () {
             Navigator.pushNamed(context, RouteName.registerRoute);
            },
            child: Text(
              'Sign Up',
              style: TextStyle(color: Colors.orange[700]),
            ),
          )
        ],
      )
    ]));
  }
}
