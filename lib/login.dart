import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/sdtextformfield.dart';
import 'package:quizapp/signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _usernameEditController = TextEditingController();
  TextEditingController _passwordEditController = TextEditingController();

  @override
  void dispose() {
    _usernameEditController.dispose();
    _passwordEditController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [_buildLoginFormWidget(),
          Positioned(
            left: 0,
              top: 0,
              child: Image.asset("assets/images/main_top.png"),),
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset("assets/images/main_bottom.png"),

          ),
        ],
      ),
    );
  }

  Widget _buildLoginFormWidget() {
    return Form(
        key: _formKey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildUsernameFieldWidget(),
              _buildPasswordFieldWidget(),
              _buildLoginButtonWidget(),
              _buildSignUpDescriptionWidget(),
            ]));
  }

  Widget _buildUsernameFieldWidget() {
    return SDTextFormField(
        hint: 'Username',
        controller: _usernameEditController,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter email';
          }
          return null;
        });
  }

  Widget _buildPasswordFieldWidget() {
    return SDTextFormField(
        hint: 'Password',
        controller: _passwordEditController,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter password';
          }
          return null;
        });
  }

  Widget _buildLoginButtonWidget() {
    return Container(
        margin: EdgeInsets.only(top: 20),
        width: 150,
        height: 48,
        child: TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {}
            },
            style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)))),
            child: Text('Login',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))));
  }

  Widget _buildSignUpDescriptionWidget() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Create an account?",
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Text('SignUp',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)))
        ],
      ),
    );
  }
}
