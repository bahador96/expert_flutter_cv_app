import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: _getAppBar(),
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.red,
      title: const Center(child: Text('بهادر فولادی')),
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          _getNainContent(),
        ],
      ),
    );
  }

  Widget _getNainContent() {
    return Column(
      children: [
        const SizedBox(height: 20),
        const CircleAvatar(
          backgroundImage: AssetImage(
            'images/user.jpg',
          ),
          radius: 70,
        ),
        const SizedBox(height: 15),
        _getText(),
        const SizedBox(
          height: 12,
        ),
        _getRowIcon(),
        const SizedBox(width: 12),
        _getSkillCard(),
        const SizedBox(height: 12),
        _getResume(),
      ],
    );
  }

  Widget _getText() {
    var list = [
      'بهادر فولادی یه برنامه‌نویس و مربی شطرنج',
      'عاشق برنامه‌نویسی موبایل اندروید و فلاتر. دوست داریم و دوست دارم پیشرفت کنم',
    ];
    return Wrap(
      alignment: WrapAlignment.center,
      runSpacing: 10,
      spacing: 20,
      children: [
        for (var content in list)
          Text(
            content,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
      ],
    );
  }

  Widget _getResume() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      width: double.infinity,
      color: Colors.grey[200],
      child: Column(
        children: [
          const Text(
            'سابقه کاری من',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          _getHistoryColumn()
        ],
      ),
    );
  }

  Widget _getHistoryColumn() {
    var list = [
      'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم',
      'من فوق دیبلم مربی گری شطرنج دارم',
      'من یگ برنامه نویس و مربی شطرنج هستم',
      'من لیسانس فناوری اطلاعات خوندم'
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(
          width: double.infinity,
          height: 20,
        ),
        for (var title in list)
          Text(
            title,
            textDirection: TextDirection.rtl,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
      ],
    );
  }

  Widget _getSkillCard() {
    var list = ['android', 'flutter', 'kotlin', 'dart', 'java'];
    return Wrap(
      runSpacing: 16,
      spacing: 8,
      alignment: WrapAlignment.center,
      children: [
        for (var skill in list)
          Card(
            elevation: 6,
            child: Column(
              children: [
                SizedBox(
                  width: 63.0,
                  child: Image(
                    image: AssetImage('images/$skill.png'),
                    height: 60,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(skill),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _getRowIcon() {
    return Wrap(
      runSpacing: 20.0,
      spacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.linkedin),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.instagramSquare),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.telegram),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.github),
          color: Colors.blueGrey,
        ),
      ],
    );
  }
}
