import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/createaccount',
      routes:{'/createaccount': (context) =>CreateAccountPage(), '/password': (context) =>PasswordPage()/* '/password': (context) =>PasswordPage(), '/login': (context) =>LoginPage()*/},
    );
  }
}
class CreateAccountPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 18, 187, 238),
      ),
      backgroundColor: Color.fromARGB(255, 229, 231, 231),
      body:Center(
          child: Column(
            children:<Widget> [
              
              
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.topCenter,
                color: Color.fromARGB(255, 18, 187, 238),
                height: 200,
                width: 2000,
                child: Text('Crie uma nova conta', style: TextStyle(fontSize: 64, color: Color.fromARGB(1000, 255, 255, 255) )),
                
                
              ),
              Container(
                padding: EdgeInsets.all(0),
                alignment: Alignment.topCenter,
                color: Color.fromARGB(255, 18, 187, 238),
                height: 30,
                width: 2000,
                child: Text('xxxxxxxxxxxxxxxxxxxxxxxxxx', style: TextStyle(fontSize: 12, color: Color.fromARGB(1000, 255, 255, 255), height: 1 )),
                
                
              ),
              Padding(
                padding: EdgeInsets.all(20),),
              
              TextField(
                autofocus: true,
                keyboardType: TextInputType.name,
                style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 20),
                decoration: InputDecoration(
                    labelText: "Nome",
                    labelStyle: TextStyle(color: const Color.fromARGB(255, 18, 187, 238)),

                ),
              ),
              TextField(
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 20),
                decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: const Color.fromARGB(255, 18, 187, 238))

              ),
              ),
              TextField(
                autofocus: true,
                keyboardType: TextInputType.visiblePassword,
                style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 20),
                decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: const Color.fromARGB(255, 18, 187, 238))
              ),
              ),
              TextField(
                autofocus: true,
                keyboardType: TextInputType.number,
                style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 20),
                decoration: InputDecoration(
                    labelText: "Data de Aniversario",
                    labelStyle: TextStyle(color: const Color.fromARGB(255, 18, 187, 238)),
                    
              ),),  

              SizedBox(height: 180),
              
              Container(
                padding: EdgeInsets.all(50),
                child: ElevatedButton(
                onPressed:(){
                Navigator.pushNamed(context, '//password');
                },
              
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: Text(
                    'ENTRAR'
                    ),
                  )
                )
                ),

                color: Color.fromARGB(255, 241, 227, 26),
                height: 160,
                width: 2000,
                alignment: Alignment.bottomRight,
                
                
              ),
              
            ],
              ),
              
          
          ),
        );
      
  }
}
class PasswordPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(200, 150, 150, 150),
      body: Padding(
        padding: EdgeInsets.all(20),
        child:Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Container(
                height: 400,
                width: 1850,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'imagens/Aviao (1).jpeg',
                      width: 500,
                      height: 500,
                    )
                  ],
                )
              )
            ],
          ),
        )
      ),
    );
  }
}
class LoginPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(200, 150, 150, 150),
      body: Padding(
        padding: EdgeInsets.all(20),
        child:Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Container(
                height: 400,
                width: 1850,
              )
            ],
          ),
        )
      ),
    );
  }
}