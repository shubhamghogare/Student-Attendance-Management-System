import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/category.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/surface/category_surface.dart';
import 'package:flutter_application_1/utils/routes.dart';

class categories_screen extends StatefulWidget {
  categories_screen({Key? key}) : super(key: key);

  @override
  _categories_screenState createState() => _categories_screenState();
}

class _categories_screenState extends State<categories_screen> {
  var _categoryNameController = TextEditingController();
  var _categoryDescriptionController = TextEditingController();
  var _categoryCodeController = TextEditingController();
  var _categoryDepartmentController = TextEditingController();

  var _category = category();

  _showFormDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (param) {
          return AlertDialog(
            actions: <Widget>[
              FlatButton(
                color: Colors.red,
                onPressed: () => Navigator.pop(context),
                child: Text('Cancel'),
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () async {
                  _category.name = _categoryNameController.text;
                  _category.code = _categoryCodeController.text;
                  _category.department = _categoryDepartmentController.text;
                  _category.description = _categoryDescriptionController.text;
                },
                child: Text('Save'),
              )
            ],
            title: Text('Add Class'),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _categoryCodeController,
                    decoration: InputDecoration(
                        hintText: 'write class Code', labelText: 'Class Code'),
                  ),
                  TextField(
                    controller: _categoryNameController,
                    decoration: InputDecoration(
                        hintText: 'write class Name', labelText: 'Class Name'),
                  ),
                  TextField(
                    controller: _categoryDepartmentController,
                    decoration: InputDecoration(
                        hintText: 'write Department Name',
                        labelText: 'Department'),
                  ),
                  TextField(
                    controller: _categoryDescriptionController,
                    decoration: InputDecoration(
                        hintText: 'Write Description',
                        labelText: 'Description'),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: RaisedButton(
          color: CupertinoColors.activeGreen,
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => home_page())),
          elevation: 0.0,
        ),
        title: Text("Classes"),
      ),
      body: Center(child: Text('Welcome to Add classes screen')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showFormDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
