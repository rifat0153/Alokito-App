import 'package:alokito_new/models/gift_giver/gift_request.dart';
import 'package:alokito_new/models/gift_record/gift_record.dart';
import 'package:alokito_new/modules/gift_record/gift_record_exception.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseGiftRecordService {
  Future<void> addGiftRecord();
}

