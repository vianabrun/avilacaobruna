import 'dart:html';


import 'package:flutter/material.dart';


void main(){
  runApp(myapp());
}


class myapp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: HomePage(),);
  }
}


class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 145, 183),
        body:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
            Image.asset("imagens/Aviao (1).jpeg", height: 400, width: 1000,),
            
            Text("Login", style: TextStyle(fontSize: 48, color: Colors.white, fontWeight: FontWeight.bold),),
            Text("faça login para continuar!",style: TextStyle(fontSize: 20, color: Colors.white),),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 200,
              child: TextFormField(decoration: InputDecoration(labelText: "NOME", border: OutlineInputBorder(), fillColor: Colors.white, filled: true),)
              ),
            
            Container(
              height: 50,
              width: 200,
              child: TextFormField(decoration: InputDecoration(labelText: "SENHA", border: OutlineInputBorder(),filled: true, fillColor: Colors.white),obscureText: true,),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 230, 0)),
                  foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 6, 145, 183)),
                  elevation: MaterialStateProperty.all(6),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  minimumSize: MaterialStateProperty.all(Size(200, 20)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                  ),
                ),),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondPage()));},
                child: Text('LOGIN', style: TextStyle(color: Colors.white),), ),
           
          ],) ,
       
        );
        }}


class SecondPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 145, 183),
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Color.fromARGB(255, 6, 145, 183)),
        body: Padding(padding: EdgeInsets.all(0.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        
        children: <Widget>[
          
          SizedBox(height: 20),
          Title(color: Colors.white, child: Text("Crie uma nova conta", style: TextStyle(fontSize: 54, color: Colors.white,fontWeight: FontWeight.bold),)),
          Text("Ainda não tem uma conta? click aqui!",style: TextStyle(fontSize: 24, color: Colors.white),),
          SizedBox(height: 30,),
          Container( color: Colors.white, height: 597, width: 2000,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 80,),
              Container(
                height: 50,
              width: 300,
                child: TextFormField(decoration: InputDecoration(labelText: "NOME", border: OutlineInputBorder(),filled: true, fillColor: Colors.white ),),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
              width: 300,
                child: TextFormField(decoration: InputDecoration(labelText: "EMAIL", border: OutlineInputBorder(),filled: true, fillColor: Colors.white ),),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
              width: 300,
                child: TextFormField(decoration: InputDecoration(labelText: "SENHA", border: OutlineInputBorder(),filled: true, fillColor: Colors.white ),obscureText: true,),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
              width: 300,
                child: TextFormField(decoration: InputDecoration(labelText: "DATA DE ANIVERSARIO", border: OutlineInputBorder(),filled: true, fillColor: Colors.white ),),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 230, 0)),
                  foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 33, 187, 243)),
                  elevation: MaterialStateProperty.all(6),
                  padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                  minimumSize: MaterialStateProperty.all(Size(200, 20)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> TPage()));},
                child: Text('SIGN UP', style: TextStyle(color: Colors.white),), ),
            ]
           


         
          ),)
        ],),));
  }
}


class TPage extends StatelessWidget{
  Widget build(BuildContext){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 145, 183),
      appBar: AppBar(
        title: Text(""), backgroundColor: Color.fromARGB(255, 6, 145, 183),),
        body: Padding(padding: EdgeInsets.all(0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Title(color: Colors.white, child: Text("Esqueceu a senha?", style: TextStyle(fontSize: 54, color: Colors.white,fontWeight: FontWeight.bold),)),
          Text("Nova senha",style: TextStyle(fontSize: 24, color: Colors.white),),
          SizedBox(height: 100,),
          Container( color: Colors.white, height: 643, width: 2000,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 40,),
              Image.asset("imagens/cadeado.jpeg", height: 240, width: 240,),
              SizedBox(height: 40,),
              Container(
                width: 500,
                color: Colors.white,
                child: Text("Digite seu e-mail, telefone ou nome de usuário e enviaremos um link para alterar uma nova senha", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 40,),
              Container(
                width: 400,
                child: TextFormField(decoration: InputDecoration(labelText: "email", border: OutlineInputBorder(),filled: true, fillColor: Colors.white ),),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                  backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 254, 237, 80)),
                  foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 6, 145, 183)),
                  elevation: MaterialStateProperty.all(6),
                  padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                  minimumSize: MaterialStateProperty.all(Size(200, 20)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                onPressed: (){},
                child: Text('ENVIAR', style: TextStyle(color: Colors.white),), ),
            ]
           


         
          ),)
        ],),));
  }}
