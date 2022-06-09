import java.util.Scanner;

public class sumofnum {
    public static void main(String[] args) {
        // Take input from user
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the number");
        int n = sc.nextInt();
        // Initialize sum variable
        int sum = 0;
        // Loop from 1 to n
        for (int i = 1; i <= n; i++) {
            // Add i to sum
            sum = sum + i;
        }
        // Print sum
        System.out.println("Sum of numbers from 1 to " + n + " is " + sum);
    }
}
