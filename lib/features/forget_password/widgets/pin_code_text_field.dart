import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodedTextField extends StatelessWidget {
  const PinCodedTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(vertical: 12,horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color:kPrimaryColor)
      ),
      height: 70,
      child: Center(
        child: PinCodeTextField(
          appContext: context,
          length: 6,
          textStyle: Styles.Text26,
          enableActiveFill: true,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          pinTheme: PinTheme(
            fieldHeight: 45,
            fieldWidth: 45,
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(8.0),
            borderWidth: 1,
            activeFillColor: kPrimaryColor,
            inactiveFillColor: kPrimaryColor,
            selectedFillColor: kPrimaryColor,
            activeColor: kPrimaryColor,
            inactiveColor: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
