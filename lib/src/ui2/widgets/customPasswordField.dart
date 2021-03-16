import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/constants.dart';

class CustomPasswordField extends StatefulWidget {
  final String label, hint;
  final String errorText;
  final Function onChange;
  final Function error;

  const CustomPasswordField(
      {Key key,
      this.label,
      this.errorText,
      this.onChange,
      this.error,
      this.hint})
      : super(key: key);

  @override
  _CustomPasswordFieldState createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool see = true;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: TextFormField(
        onChanged: widget.onChange,
        obscureText: see,
        validator: (value) {
          if (value.isEmpty) {
            return "${widget.label} is missed";
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
          errorText: widget.errorText ?? null,
          suffixIcon: IconButton(
            icon: Icon(
              see ? Icons.visibility_off_rounded : Icons.visibility_rounded,
              color: see ? kGreyColor : yellow,
            ),
            onPressed: () {
              setState(() {
                see = !see;
              });
            },
          ),
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
