part of 'pages_bloc.dart';

abstract class PagesState extends Equatable {
  final List<AppPage> pages;

  const PagesState(this.pages);

  @override
  List<Object> get props => [pages];
}

class PagesInitial extends PagesState {
  final List<AppPage> appPages;

  const PagesInitial(this.appPages) : super(appPages);
}

class PagesAdded extends PagesState {
  final List<AppPage> appPages;

  const PagesAdded(this.appPages) : super(appPages);
}

class PagesRemoved extends PagesState {
  final List<AppPage> appPages;

  const PagesRemoved(this.appPages) : super(appPages);
}
