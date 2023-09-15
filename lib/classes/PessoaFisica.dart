import 'package:meu_app_oo/classes/Pessoa.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

class PessoaFisica extends Pessoa{

  String _cpf = "";

    void setCpf(String cpf){
    _cpf = cpf;
  }

  String getCpf(){
    return _cpf.toUpperCase();
  }


  PessoaFisica(String nome, String endereco, String cpf, TipoNotificacao tipoNotificacao):super(nome, endereco, tipoNotificacao){
    _cpf = cpf;
    }


  @override
  String toString(){
    return{"Nome": super.getNome(), "Endereço": super.getEndereco(), "CPF": _cpf, "Tipo Notificação": super.getTipoNotificacao()}.toString();
  }

}