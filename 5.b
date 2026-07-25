import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a string: ");
        String input = sc.nextLine();

        int vowels = 0;
        int consonants = 0;
        int digits = 0;
        int specialChars = 0;

        String lower = input.toLowerCase();

        for (char ch : lower.toCharArray()) {

            if (Character.isLetter(ch)) {

                if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
                    vowels++;
                } else {
                    consonants++;
                }

            } else if (Character.isDigit(ch)) {
                digits++;
            } else if (!Character.isWhitespace(ch)) {
                specialChars++;
            }
        }

        System.out.println("Vowels: " + vowels);
        System.out.println("Consonants: " + consonants);
        System.out.println("Digits: " + digits);
        System.out.println("Special Characters: " + specialChars);

        sc.close();
    }
}
