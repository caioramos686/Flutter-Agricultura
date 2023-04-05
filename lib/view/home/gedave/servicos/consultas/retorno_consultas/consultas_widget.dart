import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sizer/sizer.dart';

import '../../../../../cores.dart';

adicionarListTileConsulta(icone, texto, c) {
  return ListTile(
    contentPadding: EdgeInsets.only(
        top: MediaQuery.of(c).size.height * 0.025,
        left: MediaQuery.of(c).size.width * 0.025),
    visualDensity: const VisualDensity(vertical: -4),
    leading: Image.asset(
      'assets/icons/$icone',
      height: 40.sp,
    ),
    title: Text(
      texto,
      style: TextStyle(fontSize: 14.sp, color: Colors.grey),
      maxLines: 2,
    ),
  );
}

class AnimacaoConsulta extends StatelessWidget {
  const AnimacaoConsulta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SpinKitSpinningLines(
          lineWidth: MediaQuery.of(context).size.width * .02,
          color: Cores.azul,
          size: MediaQuery.of(context).size.width * .5,
        ));
  }
}
