package kr.ac.paprika.boot.aop;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

@Service
@Aspect
public class ControllerAdvice {
	Logger logger = LogManager.getLogger(ControllerAdvice.class);

	@Pointcut("execution(* kr.ac.paprika.boot.mvc..*.*(..))")
	public void pointcut() {

	}
	
	@Before("pointcut()")
	public void beforeLog(JoinPoint joinPoint) {
		String className = joinPoint.getThis().toString();
		String method = joinPoint.getSignature().getName();
		Object[] args = joinPoint.getArgs();
		
		logger.info("Before : " + className + ", " + method + "()");
		for (Object arg : args) {
			logger.info("Arguments : " + arg);
		}
	}

	@AfterReturning(pointcut = "pointcut()", returning = "returnObj")
	public void afterLog(JoinPoint joinPoint, Object returnObj) {
		String method = joinPoint.getSignature().getName();
		String className = joinPoint.getThis().toString();
		logger.info("AfterReturning : " + className + ", " + method + "(), returnObj = " + returnObj);
	}
}
