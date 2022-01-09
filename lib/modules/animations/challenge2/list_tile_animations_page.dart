import 'package:flutter/material.dart';
import 'package:masterclass_app/shared/themes/app_colors.dart';

class ListTileAnimationsPage extends StatefulWidget {
  const ListTileAnimationsPage({Key? key}) : super(key: key);

  @override
  _ListTileAnimationsPageState createState() => _ListTileAnimationsPageState();
}

class _ListTileAnimationsPageState extends State<ListTileAnimationsPage> {
  bool isExpanded = false;
  final duration = const Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        child: Column(
          children: [
            AnimatedContainer(
              duration: duration,
              width: double.infinity,
              height: 50,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'My Expansion tile',
                      style: TextStyle(
                        color: isExpanded ? Colors.blue : AppColors.highlight,
                      ),
                    ),
                  ),
                  AnimatedRotation(
                    turns: isExpanded ? 0 : 0.5,
                    duration: duration,
                    child: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: isExpanded ? Colors.blue : AppColors.highlight,
                    ),
                  ),
                ],
              ),
            ),
            ClipRect(
              child: AnimatedAlign(
                duration: duration,
                alignment: Alignment.center,
                heightFactor: isExpanded ? 1 : 0,
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                  style: TextStyle(color: AppColors.highlight),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
