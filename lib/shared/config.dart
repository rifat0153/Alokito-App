import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

const LOGIN_COLOR = const Color(0xff34fae3);
const GIFT_GIVER_BUTTON_COLOR = const Color(0xff23a89f);
final GIFT_ADD_FORM_COLOR = Colors.grey[300]!.withOpacity(0.5);
final GIFT_ADD_FORM_SUBMIT = Colors.blueGrey[700];
const GOOGLE_API_KEY = 'AIzaSyDEpVNWlsKHsvJHAEjaMjKi1mtVoUFyXU8';
const APP_BAR_COLOR = Color(0xffE6E7E8);
const GIFT_ASK_COLOR = Color(0xff353445);

const PLACEHOLDER_IMAGE_URL = 'https://workhound.com/wp-content/uploads/2017/05/placeholder-profile-pic.png';

final LocalUser initialUser = LocalUser(
    firstName: '',
    lastName: '',
    userName: '',
    email: '',
    imageUrl: 'https://workhound.com/wp-content/uploads/2017/05/placeholder-profile-pic.png',
    position: MyPosition(geohash: '', geopoint: GeoPoint(0, 0)),
    createdAt: Timestamp.now());
