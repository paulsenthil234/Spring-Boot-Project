package com.example.demo;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
@Entity
public class ToDoTask {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String Task;
	private String Status;
	private int UserId;
	public int getUserId() {
	return UserId;
	}
	public void setUserId(int userId) {
	UserId = userId;
	}
	public int getId() {
	return id;
	}
	public void setId(int id) {
	this.id = id;
	}
	public String getTask() {
	return Task;
	}
	public void setTask(String task) {
	Task = task;
	}
	public String getStatus() {
	return Status;
	}
	public void setStatus(String status) {
	Status = status;
	}
	// @Override
	// public String toString() {
	// return "<tr><td>" + id + "</td><td>" + Task + "</td></tr>";
	// }
	//
}
