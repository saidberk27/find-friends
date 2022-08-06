import 'package:flutter/material.dart';
import 'package:find_firends/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(right: 16.0, top: 16.0, bottom: 16.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [_SectionTitle(), _SectionBody()],
        ),
      ),
    ));
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 3, color: ProjeRenkleri.birinciRenk),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
          color: ProjeRenkleri.besinciRenk),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Sponsorlu Gönderiler",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.w500)),
      ),
    );
  }
}

class _SectionBody extends StatelessWidget {
  const _SectionBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(18),
          child: _sectionBodyRow(
              postTitle1: "Köşe Kapmaca1", postTitle2: "Şişe Çevirme1"),
        ),
        Padding(
          padding: const EdgeInsets.all(18),
          child: _sectionBodyRow(
              postTitle1: "Köşe Kapmaca2", postTitle2: "Şişe Çevirme2"),
        ),
      ],
    );
  }

  Row _sectionBodyRow(
      {required String postTitle1, required String postTitle2}) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      _SectionPost(title: postTitle1),
      SizedBox(width: 30),
      _SectionPost(title: postTitle2)
    ]);
  }
}

class _SectionPost extends StatelessWidget {
  String title;
  _SectionPost({
    Key? key,
    required String this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        child: Center(
          child: Ink.image(
            image: AssetImage('assets/images/demo.jpg'),
            fit: BoxFit.cover,
            width: 300.0,
            height: 200.0,
            child: InkWell(
                splashColor: ProjeRenkleri.besinciRenk.withOpacity(0.4),
                onTap: () {/* ... */},
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(this.title,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: ProjeRenkleri.beyaz)),
                    ),
                  ),
                )),
          ),
        ),
      ),
    ));
  }
}
