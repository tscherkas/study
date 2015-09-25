package org.fishingapp.models;
/**
 * 
 * @author tscherkas
 * Information about fish species, that can be fished 
 */
public class Fish {
	private int id;
	private String name;
	private String description;
	private double price;
	public Fish(){
		
	}
	@Override
	public String toString() {
		return "Fish [id=" + id + ", name=" + name + ", description=" + description + ", price=" + price + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
}
