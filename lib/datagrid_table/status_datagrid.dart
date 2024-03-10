import 'package:flutter/material.dart';
import 'package:hospitalityappproject/model/status_model.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class StatusDataSource extends DataGridSource {
  BuildContext? context;
  StatusDataSource(this.context, {required List<StatusModel> statusData}) {
    _statusData = statusData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              // DataGridCell<String>(columnName: 'No.', value: e.),
              DataGridCell<String>(columnName: 'Room', value: e.room),

              DataGridCell<dynamic>(columnName: 'Status', value: e.status),

              DataGridCell<String>(
                  columnName: 'Guest Name', value: e.guestName),
            ]))
        .toList();
  }

  List<DataGridRow> _statusData = [];

  @override
  List<DataGridRow> get rows => _statusData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    final List<DataGridCell> cells = row.getCells();

    return DataGridRowAdapter(
      cells: cells.map<Widget>((e) {
        return Container(
          decoration: BoxDecoration(),
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          alignment: Alignment.bottomLeft,
          child: Text(
            e.value.toString(),
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Nunito-Sans',
            ),
          ),
        );
      }).toList(),
    );
  }
}
