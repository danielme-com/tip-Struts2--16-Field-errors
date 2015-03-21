package com.danielme.tips.struts2.tip16.actions;


import java.util.regex.Pattern;

import org.apache.commons.lang3.StringUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.validators.EmailValidator;


/**
 * 
 * @author danielme.com
 * 
 */
public class MainAction extends ActionSupport
{

	
	private static final long serialVersionUID = 2802437203672376154L;
	
	private static Pattern EMAIL_PATTERN =  Pattern.compile(EmailValidator.EMAIL_ADDRESS_PATTERN);
	
	private String name;
	
	public String email;
	
	public String submitForm()
	{		
		if (StringUtils.isBlank(name))
		{
			addFieldError("name", getText("error.name.required"));
		}
		else if (name.length() < 3)
		{
			addFieldError("name", getText("error.name.min"));
		}
		else if (name.length() > 6)
		{
			addFieldError("name", getText("error.name.max"));
		}
		if (!StringUtils.isEmpty(email) && !EMAIL_PATTERN.matcher(email).matches())
		{
			addFieldError("email", getText("error.name.email"));
		}
		return INPUT;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}	
}
