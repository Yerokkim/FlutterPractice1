import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'BIMresults_page.dart';
import 'BIMreusable_card.dart';
import 'BIMreuseable_icon.dart';
import 'constants.dart';

enum Gender { female, male }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender genderSelected;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
            Widget>[
          Expanded(
              child: Row(children: <Widget>[
            Expanded(
              child: ReUseAbleContainer(
                onPressed: () {
                  setState(() {
                    genderSelected = Gender.male;
                  });
                },
                colour: genderSelected == Gender.male
                    ? activeButtonColor
                    : inActiveButtonColor,
                childCard: ReUseChildCard(
                  icon: FontAwesomeIcons.mars,
                  label: 'MALE',
                ),
              ),
            ),
            Expanded(
                child: ReUseAbleContainer(
              onPressed: () {
                setState(() {
                  genderSelected = Gender.female;
                });
              },
              colour: genderSelected == Gender.female
                  ? activeButtonColor
                  : inActiveButtonColor,
              childCard: ReUseChildCard(
                icon: FontAwesomeIcons.venus,
                label: 'FEMALE',
              ),
            ))
          ])),
          Expanded(
              child: ReUseAbleContainer(
                  childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'HEIGHT',
                          style: klabelStyle,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(height.toString(), style: kCardLetterSize),
                              Text('cm', style: klabelStyle)
                            ]),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 25.0)),
                          child: Slider(
                            value: height.toDouble(),
                            activeColor: Color(0xFFEB1555),
                            inactiveColor: Colors.grey[200],
                            min: 120.0,
                            max: 230.0,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        )
                      ]),
                  colour: inActiveButtonColor)),
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                  child: ReUseAbleContainer(
                      childCard: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('WEIGHT', style: klabelStyle),
                            Text(weight.toString(), style: kCardLetterSize),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    icon: FontAwesomeIcons.plus),
                                SizedBox(width: 15.0),
                                RoundIconButton(
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    icon: FontAwesomeIcons.minus),
                              ],
                            ),
                          ]),
                      colour: inActiveButtonColor)),
              Expanded(
                  child: ReUseAbleContainer(
                colour: inActiveButtonColor,
                childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: klabelStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kCardLetterSize,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            SizedBox(width: 15.0),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            )
                          ])
                    ]),
              ))
            ]),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultsPage()),
              );
            },
            child: Container(
              child:Center(
                 child: Text('CALCULATE',style: kLargeButtonStyle),
              ),
               
                color: kbottomContainerColor,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: kBottomContainerHeight),
          )
        ]));
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 10.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Colors.grey,
    );
  }
}
