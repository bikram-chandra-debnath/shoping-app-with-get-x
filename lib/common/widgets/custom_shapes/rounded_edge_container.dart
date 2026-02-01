import 'package:flutter/cupertino.dart';
import 'package:shopping_app_with_getx/common/widgets/custom_shapes/clipper/custom_clipper.dart';

class AppRoundedEdgeContainer extends StatelessWidget {
  const AppRoundedEdgeContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: AppCustomRoundedEdges(), child: child);
  }
}
