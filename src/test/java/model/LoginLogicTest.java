package model;

import static org.junit.Assert.*;

import org.junit.Test;

public class LoginLogicTest {

	@Test
	public void test_execute() {

		LoginLogic loginLogic = new LoginLogic();
		User user1 = new User("abcd", "1234");
		User user2 = new User("abcd", "123");

		assertTrue(loginLogic.execute(user1));
		assertFalse(loginLogic.execute(user2));

	}

}
