import javax.swing.JOptionPane;
import java.awt.*;
import java.util.*;
import java.lang.*;
import java.io.*;
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
    if (username == null || username.length() < 6 || username.length() > 15) {
      JOptionPane.showMessageDialog(null, "Please enter a valid username.");
      return;
    }
    if (!authenticate(username)) {
      JOptionPane.showMessageDialog(null, "The username already exists.");
      return;
    }
    String password = JOptionPane.showInputDialog("Enter a password:");
    if (password == null || password.length() < 6 || password.length() > 15) {
      JOptionPane.showMessageDialog(null, "Please enter a valid password.");
      return;
    }
    try {
      BufferedWriter usernameLists = new BufferedWriter(new FileWriter("G:\\Documents\\ICS 3U\\Assignment 2\\main\\data\\username.txt", true));
      usernameLists.write(username);
      usernameLists.write("\n")
      usernameLists.close();
    } 
    catch (IOException e) {
      e.printStackTrace();
    }
  }

  /**
   * Javadoc
   */
  private static boolean authenticate(String username) {
    Scanner usernames;
    try {
      File usernameLists = new File("G:\\Documents\\ICS 3U\\Assignment 2\\main\\data\\username.txt");
      usernames = new Scanner(usernameLists);
    }
    catch (Exception e) {
      e.printStackTrace();
      return false;
    }
    while (usernames.hasNextLine()) {
      if (username.equals(usernames.nextLine())) {
        return false;
      }
    }
    return true;
  }
  /**
   * JAVADOC
   */
  public static void login() {
    String username = JOptionPane.showInputDialog("Enter your username");
    String password = JOptionPane.showInputDialog("Enter your password");
    //authenticate(username, password);
  }
}