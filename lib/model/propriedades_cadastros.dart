class ModelsCadastro {
  final Map _cadastroPessoaFisica = {
    "label": "Cadastro de Pessoa Física",
    "rota": "/gedave/servicos/cadastro/pessoafisica",
    "icone": "pessoafisica128.png",
  };

  final Map _cadastroPessoaJuridica = {
    "label": "Cadastro de Pessoa Jurídica",
    "rota": "/gedave/servicos/cadastro/pessoajuridica",
    "icone": "pessoajuridica128.png",
  };

  Map get cadastroPessoaFisica => _cadastroPessoaFisica;

  Map get cadastroPessoaJuridica => _cadastroPessoaJuridica;
}
