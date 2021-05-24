import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizapp/homescreen.dart';
import 'package:quizapp/sdtextformfield.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _nameEditController = TextEditingController();
  TextEditingController _emailEditController = TextEditingController();
  TextEditingController _passwordEditController = TextEditingController();
  TextEditingController _confirmPasswordEditController =
  TextEditingController();

  @override
  void dispose() {
    _nameEditController.dispose();
    _emailEditController.dispose();
    _passwordEditController.dispose();
    _confirmPasswordEditController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [_buildSignUpFormWidget()],
      ),
    );
  }

  Widget _buildSignUpFormWidget() {
    return Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildNameFieldWidget(),
            _buildEmailFieldWidget(),
            _buildNPasswordFieldWidget(),
            _buildConfirmPasswordFieldWidget(),
            _buildSignUpButtonWidget(),
          ],
        ));
  }

  Widget _buildNameFieldWidget() {
    return SDTextFormField(
        hint: 'Name',
        controller: _nameEditController,
        textInputType: TextInputType.name,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter name';
          }
          return null;
        });
  }

  Widget _buildEmailFieldWidget() {
    return SDTextFormField(
        hint: 'Email',
        controller: _emailEditController,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter email';
          }
          return null;
        });
  }

  Widget _buildNPasswordFieldWidget() {
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

  Widget _buildConfirmPasswordFieldWidget() {
    return SDTextFormField(
        hint: 'Confirm Password',
        controller: _confirmPasswordEditController,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter confirm password';
          } else if (_passwordEditController.text.isEmpty &&
              _passwordEditController.text != value) {
            return 'Please enter a matched password';
          }
          return null;
        });
  }

  Widget _buildSignUpButtonWidget(){
    return Container(
        margin: EdgeInsets.only(top: 30),
        child:
        TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
        }, child: Text("SignUp",
          style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.normal),),)

    );
  }
}
