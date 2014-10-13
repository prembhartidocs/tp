package com.tp.aop;

import java.util.Arrays;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public class RegisterAdvice {
	Logger log = Logger.getLogger(RegisterAdvice.class);

	@Before("execution(* com.tp.service.impl.RegisterServiceImpl.registerUser(..))")
	public void showLoginInfo(JoinPoint joinPoint) {
		log.info("Before Method: " + joinPoint.getSignature());
		log.info("Login Details: " + Arrays.toString(joinPoint.getArgs()));
	}
}
