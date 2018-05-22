import javax.swing.JOptionPane;
import java.awt.*;
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
    if (username == null || username.length() < 6) {
      JOptionPane.showMessageDialog(null, "Please enter a valid username.");
      return;
    }
    //if Credentials.authenticate(username) {
    //}
    String password = JOptionPane.showInputDialog("Enter a password:");
    if (password == null || password.length() < 6) {
      JOptionPane.showMessageDialog(null, "Please enter a valid password.");
    }
  }
  public static boolean authenticate(String username) {
    
    return true;
  }
}