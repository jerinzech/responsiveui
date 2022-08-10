import 'package:flutter/material.dart';
import 'package:responsiveui/constants.dart';

import '../utils/my_gridbox.dart';
import '../utils/my_listbox.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackgroundColor,
      appBar: myAppBar,
      body: Row(children: [
        //open drawer
        myDrawer,

        Expanded(
          flex: 2,
          child: Column(
            children: [
              //4 box on the top
              AspectRatio(
                aspectRatio: 4,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    itemBuilder: (context, index) {
                      return const myGridBox();
                    },
                  ),
                ),
              ),

              Expanded(
                  child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const myListBox();
                },
              ))
            ],
          ),
        ),

        Expanded(
            child: Expanded(
                child: Container(
          color: Colors.amber,
        )))

        //rest of the body
      ]),
    );
  }
}
