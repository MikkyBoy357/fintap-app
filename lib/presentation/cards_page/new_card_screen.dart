import 'package:flutter/material.dart';

import '../../widgets/custom_text_form_field.dart';

class NewCardScreen extends StatelessWidget {
  const NewCardScreen();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Request New Card",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          CustomTextFormField(
            width: size.width,
            focusNode: FocusNode(),
            // controller: controller.pinController,
            hintText: "Address Line1",
            // margin: getMargin(top: 31),
            padding: TextFormFieldPadding.PaddingAll16,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              // if (value == null || (!isValidEmail(value, isRequired: true))) {
              //   return "Please enter valid email";
              // }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
