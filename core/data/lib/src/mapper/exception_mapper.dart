import 'package:core_common/commons.dart';
import 'package:core_model/models.dart';
import 'package:core_network/networks.dart';

class ExceptionMapper {
  Future<BaseException> mapperTo(AppError error) async {
    switch (error.type) {
      case AppErrorType.network:
        return const ToastException(-1, messageId: 'ok', message: null);

      case AppErrorType.server:
        if (error.errors?.length == 1) {
          return await _mapperFromSingleError(error.errors!.first);
        } else if ((error.errors?.length ?? 0) > 1) {
          return await _mapperFromMultipleErrors(error.errors!);
        } else {
          return const ToastException(-1, messageId: 'ok', message: '');
        }

      case AppErrorType.unknown:
      case AppErrorType.cancel:
      case AppErrorType.timeout:
      default:
        return const ToastException(-1, messageId: 'ok', message: null);
    }
  }

  Future<BaseException> _mapperFromSingleError(DataError errorDataModel) async {
    switch (errorDataModel.errorCode) {
      case 1000:
      default:
        return OnPageException(errorDataModel.errorCode!, message: errorDataModel.message, messageId: null);
    }
  }

  // Multiple exception only with inline exception so need return only type inline
  Future<BaseException> _mapperFromMultipleErrors(List<DataError> errors) async {
    final tagList = await _mapperFromErrors(errors);
    return InlineException(-1, tagList, message: 'multiple errors will appear to check multiple fields');
  }

  Future<List<Tag>> _mapperFromErrors(List<DataError> errors) async {
    final tags = <Tag>[];
    for (var error in errors) {
      tags.add(Tag(error.errorCode!.toString(), message: error.message));
    }

    return tags;
  }
}
