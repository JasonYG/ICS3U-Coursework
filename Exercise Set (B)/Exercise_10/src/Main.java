import java.io.*;
import java.util.*;
public class Main {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		analyze(input.nextLine());
	}
	public static void analyze(String str) {
		char[] letters = str.toCharArray();
		// Used for length
		System.out.println("The length of the sentence is: " + length(letters));
	
		// Number of capital letters
		System.out.println("The number of capital letters is: " + capitals(letters));
		
		// Number of vowels
		System.out.println("The number of vowels is: " + vowels(letters));
		
		// Number of words
		System.out.println("The number of words is: " + numberWords(str));
	
		// Number of punctuation
		System.out.println("The number of punctuation is: " + punctuation(letters));
		
		// Most used letter
		int[] usedLetters = new int[26];
		for (int i = 0; i < usedLetters.length; i++) {
			usedLetters[i] = 0;
		}
		for (int i = 0; i < letters.length; i++) {
			int decimal = (int)(Character.toString(letters[i]).toUpperCase().charAt(0)) - 65;
			if (decimal >= 0 && decimal < 26) {
				usedLetters[decimal]++;
			}
		}
		
		int mostUsed = maxVal(usedLetters);
		char letter = letter(usedLetters, mostUsed);
		System.out.println("The most frequent letter is: " + letter + ", " + mostUsed + " time(s)");

	}
	static int length(char[] letters) {
		return letters.length;
	}
	static int capitals(char[] letters) {
		int capitalLetters = 0;
		for (int i = 0; i < letters.length; i++) {
			if (Character.isUpperCase(letters[i])) {
				capitalLetters++;
			}
		}
		return capitalLetters;
	}
	static int vowels(char[] letters) {
		String vowels = "AEIOU";
		int vowelNumber = 0;
		for (int i = 0; i < letters.length; i++) {
			if (vowels.contains(("" + letters[i]).toUpperCase())) {	
				vowelNumber++;
			}
		}
		return vowelNumber;
	}
	static int numberWords(String str) {
		String[] words = str.split(" ");
		return words.length;
	}
	static int punctuation(char[] letters) {
		String punctuation = "':;.,!?";
		int punctuationCount = 0;
		for (int i = 0; i < letters.length; i++) {
			if (punctuation.contains("" + letters[i])) {
				punctuationCount++;
			}
		}
		return punctuationCount;
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
