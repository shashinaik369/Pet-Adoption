part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  bool switchValue;
  ThemeState(this.switchValue);

  @override
  List<Object> get props => [switchValue];
}
