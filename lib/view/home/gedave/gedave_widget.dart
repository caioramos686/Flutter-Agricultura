import 'package:flutter/material.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/consultas_view.dart';
import 'package:sizer/sizer.dart';

import '../../cores.dart';

class BotaoConsulta extends StatelessWidget {
  final Map model;

  const BotaoConsulta({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(10),
        side: MaterialStateProperty.all(BorderSide(width: 2, color: Cores.azul)),
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/gedave/servicos', arguments: ParametrosConsulta(model));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 6.sp),
            //flex: 6,
            height: 45.sp,
            child: Image.asset(
              "assets/icons/${model['icone']}",
              alignment: Alignment.centerLeft,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 6.sp, left: 6.sp, right: 6.sp, top: 9.sp),
            child: Text(
              model['label'],
              textAlign: TextAlign.center,
              style: TextStyle(color: Cores.azul, fontSize: 10.5.sp),
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}

class BotaoGta extends StatelessWidget {
  final Map model;

  const BotaoGta({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(10),
        side: MaterialStateProperty.all(BorderSide(width: 2, color: Cores.azul)),
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/gedave/gta', arguments: ParametrosConsulta(model));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 6.sp),
            //flex: 6,
            height: 45.sp,
            child: Image.asset(
              "assets/icons/${model['icone']}",
              alignment: Alignment.centerLeft,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 6.sp, left: 6.sp, right: 6.sp, top: 9.sp),
            child: Text(
              model['label'],
              textAlign: TextAlign.center,
              style: TextStyle(color: Cores.azul, fontSize: 10.5.sp),
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}

class TabViewGedave extends StatelessWidget {
  final List<Widget> children;

  const TabViewGedave({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeigth = MediaQuery.of(context).size.height;

    return Column(children: [
      Expanded(
        child: GridView.count(
            crossAxisSpacing: 8.sp,
            childAspectRatio: 1.5,
            crossAxisCount: 2,
            mainAxisSpacing: screenHeigth * 0.01,
            padding: EdgeInsets.all(screenWidth * 0.02),
            children: children),
      ),
    ]);
  }
}

class BotaoCadastro extends StatelessWidget {
  final Map model;

  const BotaoCadastro({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(10),
        side: MaterialStateProperty.all(BorderSide(width: 2, color: Cores.azul)),
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed: () {
        Navigator.pushNamed(context, model['rota'], arguments: ParametrosConsulta(model));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 6.sp),
            //flex: 6,
            height: 45.sp,
            child: Image.asset(
              "assets/icons/${model['icone']}",
              alignment: Alignment.centerLeft,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 6.sp, left: 6.sp, right: 6.sp, top: 9.sp),
            child: Text(
              model['label'],
              textAlign: TextAlign.center,
              style: TextStyle(color: Cores.azul, fontSize: 10.5.sp),
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
