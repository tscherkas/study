package org.fishingapp.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 
 * @author tscherkas
 * Information about fish species, that can be fished 
 */
@Entity
@Table(name="CFish")
public class Fish {
	public Fish(String name, String description, double price) {
		super();
		this.id = 0;
		this.name = name;
		this.description = description;
		this.price = price;
	}
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
	@Id
	@GenericGenerator(name="kaugen" , strategy="increment")
	@GeneratedValue(generator="kaugen")
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

	@Column(length = 500)
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
