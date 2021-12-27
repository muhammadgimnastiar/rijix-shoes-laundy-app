import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
    // final because a Widget is immutable (remember?)
    final bag = {"first": true};

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(title: Text('Stateless ??')),
            body: Container(
                child: Center(
                    child: GestureDetector(
                        child: Container(
                            width: 50.0,
                            height: 50.0,
                            color: (bag["first"] ?? false) ? Colors.red : Colors.blue,
                        ),
                        onTap: (){
                            bag["first"] = !(bag["first"] ?? false);
                            //
                            // This is the trick
                            //
                            (context as Element).markNeedsBuild();
                        }
                    ),
                ),
            ),
        );
    }
}