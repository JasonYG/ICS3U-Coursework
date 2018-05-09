import java.io.*;
import java.util.*;
public class Main {
	public static void main(String[] args) throws Exception {
		File othello = new File("G:\\Documents\\ICS 3U\\Exercise Set (B)\\Exercise_12\\bin\\othello.txt");
		Scanner ot = new Scanner(othello);
		int totalChars = -3;
		while (ot.hasNextLine()) {
			String line = ot.nextLine();
			totalChars += line.length();
		}
		System.out.println("The number of characters in othello is: " + totalChars);
		
		File illiad = new File("G:\\Documents\\ICS 3U\\Exercise Set (B)\\Exercise_12\\bin\\illiad.txt");
		Scanner il = new Scanner(illiad);
		int capitalLetters = 0;
		while (il.hasNextLine()) {
			String line = il.nextLine();
			for (int i = 0; i < line.length(); i++) {
				if (Character.isUpperCase(line.charAt(i))) {
					capitalLetters++;
				}
			}
		}
		System.out.println("The number of capital letters in illiad is: " + capitalLetters);
		
		File romeoAndJuliet = new File("G:\\Documents\\ICS 3U\\Exercise Set (B)\\Exercise_12\\bin\\romeoAndJuliet.txt");
		Scanner ro = new Scanner(romeoAndJuliet);
		int vowels = 0;
		String vowelLetters = "AEIOU";
		while (ro.hasNextLine()) {
			String line = ro.nextLine();
			for (int i = 0; i < line.length(); i++) {
				if (vowelLetters.contains(("" + line.charAt(i)).toUpperCase())) {
					vowels++;
				}
			}
		}
		System.out.println("The number of vowels in romeoAndJuliet is: " + vowels);
		
		File theOdyssey = new File("G:\\Documents\\ICS 3U\\Exercise Set (B)\\Exercise_12\\bin\\theOdyssey.txt");
		Scanner to = new Scanner(theOdyssey);
		int numberOfWords = 0;
		while (to.hasNextLine()) {
			String[] words = to.nextLine().split(" ");
			numberOfWords += words.length;
		}
		System.out.println("The number of words in theOdyssey is: " + numberOfWords);
		
		File hamlet = new File("G:\\Documents\\ICS 3U\\Exercise Set (B)\\Exercise_12\\bin\\hamlet.txt");
		Scanner ha = new Scanner(hamlet);
		int numberOfPunctuation = 0;
		String punctuation = "':;.,!?";
		while (ha.hasNextLine()) {
			String line = ha.nextLine();
			for (int i = 0; i < line.length(); i++) {
				if (punctuation.contains("" + line.charAt(i))) {
					numberOfPunctuation++;
				}
			}
		}
		System.out.println("The number of punctuation marks in hamlet is: " + numberOfPunctuation);
		
		File macbeth = new File("G:\\Documents\\ICS 3U\\Exercise Set (B)\\Exercise_12\\bin\\macbeth.txt");
		Scanner ma = new Scanner(macbeth);
		int[] usedLetters = new int[26];
		for (int i = 0; i < usedLetters.length; i++) {
			usedLetters[i] = 0;
		}
		while (ma.hasNextLine()) {
			char[] letters = ma.nextLine().toCharArray();
			for (int i = 0; i < letters.length; i++) {
				int decimal = (int)(Character.toString(letters[i]).toUpperCase().charAt(0)) - 65;
				if (decimal >= 0 && decimal < 26) {
					usedLetters[decimal]++;
				}
			}
		}
		int mostUsed = maxVal(usedLetters);
		char letter = letter(usedLetters, mostUsed);
		System.out.println("The most frequent letter in macbeth is: " + letter + ", " + mostUsed + " time(s)");

	}
	static char letter(int[] usedLetters, int mostUsed) {
		return (char)(indexOf(usedLetters, mostUsed) + 65); 
	}
	static int maxVal(int[] arr) {
		int max = 0;
		for (int i = 0; i < arr.length; i++) {
			if (max == 0) { 
				max = arr[i];
			}
			if (arr[i] > max) {
				max = arr[i];
			}
		}
		return max;
	}
	static int indexOf(int[] arr, int n) {
		for (int i = 0; i < arr.length; i++) {
			if (arr[i] == n) {
				return i;
			}
		}
		return -1;
	}
}
