import 'package:equatable/equatable.dart';

abstract class LocaleEvent extends Equatable {
  const LocaleEvent();

  @override
  List<Object> get props => [];
}

class GetSavedLocaleEvent extends LocaleEvent {}

class ChangeLocaleEvent extends LocaleEvent {
  final String langCode;

  const ChangeLocaleEvent(this.langCode);

  @override
  List<Object> get props => [langCode];
}
