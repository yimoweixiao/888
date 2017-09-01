package javax.xianfeng.test.predecode;

public class AntiException extends Exception

{

	public AntiException()

	{

	}

	public AntiException(String s)

	{

		super(s);

	}

	public AntiException(String s, Throwable throwable)

	{

		super(s);

//		AntiCrack.fake(this, throwable);

	}

}