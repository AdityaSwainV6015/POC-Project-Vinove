import 'package:adityanarayanswain_v6015/constants/ColorConstants.dart';
import 'package:flutter/material.dart';


import '../../Localization/applicaton.dart';


class LanguageSelectorPage extends StatefulWidget {
  @override
  _LanguageSelectorPageState createState() => _LanguageSelectorPageState();
}

class _LanguageSelectorPageState extends State<LanguageSelectorPage> {
  //languagesList also moved to the Application class just like the languageCodesList
  static final List<String> languagesList = application.supportedLanguages;
  static final List<String> languageCodesList =
      application.supportedLanguagesCodes;

  final Map<dynamic, dynamic> languagesMap = {
    languagesList[0]: languageCodesList[0],
    languagesList[1]: languageCodesList[1],
  };

  int val = -1;

  // @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.teal_dark_green,
        title: Text(
          "Select language",
        ),
      ),
      body: _buildLanguagesList(),
    );
  }

  _buildLanguagesList() {
    return ListView.builder(
      itemCount: languagesList.length,
      itemBuilder: (context, index) {
        return _buildLanguageItem(languagesList[index]);
      },
    );
  }

  // _buildLanguageItem(String language) {
  //   return InkWell(
  //     onTap: () {
  //       print(language);
  //       application.onLocaleChanged(Locale(languagesMap[language]));
  //     },
  //     child: Center(
  //       child: Padding(
  //         padding: const EdgeInsets.symmetric(vertical: 20.0),
  //         child: Text(
  //           language,
  //           style: TextStyle(
  //             fontSize: 24.0,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
  //
  _buildLanguageItem(String language) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListTile(
          title: Text(language),
          leading: Radio(
            value:language=="Spanish"? 2:1,
            groupValue: val,
            onChanged: (value) {
              setState(() {
                val = value as int;
                application.onLocaleChanged(Locale(languagesMap[language]));
              });
            },
            activeColor: Colors.green,
          ),
        ),

      ],
    );
  }
}