import 'package:flutter/material.dart';

class SimpleCustomAlert extends StatelessWidget {
  final title;
  SimpleCustomAlert(this.title);


  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)
      ),
      child: Container(
        height: 200,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white70,
                child: Icon(Icons.account_balance_wallet, size: 60,),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.redAccent,
                child: SizedBox.expand(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        RaisedButton(
                          color: Colors.white,
                          child: Text('Okay'),
                          onPressed: ()=> {
                            Navigator.of(context).pop()
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}