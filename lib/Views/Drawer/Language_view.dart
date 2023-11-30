import 'package:flutter/material.dart';

class LanguageView extends StatefulWidget {
  const LanguageView({Key? key}) : super(key: key);

  @override
  State<LanguageView> createState() => _LanguageViewState();
}

class _LanguageViewState extends State<LanguageView> {
  String? selectedLanguage;
  final List<String> languages = [
    'Urdu',
    'Turkish', 
    'Arabic',
    'English',
    'Chinese',
    'Japanese',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (BuildContext context, int index) {
          final language = languages[index];
          return ListTile(
            title: Text(language),
            onTap: () {
              setState(() {
                selectedLanguage = language == selectedLanguage ? null : language;
              });
            },
            selected: selectedLanguage == language,
            selectedTileColor: Colors.pinkAccent,
          );
        },
      ),
    );
  }
}
