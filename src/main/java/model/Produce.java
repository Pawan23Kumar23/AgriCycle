package model;

public class Produce {
    private int id;
    private String cropName;
    private double quantity;
    private double price;
    private String location;

    public Produce() {}

    public Produce(String cropName, double quantity, double price, String location) {
        this.cropName = cropName;
        this.quantity = quantity;
        this.price = price;
        this.location = location;
    }

    public Produce(int id, String cropName, double quantity, double price, String location) {
        this.id = id;
        this.cropName = cropName;
        this.quantity = quantity;
        this.price = price;
        this.location = location;
    }

    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getCropName() { return cropName; }
    public void setCropName(String cropName) { this.cropName = cropName; }

    public double getQuantity() { return quantity; }
    public void setQuantity(double quantity) { this.quantity = quantity; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }

    public String getLocation() { return location; }
    public void setLocation(String location) { this.location = location; }
}