package com.training.test;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.training.domain.BookManager;

public class ManagerTest {

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void test() {

		BookManager b = new BookManager();
		System.out.println(b.getAllBooks());
	}

}
