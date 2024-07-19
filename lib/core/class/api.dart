import 'package:dio/dio.dart';

class Api {
  final Dio _dio;

  Api({required Dio dio}) : _dio = dio;

  Future<dynamic> get({required String url}) async {
    Response response = await _dio.get(url);
    return response.data;
  }
}





























// class Api {
//   final Dio dio;

//   Api({required this.dio});

//   Future<dynamic> get({required String url, @required String? token}) async {
//     try {
//       Map<String, dynamic> headers = {};
//       if (token != null) {
//         headers.addAll({'Authorization': 'Bearer $token'});
//       }

//       Response response = await dio.get(url,
//           options: Options(
//             headers: headers,
//           ));
//       return response;
//     } on Exception {
//       throw Exception('');
//     }
//   }

//   Future<dynamic> post(
//       {required String url,
//       @required dynamic data,
//       @required String? token}) async {
//     try {
//       Map<String, dynamic>? headers = {};
//       if (token != null) {
//         headers.addAll({'Authorization': 'Bearer $token'});
//       }
//       Response response = await dio.post(
//         url,
//         options: Options(headers: headers),
//         data: data,
//       );
//       return response;
//     } on Exception {
//       throw Exception('');
//     }
//   }

//   Future<dynamic> put(
//       {required String url,
//       @required dynamic data,
//       @required String? token}) async {
//     try {
//       Map<String, dynamic>? headers = {};
//       if (token != null) {
//         headers.addAll({'Authorization': 'Bearer $token'});
//       }
//       print('url:$url ,data:$data ,token:$token');

//       Response response = await dio.post(
//         url,
//         options: Options(headers: headers),
//         data: data,
//       );
//       print(response.data);
//       return response;
//     } catch (e) {
//       throw Exception(e.toString());
//     }
//   }
// }
