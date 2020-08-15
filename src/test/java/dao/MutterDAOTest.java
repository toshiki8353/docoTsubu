package dao;

import static org.hamcrest.CoreMatchers.*;
import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import model.Mutter;

public class MutterDAOTest {

	@Test
	public void findAllでツイートが返却される() {

		MutterDAO dao=new MutterDAO();
		List<Mutter> mutterList=new ArrayList<Mutter>();

		mutterList= dao.findAll();

		assertThat(mutterList.get(0).getId(),is(10));
		assertThat(mutterList.get(0).getUserName(),is("aaaa"));
		assertThat(mutterList.get(0).getText(),is("aaa"));

	}

}
