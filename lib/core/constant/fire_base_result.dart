sealed class FireBaseResult<T> {}

class SuccessFireBase<T> extends FireBaseResult<T> {
  SuccessFireBase(this.successFB);
  T successFB;
}

class ErorrFireBase<T> extends FireBaseResult<T> {
  ErorrFireBase(this.fireBaseErorrMassege);
  String fireBaseErorrMassege;
}
