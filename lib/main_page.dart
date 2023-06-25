import 'package:backcolor/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyDefalut extends StatefulWidget {
  const MyDefalut({super.key});

  @override
  State<MyDefalut> createState() => _MyDefalutState();
}

class _MyDefalutState extends State<MyDefalut> {
  List<String> listOfNmaes = ['Default Mode', 'Light Mode', 'Dark Mode'];

  @override
  Widget build(BuildContext context) {
    return Consumer<MyColor>(
      builder: (context, model, _) => Scaffold(
        backgroundColor: model.selectedIndex == 0
            ? Colors.grey
            : model.selectedIndex == 1
                ? Colors.white
                : Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: ListView.builder(
                itemCount: listOfNmaes.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () => model.selectedIndex = index,
                              child: Icon(
                                Icons.check_box_outlined,
                                color: Colors.red,
                                size: 40,
                              )),
                          Text(
                            listOfNmaes[index],
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 30,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
