import 'package:flutter/material.dart';
import 'package:quizapp/addformfield.dart';

class AddForm extends StatefulWidget {


  @override
  _AddFormState createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _nameEditController = TextEditingController();
  TextEditingController _ageEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildAddFormWidget()
        ],
      ),
    );
  }

  Widget _buildAddFormWidget() {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            _buildNameFormWidget(),
            _buildAgeFormWidget(),
          ],
        )
    );
  }

  Widget _buildNameFormWidget() {
    return AddFormField(hint: "Please Enter Name Here",
        controller: _nameEditController,
        textInputType: TextInputType.name,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please Enter Name";
          }
        }
    );
  }

  Widget _buildAgeFormWidget() {
    return AddFormField(hint: "Please Enter Age Here",
        controller: _ageEditController,
        textInputType: TextInputType.number,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please Enter Age";
          }
        }
    );
  }


}
