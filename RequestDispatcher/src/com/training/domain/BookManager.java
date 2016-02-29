package com.training.domain;

import java.util.HashMap;

import com.training.entity.Book;

public class BookManager {

	private HashMap<Long, Book> bookList;

	public BookManager() {

		init();

	}

	private void init() {

		Book b1 = new Book(101, "Science", "ABC", 300);
		Book b2 = new Book(102, "Hindi", "XYZ", 10);
		Book b3 = new Book(103, "Engineering", "PQR", 500);
		HashMap<Long, Book> list = new HashMap<>();
		list.put(b1.getBookNumber(), b1);
		list.put(b2.getBookNumber(), b2);
		list.put(b3.getBookNumber(), b3);
		setBookList(list);

	}

	public HashMap<Long, Book> getBookList() {
		return bookList;
	}

	public void setBookList(HashMap<Long, Book> bookList) {
		this.bookList = bookList;
	}

	public HashMap<Long, Book> getAllBooks() {

		return bookList;
	}

	public Book findBookById(long id) {

		return bookList.get(id);
	}

}
