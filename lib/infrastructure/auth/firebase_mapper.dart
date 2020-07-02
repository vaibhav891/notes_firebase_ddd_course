import 'package:firebase_auth/firebase_auth.dart';
import 'package:notes_firebase_ddd_course/domain/auth/user.dart';
import 'package:notes_firebase_ddd_course/domain/auth/value_objects.dart';

extension FirebaseUserMapperX on FirebaseUser {
  User toDomain() {
    return User(uid: UniqueId.fromUniqueString(uid));
  }
}
