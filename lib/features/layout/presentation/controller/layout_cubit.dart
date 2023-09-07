import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:says_app/features/auth/presentation/views/initial_view.dart';
import 'package:says_app/features/settings/presentation/views/settings_view.dart';
import 'package:says_app/features/home/presentation/views/widgets/scan_view_body.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  static LayoutCubit get(context) => BlocProvider.of(context);

  List<Widget> screens = [
    const InitialView(),
    const ScanViewBody(),
    const SettingsView(),
  ];

  int currentIndex = 0;

  void changeBottomNav(index) {
    currentIndex = index;
    emit(ChangeBottomNavState());
  }
}
