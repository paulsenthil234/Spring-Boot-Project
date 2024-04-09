package com.example.demo;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
@Entity //Connect the Model and Database
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) // This line is to set AutoIncrement(AI) option for DB table
	private int Id;
	private String Email; //To Pass the Data to the Database
	private String Password;
	public int getId() {
	return Id;
	}
	public void setId(int id) {
	Id = id;
	}
	public String getEmail() {
	return Email;
	}
	public void setEmail(String email) {
	Email = email;
	}
	public String getPassword() {
	return Password;
	}
	public void setPassword(String password) {
	Password = password;
	}
}
