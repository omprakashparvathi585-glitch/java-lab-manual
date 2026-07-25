import java.util.Scanner;

public class Main {

    private double rawPiValue;
    protected int terms;

    public static final String SERIES_NAME =
            "Leibniz Series (4/1 - 4/3 + 4/5 - 4/7 + 4/9 ...)";

    public Main(int terms) {
        this.terms = terms;
        this.rawPiValue = calculatePi(terms);
    }

    private double calculatePi(int n) {
        double pi = 0;
        int sign = 1;

        for (int i = 0; i < n; i++) {
            pi += sign * (4.0 / (2 * i + 1));
            sign *= -1;
        }

        return pi;
    }

    public double getPiValue() {
        return rawPiValue;
    }

    protected void displayPrecisionInfo() {
        System.out.println("Precision used: " + terms + " terms");
        System.out.println("Series used: " + SERIES_NAME);
    }

    protected void displayRawValue() {
        System.out.println("Raw computed value (private): " + rawPiValue);
    }

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("=== Pi Calculator using Access Specifiers ===");
        System.out.print("Enter the number of terms for Pi approximation: ");

        int n = sc.nextInt();

        System.out.println("\nCalculating Pi using Leibniz Series...");

        Main calc = new Main(n);

        System.out.println("\nPublic Method - Displaying Result:");
        System.out.println("Approximated value of Pi: " + calc.getPiValue());

        System.out.println("\nProtected Method - Displaying Precision Info:");
        calc.displayPrecisionInfo();

        System.out.println("\nPrivate Data - Accessed only within class:");
        calc.displayRawValue();

        sc.close();
    }
} 
