import 'package:blue_ajans/timeLine.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class ProjeTakipForm extends StatelessWidget {
  const ProjeTakipForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/arkaPlan.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child:Padding(
                padding: const EdgeInsets.all(40.0),
                child: Image.asset("assets/logo.png"),
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Text("PROJE TAKİP",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'TAKİP KODUNUZ',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Validate will return true if the form is valid, or false if
                              // the form is invalid.
                              if (_formKey.currentState!.validate()) {
                                // Process data.
                              }
                            },

                            child: const Text('SORGULA'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: TimeLine()),
            Container(
              child:Text("proje hakkında açıklama")
            ),
            Divider(
              height: 30,
            )

          ],
        ),
      ),
    );
  }
}
