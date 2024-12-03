import 'package:check_out/core/utlis/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar buildAppBar(
    {required final String title, @required final VoidCallback? onTap}) {
  return AppBar(
    leading: Center(
        child: GestureDetector(
            onTap: onTap,
            child: SvgPicture.asset('assets/images/Arrow 1.svg'))),
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(title, textAlign: TextAlign.center, style: Style.style25),
  );
}
