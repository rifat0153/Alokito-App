import 'package:alokito_new/models/user/local_user.dart';
import 'package:flutter/material.dart';

// URL
// const baseUrl = 'http://192.168.0.108:3000/api/v1';
// const baseUrl = 'http://192.168.0.121:3000/api/v1';
const baseUrl = 'https://aalokito-dev1-always-on-jyguqmmqea-uc.a.run.app/api/v1';

const GOOGLE_API_KEY = 'AIzaSyDEpVNWlsKHsvJHAEjaMjKi1mtVoUFyXU8';

const imageAssetPath = 'assets/images/';

const PLACEHOLDER_IMAGE_URL = 'https://workhound.com/wp-content/uploads/2017/05/placeholder-profile-pic.png';

// Colors
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
