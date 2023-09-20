import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final Enteredtext = TextEditingController();
    final Enteredtext2 = TextEditingController();
    return Scaffold(
      backgroundColor: Color.fromRGBO(92, 131, 116,1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(4, 18, 18, 1),
        centerTitle: true,
        title: Text(
          'VUE NICE TECHNOLOGY',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(92, 161, 161, 1)),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    cursorColor: Colors.black,
                    textCapitalization: TextCapitalization.words,
                    controller: Enteredtext,
                    onSaved: (newValue) {
                      Enteredtext.text = newValue!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter a valid value';
                      }

                      return null;
                    },
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      hintText: 'Enter Text',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(
                    height: 45,
                  ),
                  TextFormField(
                    textCapitalization: TextCapitalization.sentences,
                    cursorColor: Colors.black,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter a valid value';
                      }

                      return null;
                    },
                    controller: Enteredtext2,
                    onSaved: (newValue) {
                      if (newValue == null) {
                        return;
                      }
                      Enteredtext2.text = newValue;
                    },
                    maxLength: 1000,
                    decoration: const InputDecoration(
                       enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      hintText: 'Enter Text',
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(24,61,61,1),
                        shape: RoundedRectangleBorder()),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                         print('Input value: $Enteredtext');
                        print('Input value: $Enteredtext2');
                      }
                    },
                    child: const Text('Submit',style: TextStyle(color: Colors.black),),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
