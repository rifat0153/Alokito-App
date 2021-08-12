import 'package:get/get.dart';

class MyTranslations extends Translations {


  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'appName': 'Alokito',
      'user': 'User',
      'giftGiver': 'Gift Giver',
    },
    'bn_BD': {
      'appName': 'অলোকিতো',
      'user': 'ব্যবহারকারী',
      'giftGiver': 'ব্যবহারকারী',
    }
  };

}