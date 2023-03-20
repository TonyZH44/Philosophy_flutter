import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({Key? key, required this.child}) : super(key: key);

  
  

  @override
  Widget build(BuildContext context) {

    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    double horizon = 70.0;
    double vertic = 60.0;
    
    if (!kIsWeb) {
      horizon = 20.0;
      vertic = 30.0;
    }
    
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizon, vertical: vertic),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}