import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../cores.dart';


class EmissaoGtaView extends StatefulWidget {
  const EmissaoGtaView({Key? key}) : super(key: key);

  @override
  _EmissaoGtaViewState createState() => _EmissaoGtaViewState();
}

class _EmissaoGtaViewState extends State<EmissaoGtaView> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
          primary: Cores.azulEscuro,
        )),
        child: Stepper(
          type: StepperType.vertical,
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
              print("completed");
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
              'Consultar Cadastro e-GTA',
              style: TextStyle(fontSize: 13.sp),
            ),
            content: Column(
              children: [
                Container(
                  color: Cores.verde,
                ),
              ],
            )),
        Step(
            state: currentStep > 1 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 1,
            title: Text(
              'Emitir e-GTA',
              style: TextStyle(fontSize: 13.sp, color: currentStep >= 1 ? Colors.black : Colors.grey),
            ),
            content: Column(
              children: [
                Container(
                  color: Cores.verde,
                ),
              ],
            )),
        Step(
            state: currentStep > 2 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 2,
            title: Column(
              children: [
                Text(
                  'Emissão Realizada',
                  style: TextStyle(fontSize: 13.sp, color: currentStep >= 2 ? Colors.black : Colors.grey),
                ),
              ],
            ),
            content: Container(
              color: Cores.verde,
            )),
      ];
}
