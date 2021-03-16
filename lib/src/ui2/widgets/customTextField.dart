import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final TextInputType type;
  final String hint;
  final String errorText;
  final Function onChange;
  final String init;

  const CustomTextField({
    Key key,
    this.label,
    this.type,
    this.hint,
    this.errorText,
    this.onChange,
    this.init,
  }) : super(key: key);

  @override
  _RegisterTextFieldState createState() => _RegisterTextFieldState();
}

class _RegisterTextFieldState extends State<CustomTextField> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: TextFormField(
        initialValue: widget.init,
        keyboardType: widget.type ?? TextInputType.text,
        onFieldSubmitted: (v) {},
        onChanged: widget.onChange,
        validator: (value) {
          if (value.isEmpty) {
            return "${widget.label ?? widget.hint} is missed";
          }
          return null;
        },
        style: TextStyle(
          color: white,
          fontSize: 16,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: darkBlue,
          labelText: widget.label,
          labelStyle: TextStyle(
            color: yellow,
            fontSize: 14,
          ),
          hintStyle: TextStyle(
            color: kGreyColor,
            fontSize: 14,
            fontWeight: FontWeight.normal,
            letterSpacing: 2,
          ),
          errorText: widget.errorText ?? null,
          hintText: widget.hint == null ? '' : widget.hint,
          floatingLabelBehavior: widget.hint != null
              ? FloatingLabelBehavior.always
              : FloatingLabelBehavior.auto,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 12,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
