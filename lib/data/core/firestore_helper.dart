import 'package:circle/core/errors/exceptions.dart';
import 'package:circle/domain/repositories/auth_repository.dart';
import 'package:circle/injection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {
  /// The user must be already authenticated when calling this method.
  /// Otherwise, throws [NotAuthenticatedError].
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<AuthRepository>().getCurrentUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance.collection('users').doc(user.uid);
  }
}
