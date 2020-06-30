@overrideimport 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@override
Widget build(BuildContext context){
  String mimargin='abc';// error because it is string
  double marginAsADouble;

  try{
    marginAsADouble=double.parse(mimargin);
  }catch(e){
    print(e);
  }

  return Scaffold(
    body:Container(margin:EdgeInsets.all(marginAsADouble ?? 30.0),)
  );
}