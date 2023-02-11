import 'package:boindo/constants/colors.dart';
import 'package:boindo/constants/images_and_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckOutInputField extends StatefulWidget {
  const CheckOutInputField(
      {super.key,
      this.hintText,
      this.isCardNumber,
      this.maxLength,
      this.keyboardType,
      this.suffexIconPath});

  final String? hintText;
  final int? maxLength;
  final String? suffexIconPath;
  final bool? isCardNumber;
  final TextInputType? keyboardType;

  @override
  State<CheckOutInputField> createState() => _CheckOutInputFieldState();
}

class _CheckOutInputFieldState extends State<CheckOutInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: widget.isCardNumber!
          ? [
              FilteringTextInputFormatter.digitsOnly,
              CardNumberFormatter(),
            ]
          : null,
      textInputAction: TextInputAction.done,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        counterText: '',
        suffixIcon: widget.isCardNumber!
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(mastercard),
              )
            : null,
        fillColor: Colors.white,
        border: InputBorder.none,
        hintText: widget.hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(width: 1, color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(width: 1, color: borderColor),
        ),
      ),
      maxLength: widget.maxLength,
      onChanged: (value) {},
    );
  }
}

class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue previousValue,
    TextEditingValue nextValue,
  ) {
    var inputText = nextValue.text;

    if (nextValue.selection.baseOffset == 0) {
      return nextValue;
    }

    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % 4 == 0 && nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      }
    }

    var string = bufferString.toString();
    return nextValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}
