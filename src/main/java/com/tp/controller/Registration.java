package com.tp.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tp.dto.Register;
import com.tp.exception.DuplicateEntryException;
import com.tp.service.impl.RegisterServiceImpl;


/** 
 * @author premkumar.bharti
 * @version 1.0
 * @since 2014-08-28
 */
@Controller
@RequestMapping("/register/*")
public class Registration {
	Logger log = Logger.getLogger(Registration.class);
	
	@Autowired
	private RegisterServiceImpl registerService;

	public RegisterServiceImpl getRegisterService() {
		return registerService;
	}

	public void setRegisterService(RegisterServiceImpl registerService) {
		this.registerService = registerService;
	}

	/**
	 * 
	 * @param userDetails
	 * @param request
	 * @return viewName
	 */
	@RequestMapping(value = "registration", method = RequestMethod.POST)
	public String registerUser(Register userDetails, HttpServletRequest request) {
		if (isRegistrationDataValid(userDetails)) {
			try {
				if (null == registerService) {
					log.info("RegisterService is null");
				}
				registerService.register(userDetails);
			} catch (DuplicateEntryException dee) {
				log.info("Duptlicate value found");
				return "error";
			}
			return "registerConfirmation";
		}
		return "error";
	}

	private boolean isRegistrationDataValid(Register userDetails) {
		return true;
	}
}
