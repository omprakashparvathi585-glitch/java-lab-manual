import java.util.*;
import java.util.stream.Collectors;

class Employee {

    private int id;
    private String name;
    private String department;
    private double salary;

    public Employee(int id, String name, String department, double salary) {
        this.id = id;
        this.name = name;
        this.department = department;
        this.salary = salary;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDepartment() {
        return department;
    }

    public double getSalary() {
        return salary;
    }

    @Override
    public String toString() {
        return id + "  " + name + "  " + department + "  " + salary;
    }
}

public class Main {

    public static void main(String[] args) {

        List<Employee> employees = Arrays.asList(
                new Employee(101, "Rahul", "IT", 50000),
                new Employee(102, "Sneha", "HR", 45000),
                new Employee(103, "Kiran", "IT", 60000),
                new Employee(104, "Anjali", "Finance", 55000),
                new Employee(105, "Arun", "IT", 70000)
        );

        System.out.println("===== Employee Details =====");
        employees.forEach(System.out::println);

        System.out.println("\nEmployees with Salary > 50000");

        List<Employee> highSalary = employees.stream()
                .filter(e -> e.getSalary() > 50000)
                .collect(Collectors.toList());

        highSalary.forEach(System.out::println);

        System.out.println("\nAverage Salary");

        double avgSalary = employees.stream()
                .mapToDouble(Employee::getSalary)
                .average()
                .orElse(0);

        System.out.println(avgSalary);

        System.out.println("\nEmployees Grouped by Department");

        Map<String, List<Employee>> group =
                employees.stream()
                        .collect(Collectors.groupingBy(Employee::getDepartment));

        group.forEach((dept, list) -> {
            System.out.println("\nDepartment : " + dept);
            list.forEach(System.out::println);
        });
    }
}
