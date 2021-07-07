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
		
		logger.info("Before 테스트입니다. 진입할 클래스 이름 : " + className + ", 실행될 메서드 : " + method);
		for (Object arg : args) {
			logger.info("진입할 클래스의 매개변수 : " + arg);
		}
	}

	@AfterReturning(pointcut = "pointcut()", returning = "returnObj")
	public void afterLog(JoinPoint joinPoint, Object returnObj) {
		String method = joinPoint.getSignature().getName();
		String temp = joinPoint.getTarget().toString();
		String temp2 = joinPoint.getThis().toString();
		logger.info("AfterReturning 테스트입니다 : method = " + method + "(), returnObj = " + returnObj + "이 친구는 뭐지? : " + temp + ", 또 얘는 뭐지? : " + temp2);
	}
}
