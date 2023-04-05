import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../cores.dart';

class CadastrarGtaView extends StatefulWidget {
  const CadastrarGtaView({Key? key}) : super(key: key);

  @override
  _CadastrarGtaView createState() => _CadastrarGtaView();
}

class _CadastrarGtaView extends State<CadastrarGtaView> {
  int currentStep = 0;
  String dropdownValue = 'CPF/CNPJ';
  String dropdownValue1 = 'CPF/CNPJ';
  String dropdownValue2 = 'Boi';
  String dropdownValue3 = 'CPF/CNPJ';
  String dropdownValue4 = 'finalidade 1';
  List isSelected = [false, false];
  List isSelected1 = [false, false];
  List isSelected2 = [false, false];
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;

  final dadosDeProcedencia = TextEditingController();
  final numeroLacre = TextEditingController();
  final dadosDeDestino = TextEditingController();
  DateTime currentDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(context: context, initialDate: currentDate, firstDate: DateTime(2015), lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'GTA',
              style: TextStyle(fontSize: 16.sp),
            ),
            Text(
              'Cadastrar Guia de Trânsito Animal',
              style: TextStyle(fontSize: 10.sp),
            ),
          ],
        ),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
          primary: Cores.azul,
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
                  child: Text('Próxima'),
                ),
              ],
            );
          },
          onStepContinue: () {
            final isLastStep = currentStep == getSteps().length - 1;
            if (isLastStep) {
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
              'Dados da Propriedade de Procedência',
              style: TextStyle(fontSize: 13.sp, color: currentStep >= 0 ? Colors.black : Colors.grey),
            ),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: dadosDeProcedencia,
                  decoration: InputDecoration(isDense: true, border: OutlineInputBorder()),
                ),
                Row(
                  children: [
                    DropdownButton<String>(
                      underline: Container(
                        height: 2,
                        color: Cores.azul,
                      ),
                      value: dropdownValue,
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>['CPF/CNPJ', 'Código da Propriedade', 'Nome da Propriedade'].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    Spacer(),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      label: Text("Pesquisar"),
                    )
                  ],
                )
              ],
            )),
        Step(
            state: currentStep > 1 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 1,
            title: Text(
              'Atividades Produtivas de Procedência',
              style: TextStyle(fontSize: 13.sp, color: currentStep >= 1 ? Colors.black : Colors.grey),
            ),
            content: Column(
              children: [
                Card(
                  color: isSelected[0] ? Cores.azul : Colors.white,
                  shape: RoundedRectangleBorder(
                    side: isSelected[0] ? BorderSide.none : BorderSide(color: Cores.azul, width: 2),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSelected.setAll(0, [!isSelected[0], false]);
                      });
                    },
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'Código AP: 350010516140001',
                            style: TextStyle(color: isSelected[0] ? Colors.white : Cores.azul, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Descrição: Animais para recria.",
                            style: TextStyle(color: isSelected[0] ? Colors.white : Cores.azul, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: Text(
                                'Visualizar',
                                style: TextStyle(color: isSelected[0] ? Colors.white : Cores.azul, fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SimpleDialog(
                                        contentPadding: EdgeInsets.only(top: 12, bottom: 16, right: 8, left: 8),
                                        children: [
                                          Center(child: Text("Código da A.P./ Aglomeração")),
                                          Text("Descrição"),
                                          Text("Produtores"),
                                          Text("CPF/CNPJ Produtores"),
                                          Text("Rebanho(s)"),
                                          Text("Vertente  "),
                                          Text("Situação"),
                                        ],
                                      );
                                    });
                              },
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: isSelected[1] ? Cores.azul : Colors.white,
                  shape: RoundedRectangleBorder(
                    side: isSelected[1] ? BorderSide.none : BorderSide(color: Cores.azul, width: 2),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSelected.setAll(0, [false, !isSelected[1]]);
                      });
                    },
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'Código AP: 350010516140002',
                            style: TextStyle(color: isSelected[1] ? Colors.white : Cores.azul, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Descrição: Animais para recria.",
                            style: TextStyle(color: isSelected[1] ? Colors.white : Cores.azul, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: Text(
                                'Visualizar',
                                style: TextStyle(color: isSelected[1] ? Colors.white : Cores.azul, fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SimpleDialog(
                                        contentPadding: EdgeInsets.only(top: 12, bottom: 16, right: 8, left: 8),
                                        children: [
                                          Center(child: Text("Código da A.P./ Aglomeração")),
                                          Text("Descrição"),
                                          Text("Produtores"),
                                          Text("CPF/CNPJ Produtores"),
                                          Text("Rebanho(s)"),
                                          Text("Vertente  "),
                                          Text("Situação"),
                                        ],
                                      );
                                    });
                              },
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
        Step(
            state: currentStep > 2 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 2,
            title: Column(
              children: [
                Text(
                  'Dados da Propriedade de Destino',
                  style: TextStyle(fontSize: 13.sp, color: currentStep >= 2 ? Colors.black : Colors.grey),
                ),
              ],
            ),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: dadosDeDestino,
                  decoration: InputDecoration(isDense: true, border: OutlineInputBorder()),
                ),
                Row(
                  children: [
                    DropdownButton<String>(
                      underline: Container(
                        height: 2,
                        color: Cores.azul,
                      ),
                      value: dropdownValue1,
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue1 = newValue!;
                        });
                      },
                      items: <String>['CPF/CNPJ', 'Código da Propriedade', 'Nome da Propriedade'].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    Spacer(),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      label: Text("Pesquisar"),
                    )
                  ],
                ),
                Card(
                  color: isSelected1[0] ? Cores.azul : Colors.white,
                  shape: RoundedRectangleBorder(
                    side: isSelected1[0] ? BorderSide.none : BorderSide(color: Cores.azul, width: 2),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSelected1.setAll(0, [!isSelected1[0], false]);
                      });
                    },
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'Código AP: 350010516140001',
                            style: TextStyle(color: isSelected1[0] ? Colors.white : Cores.azul, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Descrição: Animais para recria.",
                            style: TextStyle(color: isSelected1[0] ? Colors.white : Cores.azul, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: Text(
                                'Visualizar',
                                style: TextStyle(color: isSelected1[0] ? Colors.white : Cores.azul, fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SimpleDialog(
                                        contentPadding: EdgeInsets.only(top: 12, bottom: 16, right: 8, left: 8),
                                        children: [
                                          Center(child: Text("Código da A.P./ Aglomeração")),
                                          Text("Descrição"),
                                          Text("Produtores"),
                                          Text("CPF/CNPJ Produtores"),
                                          Text("Rebanho(s)"),
                                          Text("Vertente  "),
                                          Text("Situação"),
                                        ],
                                      );
                                    });
                              },
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: isSelected1[1] ? Cores.azul : Colors.white,
                  shape: RoundedRectangleBorder(
                    side: isSelected1[1] ? BorderSide.none : BorderSide(color: Cores.azul, width: 2),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSelected1.setAll(0, [false, !isSelected1[1]]);
                      });
                    },
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'Código AP: 350010516140002',
                            style: TextStyle(color: isSelected1[1] ? Colors.white : Cores.azul, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Descrição: Animais para recria.",
                            style: TextStyle(color: isSelected1[1] ? Colors.white : Cores.azul, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: Text(
                                'Visualizar',
                                style: TextStyle(color: isSelected1[1] ? Colors.white : Cores.azul, fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SimpleDialog(
                                        contentPadding: EdgeInsets.only(top: 12, bottom: 16, right: 8, left: 8),
                                        children: [
                                          Center(child: Text("Código da A.P./ Aglomeração")),
                                          Text("Descrição"),
                                          Text("Produtores"),
                                          Text("CPF/CNPJ Produtores"),
                                          Text("Rebanho(s)"),
                                          Text("Vertente  "),
                                          Text("Situação"),
                                        ],
                                      );
                                    });
                              },
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
        Step(
            state: currentStep > 3 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 3,
            title: Column(
              children: [
                Text(
                  'Atividades Produtivas de Destino',
                  style: TextStyle(fontSize: 13.sp, color: currentStep >= 3 ? Colors.black : Colors.grey),
                ),
              ],
            ),
            content: Column(
              children: [
                Card(
                  color: isSelected2[0] ? Cores.azul : Colors.white,
                  shape: RoundedRectangleBorder(
                    side: isSelected2[0] ? BorderSide.none : BorderSide(color: Cores.azul, width: 2),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSelected2.setAll(0, [!isSelected2[0], false]);
                      });
                    },
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'Código AP: 350010516140001',
                            style: TextStyle(color: isSelected2[0] ? Colors.white : Cores.azul, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Descrição: Animais para recria.",
                            style: TextStyle(color: isSelected2[0] ? Colors.white : Cores.azul, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: Text(
                                'Visualizar',
                                style: TextStyle(color: isSelected2[0] ? Colors.white : Cores.azul, fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SimpleDialog(
                                        contentPadding: EdgeInsets.only(top: 12, bottom: 16, right: 8, left: 8),
                                        children: [
                                          Center(child: Text("Código da A.P./ Aglomeração")),
                                          Text("Descrição"),
                                          Text("Produtores"),
                                          Text("CPF/CNPJ Produtores"),
                                          Text("Rebanho(s)"),
                                          Text("Vertente  "),
                                          Text("Situação"),
                                        ],
                                      );
                                    });
                              },
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: isSelected2[1] ? Cores.azul : Colors.white,
                  shape: RoundedRectangleBorder(
                    side: isSelected2[1] ? BorderSide.none : BorderSide(color: Cores.azul, width: 2),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSelected2.setAll(0, [false, !isSelected2[1]]);
                      });
                    },
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'Código AP: 350010516140002',
                            style: TextStyle(color: isSelected2[1] ? Colors.white : Cores.azul, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Descrição: Animais para recria.",
                            style: TextStyle(color: isSelected2[1] ? Colors.white : Cores.azul, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            TextButton(
                              child: Text(
                                'Visualizar',
                                style: TextStyle(color: isSelected2[1] ? Colors.white : Cores.azul, fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SimpleDialog(
                                        contentPadding: EdgeInsets.only(top: 12, bottom: 16, right: 8, left: 8),
                                        children: [
                                          Center(child: Text("Código da A.P./ Aglomeração")),
                                          Text("Descrição"),
                                          Text("Produtores"),
                                          Text("CPF/CNPJ Produtores"),
                                          Text("Rebanho(s)"),
                                          Text("Vertente  "),
                                          Text("Situação"),
                                        ],
                                      );
                                    });
                              },
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
        Step(
            state: currentStep > 4 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 4,
            title: Column(
              children: [
                Text(
                  'Dados do rebanho',
                  style: TextStyle(fontSize: 13.sp, color: currentStep >= 4 ? Colors.black : Colors.grey),
                ),
              ],
            ),
            content: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Text(
                    "Rebanho Bovideos Bovino",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  DataTable(
                    horizontalMargin: 6.sp,
                    columnSpacing: 6.sp,
                    headingRowColor: MaterialStateColor.resolveWith((states) => Cores.azul),
                    headingTextStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: TableBorder.all(),
                    columns: const <DataColumn>[
                      DataColumn(
                        label: Text(
                          'Faixa Etária',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Macho',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Fêmea',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Macho',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Fêmea',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                    rows: const <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('0 - 2 Meses')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('3 - 8 Meses')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('9 - 12 Meses')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('13 - 24 Meses')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('25 - 36 Meses')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('36 ou Mais')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )),
        Step(
            state: currentStep > 5 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 5,
            title: Column(
              children: [
                Text(
                  'Informações Complementares',
                  style: TextStyle(fontSize: 13.sp, color: currentStep >= 5 ? Colors.black : Colors.grey),
                ),
              ],
            ),
            content: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: Cores.azul, width: 2)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          "Finalidade e Transporte",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(isDense: true, border: OutlineInputBorder(), hintText: "Finalidade"),
                          elevation: 16,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue4 = newValue!;
                            });
                          },
                          items: <String>['finalidade 1', 'finalidade 2', 'finalidade 3', 'finalidade 4'].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 10)),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          controller: numeroLacre,
                          decoration: InputDecoration(isDense: true, border: OutlineInputBorder(), hintText: "Lacre N°"),
                        ),
                      ),
                      CheckboxListTile(
                        title: Text("A Pé"),
                        checkColor: Colors.white,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text("Rodoviário"),
                        checkColor: Colors.white,
                        value: isChecked1,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked1 = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text("Ferroviário"),
                        checkColor: Colors.white,
                        value: isChecked2,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked2 = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text("Aéreo"),
                        checkColor: Colors.white,
                        value: isChecked3,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked3 = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text("Maritimo/Fluvial"),
                        checkColor: Colors.white,
                        value: isChecked4,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked4 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: Cores.azul, width: 2)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "Vacinações",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      CheckboxListTile(
                        title: Text(
                          "Aftosa",
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Column(
                          children: [
                            TextFormField(
                              onTap: () => _selectDate(context),
                              decoration: InputDecoration(
                                isDense: true,
                                border: OutlineInputBorder(),
                                hintText: "1° Dose",
                                prefixIcon: Icon(Icons.calendar_today),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 5)),
                            TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
                                border: OutlineInputBorder(),
                                hintText: "2° Dose",
                                prefixIcon: IconButton(
                                  onPressed: () => _selectDate(context),
                                  icon: Icon(Icons.calendar_today),
                                ),
                              ),
                            ),
                          ],
                        ),
                        checkColor: Colors.white,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text(
                          "Brucelose",
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
                                border: OutlineInputBorder(),
                                hintText: "1° Dose",
                                prefixIcon: IconButton(
                                  onPressed: () => _selectDate(context),
                                  icon: Icon(Icons.calendar_today),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 5)),
                          ],
                        ),
                        checkColor: Colors.white,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text(
                          "Outros",
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
                                border: OutlineInputBorder(),
                                hintText: "1° Dose",
                                prefixIcon: IconButton(
                                  onPressed: () => _selectDate(context),
                                  icon: Icon(Icons.calendar_today),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 5)),
                            TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
                                border: OutlineInputBorder(),
                                hintText: "2° Dose",
                                prefixIcon: IconButton(
                                  onPressed: () => _selectDate(context),
                                  icon: Icon(Icons.calendar_today),
                                ),
                              ),
                            ),
                          ],
                        ),
                        checkColor: Colors.white,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: Cores.azul, width: 2)),
                  child: Column(
                    children: [
                      Text(
                        "Exames",
                        style: TextStyle(fontSize: 20),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(isDense: true, border: OutlineInputBorder(), hintText: "Finalidade"),
                          elevation: 16,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue4 = newValue!;
                            });
                          },
                          items: <String>['finalidade 1', 'finalidade 2', 'finalidade 3', 'finalidade 4'].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 10)),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          controller: numeroLacre,
                          decoration: InputDecoration(isDense: true, border: OutlineInputBorder(), hintText: "Lacre N°"),
                        ),
                      ),
                      CheckboxListTile(
                        title: Text("A Pé"),
                        checkColor: Colors.white,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text("Rodoviário"),
                        checkColor: Colors.white,
                        value: isChecked1,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked1 = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text("Ferroviário"),
                        checkColor: Colors.white,
                        value: isChecked2,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked2 = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text("Aéreo"),
                        checkColor: Colors.white,
                        value: isChecked3,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked3 = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text("Maritimo/Fluvial"),
                        checkColor: Colors.white,
                        value: isChecked4,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked4 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )),
        Step(
            state: currentStep > 6 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 6,
            title: Column(
              children: [
                Text(
                  'Cadastro Realizado',
                  style: TextStyle(fontSize: 13.sp, color: currentStep >= 6 ? Colors.black : Colors.grey),
                ),
              ],
            ),
            content: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 50,
                    )),
                IconButton(onPressed: () {}, icon: Icon(Icons.accessible_forward, size: 50)),
                IconButton(onPressed: () {}, icon: Icon(Icons.accessibility_rounded, size: 50))
              ],
            )),
      ];
}
