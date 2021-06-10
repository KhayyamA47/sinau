import 'package:flutter/material.dart';
import 'package:sinau/authentication/widgets/header.dart';
import 'package:sinau/authentication/widgets/ovalView.dart';
import 'package:sinau/util/constants.dart';
import 'package:sinau/util/mainUtil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: AuthenticationPage());
  }
}

class AuthenticationPage extends StatefulWidget {
  @override
  AuthenticationPageState createState() => AuthenticationPageState();
}

class AuthenticationPageState extends State<AuthenticationPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }




  Widget body() {
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight,
      child: Column(
        children: [ HeaderElements(), OvalView(emailController: emailController,passwordController: passwordController)],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Constants.backgroundColor,
        resizeToAvoidBottomInset: false,
        body: ScrollConfiguration(
            behavior: new ScrollBehavior()
              ..buildViewportChrome(context, null, AxisDirection.down),
            child: SingleChildScrollView(
                reverse: true,
                child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom / 1.5),
                    child: body()))));
  }
}
