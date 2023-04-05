import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../cores.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    drawerListTile(String text, Icon icon) {
      return ListTile(
        leading: icon,
        title: Text(text),
      );
    }

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
            color: Cores.azulEscuro,
            child: DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset("assets/icons/AgroSP.png"),
                  const Text("Identificação de usuário", style: TextStyle(fontSize: 20, color: Colors.white)),
                ],
              ),
            ),
          ),
          drawerListTile(
            "Página inicial",
            const Icon(Icons.house, color: Colors.black),
          ),
          drawerListTile(
            "Fale conosco",
            const Icon(Icons.comment_rounded, color: Colors.black),
          ),
          drawerListTile(
            "Avaliar o app",
            const Icon(Icons.thumb_up_off_alt_rounded, color: Colors.black),
          ),
          drawerListTile(
            "Sobre",
            const Icon(Icons.account_circle, color: Colors.black),
          ),
          const Divider(),
          drawerListTile(
            "Fazer Login",
            const Icon(Icons.login_rounded, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

class BotaoRedirecionamentoInterno extends StatelessWidget {
  final String rota;
  final String texto;

  const BotaoRedirecionamentoInterno({Key? key, required this.rota, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Cores.verde)), //(Cores.azulEscuro)
        onPressed: () {
          Navigator.pushNamed(context, rota);
        },
        child: Text(
          texto,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ));
  }
}

class BotaoRedirecionamentoExterno extends StatelessWidget {
  final String url;
  final String texto;

  const BotaoRedirecionamentoExterno({Key? key, required this.url, required this.texto}) : super(key: key);

  void snackBarHome(BuildContext context) {
    final snackBar = SnackBar(
      //behavior: SnackBarBehavior.floating,
      content: const Text("Não foi possível abrir o site."),
      backgroundColor: Cores.azulEscuro,
      action: SnackBarAction(
        textColor: Colors.white,
        label: 'OK',
        onPressed: () {},
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar); // nova chamada para monstrar a SnackBar
  }

  @override
  Widget build(BuildContext context) {
    void openURL(String url, c) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        snackBarHome(
          context,
        );
      }
    }

    return ElevatedButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Cores.verde)), //Cores.azulEscuro
        onPressed: () {
          openURL(url, context);
        },
        child: Text(
          texto,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ));
  }
}

class ImagensCarrosel extends StatelessWidget {
  final String imgPath;

  const ImagensCarrosel(this.imgPath, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width, child: Image.asset(imgPath, fit: BoxFit.fill));
  }
}
