class DataContainer<T> {

    private T data;

    public void setData(T data) {
        this.data = data;
    }

    public T getData() {
        return data;
    }

    public void display() {
        System.out.println("Stored Data: " + data);
    }
}

public class Main {

    public static void main(String[] args) {

        // Integer Type
        DataContainer<Integer> intData = new DataContainer<>();
        intData.setData(100);

        System.out.println("Integer Container");
        intData.display();

        // String Type
        DataContainer<String> strData = new DataContainer<>();
        strData.setData("Hello Java");

        System.out.println("\nString Container");
        strData.display();

        // Double Type
        DataContainer<Double> doubleData = new DataContainer<>();
        doubleData.setData(99.99);

        System.out.println("\nDouble Container");
        doubleData.display();

        // Character Type
        DataContainer<Character> charData = new DataContainer<>();
        charData.setData('A');

        System.out.println("\nCharacter Container");
        charData.display();
    }
}
