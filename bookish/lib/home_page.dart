import 'package:bookish/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text("Bookish"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: ResponsiveWidget(
              mobile: Column(children: [
                BuildBannerSlider(),
                BuildTitleText(),
              ]),
              tab: Row(children: [
                BuildBannerSlider(),
                SizedBox(width: 24),
                Expanded(child: BuildTitleText()),
              ]),
              desktop: Row(children: [
                BuildBannerSlider(),
                SizedBox(width: 24),
                Expanded(child: BuildTitleText()),
              ])),
          // child: LayoutBuilder(builder: (context, constraints) {
          //   if (constraints.maxWidth < 768) {
          //     return Column(children: [
          //       BuildBannerSlider(),
          //       BuildTitleText(),
          //     ]);
          //   } else {
          //     return Row(children: [
          //       BuildBannerSlider(),
          //       SizedBox(width: 24),
          //       Expanded(child: BuildTitleText()),
          //     ]);
          //   }
          // }),
        ),
      ),
    );
  }
}

class BuildTitleText extends StatelessWidget {
  const BuildTitleText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        style: TextStyle(fontSize: 22, fontFamily: 'Rubik'));
  }
}

class BuildBannerSlider extends StatelessWidget {
  const BuildBannerSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.red, Colors.pink]),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
