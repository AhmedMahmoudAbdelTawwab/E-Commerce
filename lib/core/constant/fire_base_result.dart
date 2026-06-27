sealed class FireBaseResult<T> {}

class SuccessFireBase<T> extends FireBaseResult<T> {
  SuccessFireBase(this.successFB);
  T successFB;
}

class ErorrFireBase<T> extends FireBaseResult<T> {
  ErorrFireBase(this.fireBaseErorrMassege);
  String fireBaseErorrMassege;
}


//بدل ما الـ function ترمي exception أو ترجع null لو حصل error، بترجع object واضح فيه إما النجاح أو الخطأ.

