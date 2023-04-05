#  Portal de Serviços - Aplicativo Gedave
Esse repositório tem como objetivo armazenar o código fonte referente ao Aplicativo Gedave do Portal de Serviços

**Indíce**
===========
- [Tecnologias utilizadas](#tecnologias-utilizadas)
- [Ambiente de Desenvolvimento](#ambiente-de-desenvolvimento)

## 📄 Sobre

O **gedave** é sistema de **integração Agropecuária** que integra as atividades das Entidades da defesa agropecuária e os diversos segmentos do agronegócio.

##	Tecnologias utilizadas
- [flutter 2.5.2](https://flutter.dev/)
- [Dart 2.14.3](https://dart.dev/)
- [Android studio](https://developer.android.com/studio?hl=pt&gclid=CjwKCAiA78aNBhAlEiwA7B76p5-Y9mY1XYuJmiEp3gOn6FwNNnGx-dEEFn--t6VhynkxLvHu7XJSjBoCsZ4QAvD_BwE&gclsrc=aw.ds)

##	Ambiente de Desenvolvimento

> Todas as instalações e configurações estão descritas em [DEVELOPER](DEVELOPER.md)

O Ambiente foi montado sobre o sistema operacional *MacOS Monterey  12.0.1.*
Verifique se a versão da JDK, Dart e Flutter estão corretos, execute esses comandos no terminal:

    flutter --version
Deverá aparecer uma saída como essa:

	Flutter 2.5.2 • channel stable • https://github.com/flutter/flutter.git
    Framework • revision 3595343e20 (2 months ago) • 2021-09-30 12:58:18 -0700
    Engine • revision 6ac856380f
    Tools • Dart 2.14.3
Em seguida execute:

    dart --version
Deverá aparecer uma saída como essa:

    Dart SDK version: 2.14.3 (stable) (Wed Sep 29 13:10:26 2021 +0200) on "macos_x64"

Tutorial de deploy do aplicativo 

Clone o repositório.
Abra o projeto no Android Studio.
Deploy no Simulador (Android)

1 - abra a pasta lib e entre na main.dart, depois no canto superior direito clicke em pub get

2 - no canto superior click em main.dart e troque para (Edit Configurations) na tela a seguir adicione (--no-sound-null-safety)
    
    --no-sound-null-safety

3 -Click em ok, selecione o emulador na primeira janela de seleção e execute o código clicando no ícone de play, Aguarde o emulador carregar o aplicativo.