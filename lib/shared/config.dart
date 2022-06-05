import '../models/user/local_user.dart';
import 'package:flutter/material.dart';

class MyConfig {
  static const baseUrl = 'https://aalokito-dev-0-11-jyguqmmqea-uc.a.run.app/api/v1';
// static const baseUrl = 'http://192.168.118.176:80/api/v1';

  static const myTimeout = 15;
}

// URL
const baseUrl = 'http://192.168.0.104:80/api/v1';
// const baseUrl = 'https://aalokito-dev-0-11-jyguqmmqea-uc.a.run.app/api/v1';

const myTimeout = 8;
const imageAssetPath = 'assets/images/';

class MyAssets {
  static const settingsBgImage = 'assets/images/settings_bg.png';
  static const paperClipIcon = 'assets/svgs/paper_clip.svg';

  static const backgroundPeople = 'assets/images/notification-background.png';

  static const teamPeopleIcon = 'assets/svgs/team_people.svg';
  static const joinTeamIcon = 'assets/svgs/join_team.svg';
  static const createTeamIcon = 'assets/svgs/create_team.svg';
  static const cameraIcon = 'assets/svgs/camera.svg';
  static const calendarIcon = 'assets/svgs/calendar.svg';
}

// Colors
class MyColors {
  static const loginColor = Color(0xff34fae3);
  static final registrationErrorColor = Colors.red.withOpacity(0.5);
  static const giftGiverButtonColor = Color(0xff23a89f);
  static const settingsBorderColor = Color(0xff707070);
  static const appBarColor = Color(0xffE6E7E8);
  static const giftAskColor = Color(0xff353445);
  static final giftAddFormColor = Colors.grey[300]!.withOpacity(0.5);
  static final giftAddFormSubmitColor = Colors.blueGrey[700];

  static const white = Colors.white;
  static const darkGrey = Color(0xff707070);
  static final lightGrey = MyColors.darkGrey.withOpacity(0.3);
  static const lighterGrey = Color(0xFFEBDCDC);
  static const darkBlue = Color(0xFF353445);
}

const loginColor = Color(0xff34fae3);
final registrationErrorColor = Colors.red.withOpacity(0.5);
const giftGiverButtonColor = Color(0xff23a89f);
const settingsBorderColor = Color(0xff707070);
const appBarColor = Color(0xffE6E7E8);
const giftAskColor = Color(0xff353445);
final giftAddFormColor = Colors.grey[300]!.withOpacity(0.5);
final giftAddFormSubmitColor = Colors.blueGrey[700];

final LocalUser initialUser = LocalUser(
  id: '',
  firstName: '',
  lastName: '',
  userName: '',
  email: '',
  imageUrl: '',
  geometry: const Geometry(coordinates: [23, 90]),
  createdAt: DateTime.now(),
  updatedAt: DateTime.now(),
);
