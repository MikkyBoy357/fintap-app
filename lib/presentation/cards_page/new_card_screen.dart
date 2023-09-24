import 'package:fintap/view_models/card_provider/card_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/utils/size_utils.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_form_field.dart';

class NewCardScreen extends StatelessWidget {
  const NewCardScreen();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Consumer<CardProvider>(
      builder: (context, cardProvider, _) {
        return Scaffold(
          // backgroundColor: Colors.white,
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    // color: Colors.white,
                    ),
                child: Column(
                  children: [
                    CustomTextFormField(
                      width: size.width,
                      focusNode: FocusNode(),
                      controller: cardProvider.addressLine1Controller,
                      hintText: "Address Line1",
                      // margin: getMargin(top: 31),
                      padding: TextFormFieldPadding.PaddingAll16,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      validator: (value) {
                        // if (value == null || (!isValidEmail(value, isRequired: true))) {
                        //   return "Please enter valid email";
                        // }
                        return null;
                      },
                    ),
                    CustomTextFormField(
                      width: size.width,
                      focusNode: FocusNode(),
                      controller: cardProvider.cityController,
                      hintText: "City",
                      margin: getMargin(top: 10),
                      padding: TextFormFieldPadding.PaddingAll16,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      validator: (value) {
                        // if (value == null || (!isValidEmail(value, isRequired: true))) {
                        //   return "Please enter valid email";
                        // }
                        return null;
                      },
                    ),
                    CustomTextFormField(
                      width: size.width,
                      focusNode: FocusNode(),
                      controller: cardProvider.stateController,
                      hintText: "State",
                      margin: getMargin(top: 10),
                      padding: TextFormFieldPadding.PaddingAll16,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      validator: (value) {
                        // if (value == null || (!isValidEmail(value, isRequired: true))) {
                        //   return "Please enter valid email";
                        // }
                        return null;
                      },
                    ),
                    CustomTextFormField(
                      width: size.width,
                      focusNode: FocusNode(),
                      controller: cardProvider.countryController,
                      hintText: "Country",
                      margin: getMargin(top: 10),
                      padding: TextFormFieldPadding.PaddingAll16,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      validator: (value) {
                        // if (value == null || (!isValidEmail(value, isRequired: true))) {
                        //   return "Please enter valid email";
                        // }
                        return null;
                      },
                    ),
                    CustomTextFormField(
                      width: size.width,
                      focusNode: FocusNode(),
                      controller: cardProvider.postCodeController,
                      hintText: "Postal Code",
                      margin: getMargin(top: 10),
                      padding: TextFormFieldPadding.PaddingAll16,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      validator: (value) {
                        // if (value == null || (!isValidEmail(value, isRequired: true))) {
                        //   return "Please enter valid email";
                        // }
                        return null;
                      },
                    ),
                    CustomTextFormField(
                      width: size.width,
                      focusNode: FocusNode(),
                      // controller: controller.pinController,
                      hintText: "Card Brand",
                      margin: getMargin(top: 10),
                      padding: TextFormFieldPadding.PaddingAll16,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      validator: (value) {
                        // if (value == null || (!isValidEmail(value, isRequired: true))) {
                        //   return "Please enter valid email";
                        // }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              CustomButton(
                height: 56,
                width: size.width,
                text: "Proceed",
                margin: EdgeInsets.symmetric(horizontal: 20),
                onTap: () {
                  cardProvider.requestCard();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
