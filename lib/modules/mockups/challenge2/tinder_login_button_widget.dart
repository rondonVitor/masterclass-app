import 'package:flutter/material.dart';

class TinderLoginButtonWidget extends StatefulWidget {
  final String icon;
  final String label;

  const TinderLoginButtonWidget({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  State<TinderLoginButtonWidget> createState() =>
      _TinderLoginButtonWidgetState();
}

class _TinderLoginButtonWidgetState extends State<TinderLoginButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              width: 18,
              height: 18,
              child: Image.asset(
                'assets/images/' + widget.icon,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                widget.label,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
