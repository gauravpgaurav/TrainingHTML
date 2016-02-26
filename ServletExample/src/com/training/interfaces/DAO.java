package com.training.interfaces;

import java.util.List;

public interface DAO<T> {

	public int add(T t);

	public T find(int key);

	public List<T> findAll();

	public int update(int key, String newString);

	public int delete(int key);
	
	public int deleteAll();

}