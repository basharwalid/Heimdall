import 'package:flutter/cupertino.dart';
import 'package:heimdall/Core/Base/BaseViewModel.dart';
import 'package:heimdall/Presentation/UI/Home/HomeNavigator.dart';
import 'package:heimdall/Presentation/UI/Home/Tabs/Alert/AlertView.dart';
import 'package:heimdall/Presentation/UI/Home/Tabs/Chat/ChatView.dart';
import 'package:heimdall/Presentation/UI/Home/Tabs/Keys/KeysView.dart';
import 'package:heimdall/Presentation/UI/Home/Tabs/Locks/LocksView.dart';
import 'package:heimdall/Presentation/UI/Home/Tabs/Profile/ProfileView.dart';
import 'package:icons_plus/icons_plus.dart';

class HomeViewModel extends BaseViewModel<HomeNavigator> {
  int selectedIndex = 0;
  List<Widget> tabs = const [
    LocksView(),
    KeysView(),
    ChatView(),
    AlertView(),
    ProfileView()
  ];

  changeIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }

}
