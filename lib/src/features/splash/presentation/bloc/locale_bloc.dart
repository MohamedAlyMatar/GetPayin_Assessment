import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pay_in_app/src/core/use_cases/use_case.dart';
import 'package:pay_in_app/src/core/utils/app_strings.dart';
import 'package:pay_in_app/src/features/splash/domain/usecases/change_lang.dart';
import 'package:pay_in_app/src/features/splash/domain/usecases/get_saved_lang.dart';
import 'package:pay_in_app/src/features/splash/presentation/bloc/locale_event.dart';
import 'package:pay_in_app/src/features/splash/presentation/bloc/locale_state.dart';

class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  final GetSavedLangUseCase getSavedLangUseCase;
  final ChangeLangUseCase changeLangUseCase;

  LocaleBloc({
    required this.getSavedLangUseCase,
    required this.changeLangUseCase,
  }) : super(ChangeLocaleState(Locale(AppStrings.englishCode))) {
    on<GetSavedLocaleEvent>(_onGetSavedLocaleEvent);
    on<ChangeLocaleEvent>(_onChangeLocaleEvent);
  }

  // Handle getting the saved locale
  Future<void> _onGetSavedLocaleEvent(
      GetSavedLocaleEvent event, Emitter<LocaleState> emit) async {
    final response = await getSavedLangUseCase.call(NoParams());
    response.fold(
      (failure) => debugPrint(AppStrings.cacheFailure),
      (value) {
        emit(ChangeLocaleState(Locale(value)));
      },
    );
  }

  // Handle changing the locale
  Future<void> _onChangeLocaleEvent(
      ChangeLocaleEvent event, Emitter<LocaleState> emit) async {
    final response = await changeLangUseCase.call(event.langCode);
    response.fold(
      (failure) => debugPrint(AppStrings.cacheFailure),
      (value) {
        emit(ChangeLocaleState(Locale(event.langCode)));
      },
    );
  }
}
