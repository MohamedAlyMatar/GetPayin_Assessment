import 'package:dartz/dartz.dart';
import 'package:pay_in_app/src/core/errors/failures.dart';
import 'package:pay_in_app/src/core/use_cases/use_case.dart';
import 'package:pay_in_app/src/features/splash/domain/repositories/lang_repo.dart';

class GetSavedLangUseCase implements UseCase<String, NoParams> {
  final LangRepo langRepo;

  GetSavedLangUseCase({required this.langRepo});

  @override
  Future<Either<Failure, String>> call(NoParams params) async =>
      await langRepo.getSavedLang();
}