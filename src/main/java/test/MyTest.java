package test;

import java.util.Date;
import java.util.UUID;

import org.junit.Test;

public class MyTest {
@Test
public void test() {
	System.out.println(new Date().getTime());
	UUID randomUUID = UUID.randomUUID();
	System.out.println(randomUUID);
}
}
