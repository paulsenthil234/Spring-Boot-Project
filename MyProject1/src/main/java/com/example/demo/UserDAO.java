package com.example.demo;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
public interface UserDAO extends CrudRepository<User, Integer> {
}