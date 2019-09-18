import 'package:flutter/material.dart';

/// Displays dialog.
/// [textoHeader] Text of header.
/// [textoMsg] Text of body.
/// [pressionarNao] button function no.
/// [pressionarSim] button function yes.
/// [textColor] Color of text.
showPopup(@required BuildContext context, String textoHeader, String textoMsg,
    Function pressionarNao, Function pressionarSim, Color textColor) async {
  assert(context != null);
  assert(textoHeader != null);
  assert(textoMsg != null);
  assert(pressionarNao != null);
  assert(pressionarSim != null);
  assert(textColor != null);

  return EasyDialog(
      context: context,
      textoHeader: textoHeader,
      textoMsg: textoMsg,
      pressionarNao: pressionarNao,
      pressionarSim: pressionarSim,
      textColor: textColor);
}

class EasyDialog extends StatefulWidget {
  //EasyDialog({Key key}) : super(key: key);
  //final DateTime initialDate, firstDate, lastDate;
  final BuildContext context;
  final String textoHeader;
  final String textoMsg;
  final Function pressionarNao;
  final Function pressionarSim;
  final Color textColor;

  EasyDialog(
      {Key key,
      @required this.context,
      this.textoHeader,
      this.textoMsg,
      this.pressionarNao,
      this.pressionarSim,
      this.textColor})
      : super(key: key);

  _EasyDialogState createState() => _EasyDialogState();
}

class _EasyDialogState extends State<EasyDialog> {
  @override
  Widget build(BuildContext context) {
    show();
  }

  Future show() async {
    return await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0)),
            contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            content: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 0),
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Expanded(
                        child: FlatButton.icon(
                          color: Colors.white,
                          label: Text(
                            widget.textoHeader,
                            style: TextStyle(
                                color: widget.textColor,
                                fontWeight: FontWeight.bold),
                          ), //`Text` to display
                          icon: Icon(
                            Icons.info,
                            color: widget.textColor,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      new Expanded(
                        child: new Text(
                          widget.textoMsg,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: widget.textColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            actions: <Widget>[
              new OutlineButton(
                  hoverColor: widget.textColor,
                  color: widget.textColor,
                  child: Text(
                    'Não',
                    style: TextStyle(color: widget.textColor),
                  ),
                  onPressed: widget.pressionarNao,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0))),
              new OutlineButton(
                  hoverColor: widget.textColor,
                  color: widget.textColor,
                  child: Text(
                    'Sim',
                    style: TextStyle(color: widget.textColor),
                  ),
                  onPressed: widget.pressionarSim,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0))),
            ],
          );
        });
  }
}
