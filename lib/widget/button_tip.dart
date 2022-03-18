import 'package:flutter/material.dart';

import 'package:cal/shared/theme.dart';

class ButtonTip extends StatelessWidget {
  final String tip;
  final bool isSelected;

  const ButtonTip({
    Key? key,
    required this.tip,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var phoneWidth = MediaQuery.of(context).size.width;

    return tip != 'Custom'
        ? Container(
            width: phoneWidth / 2 - 45,
            height: 45,
            decoration: BoxDecoration(
              color: isSelected ? strongCyan : veryDarkCyan,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '$tip%',
                  style: veryLargeText.copyWith(
                    color: isSelected ? veryDarkCyan : Colors.white,
                  ),
                ),
              ],
            ),
          )
        : SizedBox(width: phoneWidth / 2 - 45, height: 45, child: TextField());
  }
}
