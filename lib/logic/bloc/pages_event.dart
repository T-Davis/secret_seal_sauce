part of 'pages_bloc.dart';

@immutable
abstract class PagesEvent extends Equatable {}

class PagesPush extends PagesEvent {
  final AppPage page;

  PagesPush(this.page);

  @override
  List<Object> get props => [page];
}

class PagesPop extends PagesEvent {
  @override
  List<Object> get props => [];
}
