import java.io.FileInputStream;
import java.util.Properties;

/*
CSCE 331
Database setup example
Purpose: Keeping usernames and password private.
*/
public final class dbSetup  {
  public static final String user = "squad_44";
  public static final String pswd = loadPassword();
  public static final String dtbs = "squad_44_db";

  // Reads db_pass from a local .env file, falling back to a real
  // environment variable if the file or key isn't present.
  private static String loadPassword() {
    try (FileInputStream in = new FileInputStream(".env")) {
      Properties props = new Properties();
      props.load(in);
      return props.getProperty("db_pass", System.getenv("db_pass"));
    } catch (Exception e) {
      return System.getenv("db_pass");
    }
  }

}//end class
