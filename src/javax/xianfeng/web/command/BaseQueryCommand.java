package javax.xianfeng.web.command;

import javax.xianfeng.core.model.DataSet;

/**
 * 通用查询Command类<br>
 * @author Programmer.Wenlong
 * @since 2012-4-30 上午09:05:43
 */
public abstract class BaseQueryCommand extends BaseCommand {

	/**
	 * 可执行方法
	 * @author Programmer.Wenlong
	 * @since 2012-4-30 下午08:31:55
	 * @return
	 */
	public abstract DataSet execute();

}
