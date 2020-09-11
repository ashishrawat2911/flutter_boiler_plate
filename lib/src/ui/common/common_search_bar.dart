import 'package:flutter/material.dart';

class CommonSearchBar extends StatefulWidget implements PreferredSizeWidget {
  final ValueChanged<String> onTextChanged;
  final VoidCallback onBackPressed;
  final VoidCallback onClosePressed;
  final String hintText;
  final double elevation;
  final bool isEnabled;
  final TextEditingController textEditingController;
  final Widget appBarLeading;
  final Widget appBarHeight;

  CommonSearchBar(
      {@required this.onTextChanged,
      this.hintText,
      this.onBackPressed,
      this.onClosePressed,
      this.elevation,
      this.isEnabled,
      this.textEditingController,
      this.appBarLeading,
      this.appBarHeight});

  @override
  _CommonSearchBarState createState() => _CommonSearchBarState();

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight ?? kToolbarHeight);
}

class _CommonSearchBarState extends State<CommonSearchBar> {
  FocusNode focusNode = FocusNode();
  TextEditingController textEditingController;

  bool showCross = false;

  @override
  void initState() {
    super.initState();
    textEditingController =
        widget.textEditingController ?? TextEditingController();
    textEditingController.addListener(() {
      setState(() {
        if (textEditingController.text.length > 0) {
          showCross = true;
        } else {
          showCross = false;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: widget.elevation,
      leading: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            if (widget.onBackPressed != null) {
              widget.onBackPressed();
            }
            FocusScope.of(context).requestFocus(FocusNode());
            Navigator.of(context).pop();
          },
          child: widget.appBarLeading ?? Icon(Icons.arrow_back)),
      title: TextField(
        controller: textEditingController,
        autofocus: true,
        enabled: widget.isEnabled,
        focusNode: focusNode,
        onChanged: (value) {
          widget.onTextChanged(value.trim());
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hintText ??
              MaterialLocalizations.of(context).searchFieldLabel,
          hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
        ),
      ),
      actions: [
        Visibility(
          visible: showCross,
          child: IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              if (textEditingController.text == "") {
                if (widget.onClosePressed != null) {
                  widget.onClosePressed();
                }
                Navigator.of(context).pop();
              } else {
                textEditingController.clear();
                widget.onTextChanged("");
              }
            },
          ),
        )
      ],
    );
  }
}
