import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../cores.dart';

divisor() {
  return Divider(
    height: 20.sp,
    thickness: 1.sp,
    indent: 20.sp,
    endIndent: 20.sp,
  );
}

adicionarTextInfo(String prefixo, String sufixo) {
  return ListTile(
    dense: true,
    title: Text(
      prefixo,
      style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12.sp),
    ),
    subtitle: Text(sufixo, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp, color: Colors.black)),
  );
}

adicionarRow(String prefixo, String sufixo) {
  return Padding(
    padding: EdgeInsets.only(left: 16..sp, right: 16.sp, top: 15.sp, bottom: 5.sp),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          prefixo,
          style: TextStyle(fontSize: 12.sp),
        ),
        Text(
          sufixo,
          style: TextStyle(fontSize: 12.sp),
        ),
      ],
    ),
  );
}

adicionarRowComNegrito(String prefixo, String sufixo) {
  return Padding(
    padding: EdgeInsets.only(left: 16..sp, right: 16.sp, bottom: 15.sp),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(prefixo, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp, color: Colors.black)),
        Text(sufixo, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp, color: Colors.black)),
      ],
    ),
  );
}

void snackBarConsultas(BuildContext context, String codigo) {
  final snackBar = SnackBar(
    content: Text("Não foi possível encontrar nenhum dado com o código:\n" + codigo),
    backgroundColor: Cores.azulEscuro,
    action: SnackBarAction(
      textColor: Colors.white,
      label: 'OK',
      onPressed: () {},
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar); // nova chamada para monstrar a SnackBar
}

class ExpansionPanelRetornoConsulta extends StatefulWidget {
  final List<Widget> children;
  final String texto;

  const ExpansionPanelRetornoConsulta({Key? key, required this.children, required this.texto}) : super(key: key);

  @override
  State<ExpansionPanelRetornoConsulta> createState() => _ExpansionPanelRetornoConsultaState();
}

class _ExpansionPanelRetornoConsultaState extends State<ExpansionPanelRetornoConsulta> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      animationDuration: const Duration(milliseconds: 1000),
      expandedHeaderPadding: EdgeInsets.all(9.sp),
      children: [
        ExpansionPanel(
          backgroundColor: Cores.corBloco,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(widget.texto, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black)),
            );
          },
          body: ListTile(
            title: Column(children: widget.children),
            //subtitle: Column(children: children),
          ),
          isExpanded: _expanded,
          canTapOnHeader: true,
        ),
      ],
      dividerColor: Colors.grey,
      expansionCallback: (panelIndex, isExpanded) {
        _expanded = !_expanded;
        setState(() {});
      },
    );
  }
}

class TabViewRetornoConsulta extends StatelessWidget {
  final List<Widget> children;

  const TabViewRetornoConsulta({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Center(
        child: Container(
          color: Cores.corBloco,
          height: MediaQuery.of(context).size.height * 0.72,
          width: MediaQuery.of(context).size.width * 0.88,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(8.sp),
            child: Column(children: children),
          ),
        ),
      ),
    );
  }
}
