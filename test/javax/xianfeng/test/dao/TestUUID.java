package javax.xianfeng.test.dao;

import javax.xianfeng.dao.UUIDCreator;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-21 上午01:19:40
 */
public class TestUUID {

	@Test
	public void getId() {
		System.out.println(UUIDCreator.newInstance().getId());
	}
}
