package com.training.tags;

import java.util.*;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.Tag;
import javax.servlet.jsp.tagext.TagSupport;

public class ForEachTag extends TagSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String items;

	public ForEachTag() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void setItems(String items) {
		this.items = items;
	}

	@Override
	public int doStartTag() throws JspException {

		try {
			JspWriter out = pageContext.getOut();
			List<Object> nameList = (List<Object>) pageContext.findAttribute(items);
			if (nameList != null) {
				for (Object obj : nameList) {
					out.println(obj);
				}
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return Tag.SKIP_BODY;
	}

}
