import 'dart:convert';
import 'package:http/http.dart' as http;
import 'admin.dart';
import 'api_service.dart';

class AdminService {
  // GET semua admin
  Future<List<Admin>> getAdmins() async {
    final res = await http.get(Uri.parse('$baseUrl/users'));
    if (res.statusCode == 200) {
      final List data = jsonDecode(res.body);
      return data
          .map((e) => Admin.fromJson({
        ...e,
        'department': e['company']?['name'] ?? 'IT Support',
      }))
          .toList();
    }
    throw Exception('Gagal mengambil data Admin (${res.statusCode})');
  }

  // GET satu admin berdasarkan ID
  Future<Admin> getAdmin(int id) async {
    final res = await http.get(Uri.parse('$baseUrl/users/$id'));
    if (res.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(res.body);
      return Admin.fromJson({
        ...data,
        'department': data['company']?['name'] ?? 'IT Support',
      });
    }
    throw Exception('Admin $id tidak ditemukan (${res.statusCode})');
  }

  // DELETE admin berdasarkan ID
  Future<void> deleteAdmin(int id) async {
    final res = await http.delete(Uri.parse('$baseUrl/users/$id'));
    if (res.statusCode != 200 && res.statusCode != 204) {
      throw Exception('Gagal menghapus Admin (${res.statusCode})');
    }
  }
}