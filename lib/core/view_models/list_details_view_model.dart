import 'package:exam_2/core/enums/view_state.dart';
import 'package:exam_2/core/models/list_details_model.dart';
import 'package:exam_2/core/services/list_details_api.dart';
import 'package:exam_2/locator.dart';

import 'base_view_model.dart';

class ListDetailsViewModel extends BaseViewModel {
  final ListDetails _ListDetails = locator<ListDetails>();
  ListDetailsModel? listDetailsModel;
  // List<ListModel> profile = [];

  Future<void> getListAPI(String token) async {
    setViewState(ViewState.busy);

    listDetailsModel = await _ListDetails.getalldetails(token);

    print('-----------------------------------------------');

    setViewState(ViewState.idle);
  }
}
