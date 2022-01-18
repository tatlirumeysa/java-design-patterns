package singleton;

public class DbSingleton {
  //eagerly loaded
  //private static DbSingleton instance = new DbSingleton();

  //lazily loaded
  //private static DbSingleton instance = null;

  //thread safe
  private static volatile DbSingleton instance = null;

  private DbSingleton(){

    //to check nobody uses reflection
    if (instance != null){
      throw new RuntimeException("use getInstance method!");
    }
  }

  //making method synchronized means performance hit, so dont
  public static DbSingleton getInstance(){
    if (instance == null){
      synchronized (DbSingleton.class){
        //double check
        if (instance == null){
          instance = new DbSingleton();
        }
      }
    }
    return instance;
  }
}
