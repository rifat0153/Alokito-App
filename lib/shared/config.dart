import 'package:alokito_new/models/gift_giver/my_position.dart';
import 'package:alokito_new/models/user/local_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';



const GOOGLE_API_KEY = 'AIzaSyDEpVNWlsKHsvJHAEjaMjKi1mtVoUFyXU8';

const imageAssetPath = 'assets/images/';

const PLACEHOLDER_IMAGE_URL = 'https://workhound.com/wp-content/uploads/2017/05/placeholder-profile-pic.png';

// Colors
const loginColor =  Color(0xff34fae3);
const giftGiverButtonColor =  Color(0xff23a89f);
const settingsBorderColor = Color(0xff707070);
const appBarColor = Color(0xffE6E7E8);
const giftAskColor = Color(0xff353445);
final giftAddFormColor = Colors.grey[300]!.withOpacity(0.5);
final giftAddFormSubmitColor = Colors.blueGrey[700];

final LocalUser initialUser = LocalUser(
    firstName: '',
    lastName: '',
    userName: '',
    email: '',
    // imageUrl: 'https://workhound.com/wp-content/uploads/2017/05/placeholder-profile-pic.png',
    position:const MyPosition(geohash: '', geopoint: GeoPoint(0, 0)),
    createdAt: Timestamp.now());
