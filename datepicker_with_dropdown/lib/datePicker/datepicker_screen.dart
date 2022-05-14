import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  TextEditingController datePickerController = TextEditingController();
  List day = [], month = [], year = [];
  String selectDay = "", selectMonth = "", selectYear = "";

  @override
  void initState() {
    super.initState();
    datePickerController.text = 'yyyy/MM/dd';
    selectDay = "01";
    selectMonth = "01";
    selectYear = "1990";
    _initialItemDatePicker();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datepicker with Dropdown'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Date'),
            TextFormField(
              readOnly: true,
              controller: datePickerController,
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
              onTap: () {
                _showModalDatePicker();
                _setTextDateForm();
              },
            )
          ],
        ),
      ),
    );
  }

  _showModalDatePicker() {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          titlePadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          title: const Text(
            "Datepicker",
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          content: StatefulBuilder(
            builder: (context, setState) => SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Year",
                      ),
                      DropdownButton<dynamic>(
                        value: selectYear,
                        icon: const Icon(Icons.keyboard_arrow_down_sharp),
                        underline: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                        onChanged: (value) {
                          setState(() {
                            selectYear = value.toString();
                          });
                          _setTextDateForm();
                        },
                        items: year.map<DropdownMenuItem>((value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "Month",
                      ),
                      DropdownButton<dynamic>(
                        value: selectMonth,
                        icon: const Icon(Icons.keyboard_arrow_down_sharp),
                        underline: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                        onChanged: (value) {
                          setState(() {
                            selectMonth = value.toString();
                          });
                          _setTextDateForm();
                        },
                        items: month.map<DropdownMenuItem>((value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "Day",
                      ),
                      DropdownButton<dynamic>(
                        value: selectDay,
                        icon: const Icon(Icons.keyboard_arrow_down_sharp),
                        underline: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                        onChanged: (value) {
                          setState(() {
                            selectDay = value.toString();
                          });
                          _setTextDateForm();
                        },
                        items: day.map<DropdownMenuItem>((value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.055,
                        child: TextButton(
                          child: const Text(
                            "Select",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _setTextDateForm() {
    datePickerController.text =
        selectYear + "/" + selectMonth + "/" + selectDay;
  }

  _initialItemDatePicker() {
    if (year.isEmpty) {
      for (var i = 0; i < 100; i++) {
        year.add((1950 + i).toString());
      }
    }
    if (month.isEmpty) {
      for (var i = 0; i < 12; i++) {
        String value = (i + 1).toString();
        month.add(value.length == 1 ? "0" + value : value);
      }
    }
    if (day.isNotEmpty) {
      day = [];
    }
    for (var i = 0;
        i <
            DateUtils.getDaysInMonth(
                int.parse(selectYear), int.parse(selectMonth));
        i++) {
      String value = (i + 1).toString();
      day.add(value.length == 1 ? "0" + value : value);
    }
  }
}
