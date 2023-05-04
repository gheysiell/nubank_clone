import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreenWrapper extends StatelessWidget {
  const HomeScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double heightMarginTop = MediaQuery.of(context).padding.top;
    final double height = MediaQuery.of(context).size.height - heightMarginTop;
    final double width = MediaQuery.of(context).size.width;
    final String fulano = 'Gheysiell';

    Future setBarsColor(Color navigationBarColor, Color statusBarColor) async {
      await Future.delayed(Duration(milliseconds: 1));
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
        statusBarColor: statusBarColor,
        systemNavigationBarColor: navigationBarColor,
        systemNavigationBarIconBrightness: Brightness.light,
      ));
    }

    setBarsColor(Colors.black, const Color(0xFF820AD1));

    const TextStyle textStyleTitles = TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600);

    final List<Map<dynamic, dynamic>> listActions = [
      {
        "icon": const Icon(
          Icons.pix_outlined,
          color: Colors.black,
        ),
        "title": "Área pix"
      },
      {
        "icon": const Icon(
          Icons.document_scanner_outlined,
          color: Colors.black,
        ),
        "title": "Pagar"
      },
      {
        "icon": const Icon(
          Icons.send_outlined,
          color: Colors.black,
        ),
        "title": "Transferir"
      },
      {
        "icon": const Icon(
          Icons.phone_outlined,
          color: Colors.black,
        ),
        "title": "Recarga de celular"
      },
      {
        "icon": const Icon(
          Icons.message_outlined,
          color: Colors.black,
        ),
        "title": "Cobrar"
      },
      {
        "icon": const Icon(
          Icons.monetization_on_outlined,
          color: Colors.black,
        ),
        "title": "Caixinhas"
      },
      {
        "icon": const Icon(
          Icons.favorite_border_rounded,
          color: Colors.black,
        ),
        "title": "Doação"
      },
      {
        "icon": const Icon(
          Icons.signal_cellular_alt_rounded,
          color: Colors.black,
        ),
        "title": "Investir"
      },
      {
        "icon": const Icon(
          Icons.call_received,
          color: Colors.black,
        ),
        "title": "Depositar"
      },
      {
        "icon": const Icon(
          Icons.language_rounded,
          color: Colors.black,
        ),
        "title": "Transferir Internac."
      },
    ];

    final List<String> listInfos = [
      'O modo Escuro já está disponível no app! Saiba ...',
      'Concorra a prêmios com o NuBank Vida a partir de R\$ ...',
      'Convide amigos para o Nubank e desbloqueie ...',
    ];

    final List<Map<String, String>> listFindOutMore = [
      {
        "image": "assets/images/1.jpg",
        "title": "Seguro de vida",
        "description":
            "Cuide de quem você ama de um jeito simples e que cab...",
        "buttonTitle": "Conhecer",
      },
      {
        "image": "assets/images/2.jpg",
        "title": "Indique o Nu para amigos",
        "description": "Espalhe como é simples estar no controle.",
        "buttonTitle": "Indicar amigos",
      },
      {
        "image": "assets/images/3.jpg",
        "title": "Portabilidade de salário",
        "description": "Liberdade é como escolher onde receber seu dinheiro",
        "buttonTitle": "Conhecer",
      },
      {
        "image": "assets/images/4.jpg",
        "title": "Pix no crédito",
        "description": "Veja o vídeo para saber tudo sobre essa nova função.",
        "buttonTitle": "Acessar",
      },
      {
        "image": "assets/images/5.jpg",
        "title": "Termos de uso",
        "description": "Explicamos o que diz esse documento do Nubank.",
        "buttonTitle": "Conhecer",
      },
    ];

    return (Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            backgroundColor: const Color(0xFF820AD1),
            elevation: 0,
          )),
      body: SizedBox(
        height: height,
        width: width,
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 130,
                  padding: const EdgeInsets.fromLTRB(20, 12, 12, 12),
                  color: const Color(0xFF820AD1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 155, 47, 228),
                                child: Icon(
                                  Icons.add_photo_alternate_outlined,
                                  size: 24,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Icon(
                                  Icons.help_outline,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Icon(
                                  Icons.person_outline,
                                  color: Colors.white,
                                  size: 22,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Olá, $fulano',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'conta',
                            style: textStyleTitles,
                          ),
                          Icon(Icons.keyboard_arrow_right_rounded)
                        ],
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      const Text(
                        'R\$ 671,72',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 135,
                  width: width,
                  padding: const EdgeInsets.only(top: 13),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: listActions.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.only(
                              left: index == 0 ? 20 : 5,
                              right:
                                  index == (listActions.length - 1) ? 20 : 5),
                          width: 72,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                height: 72,
                                width: 72,
                                child: CircleAvatar(
                                  backgroundColor: const Color(0xFFEBEBEB),
                                  child: listActions[index]['icon'],
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                listActions[index]['title'],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    decoration: BoxDecoration(
                        color: const Color(0xFFEBEBEB),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(children: const [
                      Icon(
                        Icons.credit_card_rounded,
                        size: 22,
                      ),
                      SizedBox(width: 12),
                      Text(
                        'Meus cartões',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ]),
                  ),
                ),
                Container(
                  height: 100,
                  margin: const EdgeInsets.only(top: 5),
                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: listInfos.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(
                                left: index == 0 ? 20 : 0,
                                right:
                                    index == (listInfos.length - 1) ? 20 : 15),
                            width: 260,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.fromLTRB(20, 4, 38, 4),
                            decoration: BoxDecoration(
                              color: const Color(0xFFEBEBEB),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Text(listInfos[index]),
                          );
                        }),
                  ),
                ),
                const Divider(
                  height: 25,
                  thickness: 2,
                  color: Color(0xFFEBEBEB),
                ),
                Container(
                  width: width,
                  padding: const EdgeInsets.fromLTRB(22, 10, 20, 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Cartão de crédito',
                            style: textStyleTitles,
                          ),
                          Icon(
                            Icons.keyboard_arrow_right_rounded,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      const Text(
                        'Fatura fechada',
                        style: TextStyle(
                            color: Color(0xFF5B5B5B),
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        'R\$ 580,00',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        'Vencimento dia 17',
                        style: TextStyle(
                            color: Color(0xFF5B5B5B),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red[800],
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              onPressed: () {},
                              child: const Text(
                                'Pagar fatura',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              )),
                          const SizedBox(
                            width: 8,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFEBEBEB),
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              onPressed: () {},
                              child: const Text(
                                'Parcelar',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  height: 25,
                  thickness: 2,
                  color: Color(0xFFEBEBEB),
                ),
                Container(
                  height: 110,
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Acompanhe também',
                        style: textStyleTitles,
                      ),
                      Container(
                        height: 58,
                        margin: const EdgeInsets.only(bottom: 8),
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        decoration: BoxDecoration(
                            color: const Color(0xFFEBEBEB),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.currency_exchange_rounded,
                              size: 22,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              'Assistente de pagamentos',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(
                  height: 20,
                  thickness: 2,
                  color: Color(0xFFEBEBEB),
                ),
                Container(
                  height: 380,
                  width: width,
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Text(
                          'Descubra mais',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        height: 320,
                        margin: const EdgeInsets.only(top: 12),
                        width: width,
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: listFindOutMore.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                clipBehavior: Clip.hardEdge,
                                margin: EdgeInsets.fromLTRB(
                                    index == 0 ? 20 : 0,
                                    0,
                                    index == (listFindOutMore.length - 1)
                                        ? 20
                                        : 14,
                                    0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFEBEBEB)),
                                height: 280,
                                width: 240,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 115,
                                      width: 240,
                                      child: Image.asset(
                                        listFindOutMore[index]['image']
                                            .toString(),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          16, 16, 16, 0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            listFindOutMore[index]['title']
                                                .toString(),
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            listFindOutMore[index]
                                                    ['description']
                                                .toString(),
                                            maxLines: 2,
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFF797979)),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 68),
                                            height: 42,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                  shape:
                                                      MaterialStatePropertyAll(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          28))),
                                                  backgroundColor:
                                                      const MaterialStatePropertyAll(
                                                          Color(0xFF820Ad1))),
                                              child: Text(
                                                listFindOutMore[index]
                                                        ['buttonTitle']
                                                    .toString(),
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
