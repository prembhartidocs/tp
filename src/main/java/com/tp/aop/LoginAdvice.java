package com.tp.aop;

import java.util.Arrays;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public class LoginAdvice {
	Logger log = Logger.getLogger(LoginAdvice.class);

	@Before("execution(* com.tp.service.impl.LoginServiceImpl.getUserByNameAndPassword(..))")
	public void showLoginInfo(JoinPoint joinPoint) {
		log.info("Before Method: " + joinPoint.getSignature());
		log.info("Login Details: " + Arrays.toString(joinPoint.getArgs()));
	}

	@AfterReturning(pointcut = "execution(* com.tp.service.impl.LoginServiceImpl.getUserByNameAndPassword(..))", returning = "result")
	public void checkReturnedUser(JoinPoint joinPoint, Object result) {
		if (null == result) {
			log.info(Arrays.toString(joinPoint.getArgs())
					+ " User doesn't Exist in Database.");
		}
	}
}