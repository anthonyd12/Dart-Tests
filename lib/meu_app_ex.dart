import 'dart:convert';
import 'dart:io';

import 'package:meu_app_oo/models/aluno.dart';
import 'package:meu_app_oo/models/consoleUtils.dart';

void execute(){
  print("Wellcome the system of notes");
  String nome = ConsoleUtils.lerStringComTexto("Type the name of student");
  var aluno = Aluno(nome);
  double? nota;
  do{
    nota = ConsoleUtils.lerDoubleComTexto("type the note or S for exit");
    if(nota != null){
      aluno.adicionarNota(nota);
    }
  } while(nota != null);
  print(aluno.getNotas());
  print("The media is: ${aluno.retornaMedia()}");
  if(aluno.aprovado(7)){
    print("The student ${aluno.getNome()} has approved");
  }else{
    print("The student ${aluno.getNome()} has repproved");
  }
}