import javax.swing.JOptionPane;
/**
 * This class is used to register new users.
 *
 * @author Jason Guo
 * @since May 9, 2018
 * @version 1.0
 *
 */
public class Credentials {

   /**
    * Registers the user's credentials
    */
  public static void register() {
    String username = JOptionPane.showInputDialog("Enter a username:");
    if (username == null) {
    System.out.println("Please enter a username");
    }
  }
}