import 'package:windenergy/features/domain/repositories/authentication_repository.dart';
import 'package:windenergy/utils/result.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository{
  @override
  FutureResult<dynamic> signIn({String email = "", String password = ""}) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  FutureResult<dynamic> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  FutureResult<dynamic> signUp({String fullName = "", String email = "", String password = ""}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}