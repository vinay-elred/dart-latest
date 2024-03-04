import 'package:dio/dio.dart';

void main() async {
  final (:error, :response) = await get();
  if (error != null) return print("Catch Error");
  if (response == null) return print("Response Error");
  final List data = response.data;
  print("Data: $data");
}

//Records
Future<({Object? error, Response? response})> get() async {
  try {
    final response = await Dio().get(
      "https://65dd6acde7edadead7eddeb2.mockapi.io/users",
    );
    if (response.statusCode == 200) return (error: null, response: response);
    throw response;
  } catch (e) {
    return (error: e, response: null);
  }
}
