import 'package:dartz/dartz.dart';
import 'package:pay_in_app/src/core/errors/failures.dart';

abstract class LangRepo {
  Future<Either<Failure, bool>> changeLang({required String langCode});
  Future<Either<Failure, String>> getSavedLang();
}
