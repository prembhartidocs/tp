package com.tp.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tp.dto.Login;
import com.tp.service.impl.LoginServiceImpl;
import com.tp.vo.UserVO;

@Controller
@RequestMapping("/user/*")
public class UserLogin {
	private static final String USER = "user";
	public static final String REDIRECT_HOME = "redirect:/";

	@Autowired
	private LoginServiceImpl loginService;
	private HttpSession userSession;
	Logger log = Logger.getLogger(getClass());
	
	/** MessageResource */
	@Autowired
	private MessageSource messageSource;

	public HttpSession getUserSession() {
		return userSession;
	}

	public void setUserSession(HttpSession userSession) {
		this.userSession = userSession;
	}

	public LoginServiceImpl getLoginService() {
		return loginService;
	}

	public void setLoginService(LoginServiceImpl loginService) {
		this.loginService = loginService;
	}

	/**
	 * @param login
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(Login login, HttpServletRequest request, Model model) {
		UserVO user = loginService.getUserByNameAndPassword(login);
		if (null == user) {
			log.info(String.format("User :%s not found.", login.toString()));
			return "loginError";
		}
		setUserSession(request.getSession());
		getUserSession().setAttribute(USER, user);
		model.addAttribute(user);
		return REDIRECT_HOME;
	}

	public void setMessageSource(MessageSource messageSource) {
		this.messageSource = messageSource;
	}

	/**
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, Model model) {
		HttpSession session = getUserSession();
		UserVO user = (UserVO) session.getAttribute(USER);
		log.info(String.format("User: %s logged out.", user.toString()));
		session.removeAttribute(USER);
		session.invalidate();
		model.addAttribute("loggedOutMessage",
				messageSource.getMessage("logout", null, Locale.FRANCE));
		return "logout";
	}

}