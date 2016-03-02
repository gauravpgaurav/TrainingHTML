package com.training.tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.Tag;
import javax.servlet.jsp.tagext.TagSupport;

public class GreetingTag extends TagSupport {

	private String userName;

	public GreetingTag() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public int doStartTag() throws JspException {

		try {

			JspWriter out = pageContext.getOut();

			if (userName != null) {

				out.println("<b>Welcome to Custom Tag Programming</b>" + userName);
			}

			else {
				out.println("<i>Dear Guest Welcome to Custom Tag Programming</i>");
			}

		} catch (Exception e) {

			System.out.println(e.getMessage());
		}
		return Tag.SKIP_BODY;
	}

}
