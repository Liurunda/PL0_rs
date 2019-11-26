import java.util.BitSet;

/**
 * ���ǰ� java.util.BitSet ��װһ�£��Ա��ڱ�д����
 */
public class SymSet extends BitSet {

	/**
	 * �����û���ر����� 
	 */
	private static final long serialVersionUID = 8136959240158320958L;

	/**
	 * ����һ�����ż���
	 * @param nbits ������ϵ�����
	 */
	public SymSet(int nbits) {
		super(nbits);
	}

	/**
	 * ��һ�����ŷŵ�������
	 * @param s Ҫ���õķ���
	 */
	public void set(Symbol s) {
		set(s.ordinal());
	}
	
	/**
	 * ���һ�������Ƿ��ڼ�����
	 * @param s Ҫ���ķ���
	 * @return �������ڼ����У��򷵻�true�����򷵻�false
	 */
	public boolean get(Symbol s) {
		return get(s.ordinal());
	}
}
