import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:windenergy/features/data/repositories/turbine_repository_impl.dart';
import 'package:windenergy/features/data/services/db_service.dart';
import 'package:windenergy/utils/exceptions.dart';
import 'package:windenergy/utils/result.dart';

class MockDbService extends Mock implements DbService {}

void main() {
  late MockDbService mockDbService;
  late TurbineRepositoryImpl turbineRepositoryImpl;

  setUp(() {
    mockDbService = MockDbService();
    turbineRepositoryImpl = TurbineRepositoryImpl(dbService: mockDbService);
  });

  group("readTurbines", () {
    test("should return Success", () async {
      when(() => mockDbService.readTurbines())
          .thenAnswer((_) async => Success());

      final result = await turbineRepositoryImpl.readTurbines();

      expect(result, isA<Success>());
    });

    test("should return Error", () async {
      when(() => mockDbService.readTurbines())
          .thenThrow(ServerException());

      final result = await turbineRepositoryImpl.readTurbines();

      expect(result, isA<Error>());
    });
  });
}