import "package:flutter/material.dart";


class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formkey = GlobalKey<FormState>();   //key of type FormState

  // ---Functions----

  trysubmit(){
    final isvalid = _formkey.currentState!.validate();
    if(isvalid){
      submitform();
    }
    else{
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.red,
      content: Text("Error!",
      style: TextStyle(color: Colors.white),)));
    }
  }
  submitform(){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Colors.green,
        content: Text("Login Successful!",
        style: TextStyle(color: Colors.black))));
  }
  // Defination what are going to take form the user
  String firstname = "";
  String lastname = "";
  String email = "";
  String password = "";
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor:Colors.purple,title:Text('FormWidget')),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your First Name",
                    ),
                    key: ValueKey('firstname'),
                    validator: (newValue) {
                      if(newValue.toString().isEmpty){
                        return("First Name is Empty");
                      }
                      else{
                        return null;
                      }
                    },
                    onSaved: (newValue) {
                      firstname = newValue.toString();
                    },
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your Last Name"),
                    key: ValueKey('lastname'),
                    validator: (newValue) {
                      if(newValue.toString().isEmpty){
                        return("Last Name is Empty");
                      }
                      else{
                        return null;
                      }
                    },
                    onSaved: (newValue) {
                      lastname = newValue.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "abc@outlook.com",
                    ),
                    key: ValueKey('email'),
                    validator: (newValue) {
                      if(newValue== null || newValue.toString().isEmpty){  // || means or
                        return("Email is Empty");
                      }
                      else if(!newValue.contains("@")){
                        return ("email donot conatin @");
                      }
                      else{
                        return null;
                      }
                    },
                    onSaved: (newValue) {
                      email = newValue.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your Password",
                    ),
                    key: ValueKey('password'),
                    obscureText: true,
                    validator: (newValue) {
                      if(newValue.toString().isEmpty){
                        return("Password is Empty");
                      }
                      else if(newValue.toString().length<=5){
                        return("Length of the password should be more than 6 digits");
                      }
                      else{
                        return null;
                      }
                    },
                    onSaved: (newValue) {
                      password= newValue.toString();
                    },
                  ),
                  SizedBox(height: 70,),
                  TextButton(onPressed: (){
                    trysubmit();
                  }, child: Text("Sign in"))


                ],
              )),
        ),   // Form takes a global key
        );

  }
}
