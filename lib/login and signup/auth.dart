import 'package:firebase_auth/firebase_auth.dart'; 


class User{
  String uid;
  User(this.uid);
}
class AuthService {
  static String userID;
  User _userFromFirebaseUser(FirebaseUser user){
    userID = (user != null) ? user.uid : null;
    return user != null ? User(user.uid) :null;
  }
   FirebaseAuth _auth = FirebaseAuth.instance; 
 Future signInEmailAndPass(String email, String password) async {
    try{
      AuthResult _authResult = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser _user = _authResult.user;
      return _userFromFirebaseUser(_user);
    } catch(e){
      print(e.toString());
    }
  }
  Future signUpEmailAndPass(String email, String password, String name) async{
    try{
      AuthResult _authResult = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser _user = _authResult.user;
      var userUpdateInfo = new UserUpdateInfo();
      userUpdateInfo.displayName = name;
      await _user.updateProfile(userUpdateInfo);
      await _user.reload();
      return _userFromFirebaseUser(_user);
    } catch(e){
      print(e.toString());
    }
  }}