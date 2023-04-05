import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gedave/view/home/home_widget.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentPos = 0;
  List imageList = ["assets/images/fazendeiro.jpeg", "assets/images/agricultura1.jpeg"];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      endDrawer: const HomeDrawer(),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 50.sp,
        title: Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width / 2,
            padding: EdgeInsets.only(left: screenWidth * 0.01),
            child: Image.asset("assets/icons/AgroSPFull.png")),
      ),
      body: Column(
        children: [
          CarouselSlider.builder(
            itemCount: imageList.length,
            options: CarouselOptions(
                viewportFraction: 1,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentPos = index;
                  });
                }),
            itemBuilder: (context, index, _) {
              return ImagensCarrosel(imageList[index]);
            },
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.map((url) {
                int index = imageList.indexOf(url);
                return Container(
                  width: 6,
                  height: 6,
                  margin: EdgeInsets.symmetric(vertical: screenHeight * 0.01, horizontal: screenWidth * 0.01),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentPos == index ? const Color.fromRGBO(0, 0, 0, 0.9) : const Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList()),
          Expanded(
            child: GridView.count(
              childAspectRatio: 6,
              padding: EdgeInsets.only(left: screenWidth * .05, right: screenWidth * .05),
              mainAxisSpacing: screenHeight * 0.012,
              crossAxisCount: 1,
              children: const [
                BotaoRedirecionamentoInterno(texto: "GEDAVE", rota: '/gedave'),
                BotaoRedirecionamentoExterno(texto: 'MERCADO DIGIT@L', url: "http://mercadodigital.agricultura.sp.gov.br/"),
                BotaoRedirecionamentoExterno(texto: "ROTAS RURAIS", url: "http://www.iea.agricultura.sp.gov.br/RotasRurais/"),
                BotaoRedirecionamentoExterno(
                    texto: "CRÉDITO AGRO", url: "https://www.agricultura.sp.gov.br/quem-somos/feap-credito-e-seguro-rural/feap-linhas-de-financiamento/"),
                BotaoRedirecionamentoExterno(texto: "SICAR", url: 'https://www.car.gov.br/#/'),
                BotaoRedirecionamentoExterno(
                    texto: "PDAM", url: "https://www.agricultura.sp.gov.br/quem-somos/feap-credito-e-seguro-rural/feap-linhas-de-financiamento/"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
