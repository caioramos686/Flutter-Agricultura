import 'package:auto_size_text/auto_size_text.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gedave/view/cores.dart';
import 'package:sizer/sizer.dart';

class CadastroPessoaFisicaView extends StatefulWidget {
  const CadastroPessoaFisicaView({Key? key}) : super(key: key);

  @override
  _CadastroPessoaFisicaViewState createState() =>
      _CadastroPessoaFisicaViewState();
}

class _CadastroPessoaFisicaViewState extends State<CadastroPessoaFisicaView> {
  int currentStep = 0;
  bool isChecked = false;
  bool isVisible = true;
  final myController = TextEditingController();
  final ControllerCPF = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Pessoa Física",
      )),
      body: Theme(
        data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
          primary: Cores.azulEscuro,
        )),
        child: Stepper(
          steps: getSteps(),
          currentStep: currentStep,
          controlsBuilder: (BuildContext context, ControlsDetails details) {
            return Row(
              children: [
                TextButton(
                  onPressed: details.onStepCancel,
                  child: Text('Voltar'),
                ),
                TextButton(
                  onPressed: details.onStepContinue,
                  child: Text('Próximo'),
                ),
              ],
            );
          },
          onStepContinue: () {
            final isLastStep = currentStep == getSteps().length - 1;
            if (isLastStep) {
              print("SALVADO"); //REMOVER O PRINT
            } else {
              setState(() => currentStep += 1);
            }
          },
          onStepCancel: () {
            currentStep == 0 ? null : setState(() => currentStep -= 1);
          },
        ),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
            state: currentStep > 0 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 0,
            title: Text(
              'Incluir Pessoa Física',
              style: TextStyle(
                  fontSize: 13.sp,
                  color: currentStep >= 0 ? Colors.black : Colors.grey),
            ),
            content: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(3.sp),
                  child: TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      CpfInputFormatter(),
                    ],
                    controller: ControllerCPF,
                    decoration: InputDecoration(
                      hintText: "Digite um CPF válido",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  // color: Cores.verde,
                ),
              ],
            )),
        Step(
            state: currentStep > 1 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 1,
            title: Text(
              'Dados Básicos da Pessoa Física',
              style: TextStyle(
                  fontSize: 13.sp,
                  color: currentStep >= 1 ? Colors.black : Colors.grey),
            ),
            content: Column(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Cores.azulEscuro, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3.sp),
                          child: Text("CPF: " + "${ControllerCPF.text}",
                              style: TextStyle(
                                color: Cores.azulEscuro,
                            fontWeight: FontWeight.bold,
                            fontSize: 13.sp,
                          ),),
                          // color: Cores.verde,
                        ),
                        FormWidget("RG/RNE", TextInputType.number),
                        FormWidget("Órgão Emissor RG/RNE", TextInputType.text),
                        Container(
                          padding: EdgeInsets.all(3.sp),
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.calendar_today_outlined),
                              hintText: "Data Emissão RG/RNE",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                            ),
                            keyboardType: TextInputType.datetime,
                          ),
                        ),
                        ButtonSelect(
                            nome: " UF RG/RNE:",
                            valor: ["-Selecione-", "AC", "AL", "SP", "RJ"]),
                        FormWidget("Nome Completo", TextInputType.name),
                        Container(
                          padding: EdgeInsets.all(3.sp),
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.calendar_today_outlined),
                              hintText: "Data de Nascimento",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                            ),
                            keyboardType: TextInputType.datetime,
                          ),
                        ),
                        ButtonSelect(
                            nome: " SEXO:",
                            valor: ["-Selecione-", "Feminino", "Maculino"]),
                        ButtonSelect(nome: " ESTADO CIVIL:", valor: [
                          "-Selecione-",
                          "Casado",
                          "Divorciado",
                          "Separado",
                          "Solteiro",
                          "União Estável",
                          "Viúvo"
                        ]),
                        ButtonSelect(nome: " PAÍS DE ORIGEM:", valor: [
                          "-Selecione-",
                          "Argentina",
                          "Brasil",
                          "Colômbia",
                          "Estador Unidos"
                        ]),
                        ButtonSelect(
                            nome: " UF NATURALIDADE:",
                            valor: ["-Selecione-", "AC", "AL", "SP", "RJ"]),
                        ButtonMNN(),
                        FormWidget("Nome do Pai", TextInputType.name),
                        FormWidget("Nome da Mãe", TextInputType.name),
                      ],
                    )),
              ],
            )),
        Step(
            state: currentStep > 2 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 2,
            title: Text(
              'Endereço Residencial',
              style: TextStyle(
                  fontSize: 13.sp,
                  color: currentStep >= 1 ? Colors.black : Colors.grey),
            ),
            content: Column(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Cores.azulEscuro, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        FormWidgetFormatter("CEP", TextInputType.number, CepInputFormatter()),
                        FormWidget("Endereço", TextInputType.streetAddress),
                        FormWidget("Número", TextInputType.number),
                        FormWidget("Complemento", TextInputType.text),
                        FormWidget("Bairro", TextInputType.text),
                        ButtonSelect(
                            nome: "UF",
                            valor: ["-Selecione-", "BA", "CE", "SP", "RJ"]),
                        ButtonSelect(
                            nome: " MUNICÍPIO:", valor: ["-Selecione-"])
                      ],
                    )),
              ],
            )),
        Step(
            state: currentStep > 3 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 3,
            title: Text(
              'Endereço de Correspondência',
              style: TextStyle(
                  fontSize: 13.sp,
                  color: currentStep >= 1 ? Colors.black : Colors.grey),
            ),
            content: Column(
              children: <Widget>[
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: Cores.azulEscuro,
                      side: BorderSide(color: Cores.azulEscuro),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                          isVisible = !isVisible;
                        });
                      },
                    ),
                    Text(
                      "Mesmo endereço da residência.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 11.sp,
                      ),
                    ),
                  ],
                ),
                Visibility(
                  visible: isVisible,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Cores.azulEscuro, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        FormWidget("Código Postal", TextInputType.number),
                        FormWidgetFormatter("CEP", TextInputType.number, CepInputFormatter()),
                        FormWidget("Endereço", TextInputType.streetAddress),
                        FormWidget("Número", TextInputType.number),
                        FormWidget("Complemento", TextInputType.text),
                        FormWidget("Bairro", TextInputType.text),
                        ButtonSelect(
                            nome: "UF",
                            valor: ["-Selecione-", "BA", "CE", "SP", "RJ"]),
                        ButtonSelect(
                            nome: " MUNICÍPIO:", valor: ["-Selecione-"])
                      ],
                    ),
                  ),
                ),
              ],
            )),
        Step(
            state: currentStep > 4 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 4,
            title: Text(
              'Contato',
              style: TextStyle(
                  fontSize: 13.sp,
                  color: currentStep >= 1 ? Colors.black : Colors.grey),
            ),
            content: Column(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Cores.azulEscuro, width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        FormWidgetFormatter("Telefone Fixo", TextInputType.number, TelefoneInputFormatter()),
                        FormWidgetFormatter("Telefone Celular", TextInputType.number, TelefoneInputFormatter()),
                        FormWidgetFormatter("Telefone Comercial", TextInputType.number, TelefoneInputFormatter()),
                        FormWidget("Email", TextInputType.emailAddress),
                        FormWidget("Observações", TextInputType.text),
                        ButtonChek(text:"Profissional com habilitação ou registro no conselho profissional."),
                        Container(
                          padding: EdgeInsets.all(3.sp),
                          child: TextField(
                            obscureText: true,
                            controller: myController,
                            decoration: InputDecoration(
                              hintText: "Senha",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                        FormPassword("Confirmação de Senha",
                            TextInputType.visiblePassword),
                        ButtonChek(
                            text:
                                "Desejo receber SMS com as informações do sistema GEDAVE."),
                        ButtonChek(
                            text:
                                "Desejo receber e-mail com as informações do sistema GEDAVE."),
                      ],
                    )),
              ],
            )),
      ];
}

class FormWidget extends StatelessWidget {
  late String _texto;
  late var _teclado;

  FormWidget(this._texto, this._teclado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      padding: EdgeInsets.all(3.sp),
      child: TextField(
        decoration: InputDecoration(
          hintText: _texto,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
        ),
        keyboardType: _teclado,
      ),
      // color: Cores.verde,
    );
  }
}

class FormWidgetFormatter extends StatelessWidget {
  late String _texto;
  late var _teclado;
  late var _textFormatter;

  FormWidgetFormatter(this._texto, this._teclado, this._textFormatter);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.sp),
      child: TextField(
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          _textFormatter,
        ],
        decoration: InputDecoration(
          hintText: _texto,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
        ),
        keyboardType: _teclado,
      ),
      // color: Cores.verde,
    );
  }
}

class FormPassword extends StatelessWidget {
  late String _texto;
  late var _teclado;

  FormPassword(this._texto, this._teclado);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.sp),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: _texto,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
        ),
        keyboardType: _teclado,
      ),
      // color: Cores.verde,
    );
  }
}

//Botão do municipio
class ButtonMNN extends StatefulWidget {
  const ButtonMNN({Key? key}) : super(key: key);

  @override
  State<ButtonMNN> createState() => _ButtonMNN();
}
class _ButtonMNN extends State<ButtonMNN> {
  String dropdownValue = '-Selecione-';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(3.sp),
          child: Text(
            " MUNICÍPIO NATURALIDADE: ",
            maxLines: 3,
            style: TextStyle(
              color: Cores.azulEscuro,
              fontWeight: FontWeight.bold,
              fontSize: 9.1.sp,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_drop_down_outlined),
            style: const TextStyle(color: Colors.black),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            iconEnabledColor: Cores.azulEscuro,
            iconDisabledColor: Cores.azulEscuro,
            items: <String>[
              '-Selecione-',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

//Botão de selecionar valor
class ButtonSelect extends StatefulWidget {
  final String nome;
  final List<String> valor;

  const ButtonSelect({Key? key, required this.nome, required this.valor})
      : super(key: key);

  @override
  State<ButtonSelect> createState() => _ButtonSelect();
}
class _ButtonSelect extends State<ButtonSelect> {
  String dropdownValue = '-Selecione-';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(3.sp),
          child: Text(
            widget.nome,
            style: TextStyle(
              color: Cores.azulEscuro,
              fontWeight: FontWeight.bold,
              fontSize: 11.sp,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_drop_down_outlined),
            style: const TextStyle(color: Colors.black),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            iconEnabledColor: Cores.azulEscuro,
            iconDisabledColor: Cores.azulEscuro,
            items: widget.valor.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

//CheckBox
class ButtonChek extends StatefulWidget {
  final String text;

  const ButtonChek({Key? key, required this.text}) : super(key: key);

  @override
  State<ButtonChek> createState() => _ButtonChek();
}
class _ButtonChek extends State<ButtonChek> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Cores.azulEscuro;
      }
      return Cores.azulEscuro;
    }

    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Expanded(
          child: Text(
            widget.text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 11.sp,
            ),
            maxLines: 4,
          ),
        ),
      ],
    );
  }
}
