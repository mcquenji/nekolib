part of animations;

/// Transforms the child to the given [transform] when hovered.
class TransformOnHover extends HoverableWidget {
  TransformOnHover({Key? key, required this.duration, this.curve = Curves.linear, this.alignment = Alignment.center, required this.transform, required this.child, MouseCursor cursor = kDefaultHoverCursor}) : super(key: key, cursor: cursor);

  /// The duration of the animation.
  final Duration duration;

  /// The curve of the animation.
  final Curve curve;

  /// The transform of the child when hovered.
  final Matrix4 transform;

  /// The child to transform.
  final Widget child;

  /// The alignment of the child.
  final Alignment alignment;

  @override
  Widget build(BuildContext context, bool isHovering) {
    return AnimatedContainer(
      duration: duration,
      curve: curve,
      alignment: alignment,
      transform: transform,
      child: child,
    );
  }
}
