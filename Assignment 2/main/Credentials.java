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
    if (password == null || password.length() < 6 || password.length() > 25) {
      JOptionPane.showMessageDialog(null, "Please enter a valid password.");
      return;
    }
    //writes username to username.txt
    try {
      BufferedWriter usernameLists = new BufferedWriter(new FileWriter("G:\\Documents\\ICS 3U\\Assignment 2\\main\\data\\username.txt", true));
      usernameLists.write(username + "\n");
      usernameLists.close();
    } 
    catch (IOException e) {
      e.printStackTrace();
      return;
    }
    //writes encrypted password to password.txt
    try {
      BufferedWriter passwordLists = new BufferedWriter(new FileWriter("G:\\Documents\\ICS 3U\\Assignment 2\\main\\data\\password.txt", true));
      passwordLists.write(username + "\n");
      passwordLists.write(encrypt(password) + "\n");
      passwordLists.close();
    }
    catch (IOException e) {
      e.printStackTrace();
      return;
    }
  }

  /**
   * Checks if the username already exists in the database
   *
   * @param username The username to be checked
   * @return true if the username does not exist, false if it does
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
   * Used to log into the program
   */
  public static void login() {
    String username = JOptionPane.showInputDialog("Enter your username");
    if (authenticate(username)) {
      JOptionPane.showMessageDialog(null, "Please enter a valid username.");
      return;
    }
    String password = JOptionPane.showInputDialog("Enter your password");
    if (authenticate(username, password)) {
      JOptionPane.showMessageDialog(null, "Login Successful");
      return;
    } else {
       JOptionPane.showMessageDialog(null, "Invalid password.");
       return;
    }
  }
  /**
   * Encrypts plain text using Caesar cipher
   *
   * @param password The password to be encrypted
   * @return the encrypted password
   */
  public static String encrypt(String password) {
    char[] singleChars = password.toCharArray();
    for (int i = 0; i < singleChars.length; i++) {
      singleChars[i] = (char)(((int)Character.toUpperCase(singleChars[i]) - 63 + 3) % 26 + 63);
    }
    return new String(singleChars);
  }
  /**
   * Decrypts the password
   *
   * @param password The password to be decrypted
   * @return the decrypted password
   */
  public static String decrypt(String password) {
    char[] singleChars = password.toCharArray();
    for (int i = 0; i < singleChars.length; i++) {
      if (((int)Character.toUpperCase(singleChars[i]) - 63 - 3) < 2) {
        singleChars[i] = (char)(((int)Character.toUpperCase(singleChars[i]) - 63 - 3 + 26) + 63);
      } else {
        singleChars[i] = (char)(((int)Character.toUpperCase(singleChars[i]) - 63 - 3) + 63);
      }
    }
    return new String(singleChars);
  }
}