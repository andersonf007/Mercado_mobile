abstract class AbstractRepositoriesServices<T, Params> {
  Future<T> call(Params params);
}
