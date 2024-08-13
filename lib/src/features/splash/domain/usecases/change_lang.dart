import 'package:dartz/dartz.dart';
import 'package:pay_in_app/src/core/errors/failures.dart';
import 'package:pay_in_app/src/core/use_cases/use_case.dart';
import 'package:pay_in_app/src/features/splash/domain/repositories/lang_repo.dart';

class ChangeLangUseCase implements UseCase<bool, String> {
  final LangRepo langRepo;

  ChangeLangUseCase({required this.langRepo});

  @override
  Future<Either<Failure, bool>> call(String langCode) async =>
      await langRepo.changeLang(langCode: langCode);
}
