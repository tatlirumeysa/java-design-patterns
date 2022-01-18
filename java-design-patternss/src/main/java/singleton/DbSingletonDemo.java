package singleton;

public class DbSingletonDemo {
  public static void main(String[] args) {
    //runtime, logger, spring beans
    DbSingleton instance = DbSingleton.getInstance();
    System.out.println(instance);
    DbSingleton anotherInstance = DbSingleton.getInstance();
    System.out.println(anotherInstance);
  }
}
