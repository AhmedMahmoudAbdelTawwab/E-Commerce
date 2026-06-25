class FireBaseState<T> {}

class SuccessFireBase<T> extends FireBaseState<T> {
  SuccessFireBase(this.successFB);
  T successFB;
}

class ErorrFireBase<T> extends FireBaseState<T> {
  ErorrFireBase(this.fireBaseErorrMassege);
  String fireBaseErorrMassege;
}
