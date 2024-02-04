import 'package:core_common/commons.dart';
import 'package:core_network/networks.dart';

class ExceptionMapper extends NetworkExceptionMapper {

  @override
  Future<BaseException> mapperTo(NetworkAppError error) async {
    /// if mapper special [NetworkAppError] data, please add logic here
    return super.mapperTo(error);
  }
}
