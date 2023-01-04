import 'package:flutter/material.dart';
import 'package:pet_adoption/App/utils/widgets/spacing_widgets.dart';

import 'components/app_bar.dart';
import 'components/search_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _xOffset = 0;
  double _yOffset = 0;
  double _scaleFactor = 1;

  bool _isDrawerOpen = false;

  void _openDrawer() {
        if(WidgetsBinding.instance.window.viewInsets.bottom > 0.0)
    {
      
    }
    else
    {
       setState(() {
      _xOffset = 230;
      _yOffset = 150;
      _scaleFactor = 0.6;
      _isDrawerOpen = true;
    });
    }
    
  }

  void _closeDrawer() {
    setState(() {
      _xOffset = 0;
      _yOffset = 0;
      _scaleFactor = 1;
      _isDrawerOpen = false;
    });
  }



  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(_xOffset, _yOffset, 0)
        ..scale(_scaleFactor),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
          color:  Colors.grey[200],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
          )),
      child: Column(
        children: <Widget>[
          addVerticalSpace(60.0),
          buildAppBar(
            isDrawerOpen: _isDrawerOpen,
            openDrawer: _openDrawer,
            closeDrawer: _closeDrawer,
          ),
          addVerticalSpace(25.0),
          Expanded(child: SearchBar()),
          
         
        ],
      ),
    );
  }
}
