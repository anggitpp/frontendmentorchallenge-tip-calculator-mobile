import 'package:cal/shared/theme.dart';
import 'package:cal/widget/button_tip.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String selectedTip = '0';

  @override
  Widget build(BuildContext context) {
    var phoneWidth = MediaQuery.of(context).size.width;
    List<String> tips = ['5', '10', '15', '25', '50', 'Custom'];
    return Scaffold(
      backgroundColor: lightGrayishCyan,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40),
            SizedBox(
              width: phoneWidth,
              child: Text(
                'S P L I\nT T E R',
                style: veryLargeText,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: phoneWidth,
              padding: EdgeInsets.symmetric(
                horizontal: 35,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bill',
                    style: veryLargeText.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: phoneWidth,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 45,
                    //TODO : FIX DOLAR ASET
                    decoration: BoxDecoration(
                        // image: DecorationImage(
                        //   alignment: Alignment.centerLeft,
                        //   image: AssetImage('assets/icon-dollar.png'),
                        // ),
                        color: veryLightGrayishCyan,
                        borderRadius: BorderRadius.circular(8)),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.right,
                      style: veryLargeText,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                        hintText: '0',
                        hintStyle: veryLargeText.copyWith(
                          color: grayishCyan,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Select Tip %',
                    style: veryLargeText.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: tips
                        .map(
                          (e) => InkWell(
                            onTap: () {
                              setState(() {
                                selectedTip = e;
                              });
                            },
                            child: ButtonTip(
                              tip: e,
                              isSelected: selectedTip == e ? true : false,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
