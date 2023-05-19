

import 'package:flutter/material.dart';
import 'package:votechain/modules/user-management/user-login/student-login.dart';
class StudentRegister extends StatefulWidget {
  StudentRegister({Key? key}) : super(key: key);
  @override
  _StudentRegisterState createState() => _StudentRegisterState();
}
class _StudentRegisterState extends State<StudentRegister> {

  final name = TextEditingController();
  final lastName = TextEditingController();
  final dni = TextEditingController();
  final section = TextEditingController();
  final grade = TextEditingController();
  final phone = TextEditingController();
  final urlToImageBackground = TextEditingController();
  final urlToImageProfile = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final password2 = TextEditingController();


  String? claveError;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
        Container(
            padding: const EdgeInsets.fromLTRB(10, 80, 10,50),
            child: Card(
                child: Image.asset('assets/img/logo.png')

            )
        ),
              const Text(
                "Registrate",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: name,
                  decoration: const InputDecoration(
                      hintText: "Nombre", border: InputBorder.none),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: lastName,
                  decoration: const InputDecoration(
                      hintText: "Apellido", border: InputBorder.none),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: dni,
                  decoration: const InputDecoration(
                      hintText: "Dni", border: InputBorder.none),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: grade,
                  decoration: const InputDecoration(
                      hintText: "Grado", border: InputBorder.none),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: section,
                  decoration: const InputDecoration(
                      hintText: "Seccion", border: InputBorder.none),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: phone,
                  decoration: const InputDecoration(
                      hintText: "Telefono", border: InputBorder.none),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: urlToImageBackground,
                  decoration: const InputDecoration(
                      hintText: "Imagen de fondo de perfil", border: InputBorder.none),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: urlToImageProfile,
                  decoration: const InputDecoration(
                      hintText: "Imagen de perfil", border: InputBorder.none),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: email,
                  decoration: const InputDecoration(
                      hintText: "Email", border: InputBorder.none),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                      errorText: claveError,
                      hintText: "Contraseña",
                      border: InputBorder.none),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: password2,
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Confirmar Contraseña",
                      border: InputBorder.none),
                ),
              ),
              ElevatedButton(

                child:  Text('Crear cuenta', textAlign: TextAlign.center,style: TextStyle(fontSize: 16)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800]
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UserLogin()));
                },

              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UserLogin()));
                  },
                  child: const Text("Ya tengo una cuenta"))
            ],
          ),
        ),
      ),
    );
  }

  Future<void> register() async {
    if (password.text != password2.text) {
      setState(() {
        claveError = "Contraseñas no coinciden";
      });
      return;
    }
    setState(() {
      claveError = null;
    });
  }
}