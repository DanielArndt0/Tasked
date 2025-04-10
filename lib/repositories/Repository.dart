abstract class Repository<T> {
  List<T> getAll();
  void insert(T object);
  void remove(T object);
}