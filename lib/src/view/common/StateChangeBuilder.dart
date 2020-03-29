import 'package:flutter/material.dart';

typedef StateBuilder<T> = Function(
    BuildContext context, StateSetter changeState);

class StateChangeBuilder extends StatefulWidget {
  const StateChangeBuilder({
    Key key,
    @required this.builder,
  })  : assert(builder != null),
        super(key: key);

  final StateBuilder builder;

  @override
  _StateChangeBuilderState createState() => _StateChangeBuilderState();
}

class _StateChangeBuilderState extends State<StateChangeBuilder> {
  @override
  Widget build(BuildContext context) => widget.builder(context, setState);
}
