import 'package:flutter/material.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;

//99% of work will be done here, to be platform independent
void main() => runApp(MaterialApp(home: SpaceHome()));
//"StatelessWidget" enables hot reload forest and makes our code reusable
class SpaceHome extends StatelessWidget {
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now().add(Duration(days: 7));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Space Management'),
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          children: <Widget>[
            new Container(
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Room ID:',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '106',
                      style: TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                        color: Colors.amberAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            new Container(
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Room Type:',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Conference',
                      style: TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                        color: Colors.amberAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            new Container(
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Room Capacity:',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '30',
                      style: TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                        color: Colors.amberAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            new Container(
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Seats Occupied:',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '22',
                      style: TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                        color: Colors.amberAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new MaterialButton(
                color: Colors.lightBlueAccent,
                onPressed: () async {
                  final List<DateTime> picked = await DateRagePicker.showDatePicker(
                      context: context,
                      initialFirstDate: new DateTime.now(),
                      initialLastDate: (new DateTime.now()).add(new Duration(days: 7)),
                      firstDate: new DateTime(2015),
                      lastDate: new DateTime(2030)
                  );
                  if (picked != null && picked.length == 2) {
                    _startDate = picked[0];
                    _endDate = picked[1];
                    print(picked);
                  }
                  },
                child: new Text("Pick date range")
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'StartDate:${_startDate}',
                  style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 1.0,
                    color: Colors.grey,
                  ),
                ),
                //Text("End Date: ${DateFormat('MM/dd/yyyy').format(_endDate).toString()}"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'EndDate:${_endDate}',
                  style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 1.0,
                    color: Colors.grey,
                  ),
                ),
                //Text("End Date: ${DateFormat('MM/dd/yyyy').format(_endDate).toString()}"),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(
          'ok',
          style: TextStyle(
            color: Colors.grey[900],
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.grey,
      ),
    );
  }
}