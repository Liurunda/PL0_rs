/**
 *���������ֻ�ǰ����˱������Լ������������
 */
public class Err {
	/**
	 * ��������������������һ���ж��ٸ�����
	 */
	public static int err = 0;
	
	/**
	 * ������
	 * @param errcode ������
	 */
	public static void report(int errcode) {
		char[] s = new char[PL0.lex.cc-1];
		java.util.Arrays.fill(s, ' ');
		String space = new String(s);
		System.out.println("****" + space + "!" + errcode);
		PL0.fa1.println("****" + space + "!" + errcode);
		err ++;
	}
}
