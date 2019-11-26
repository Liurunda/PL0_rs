/**
 * �������ͣ�Ϊ�����Java�Ĺؼ���Object��ͻ�����Ǹĳ�Objekt
 */
enum Objekt {
	constant, variable, procedure
}

/**
 *����������װ��PL/0�������ķ��ű�C���԰汾�йؼ���ȫ�ֱ���tx��table[]�������
 */
public class Table {
	/**
	 *������C���԰汾�е�tablestruct�ṹ��
	 */
	public class Item {
		String name;		// ����
		Objekt kind;		// ���ͣ�const, var or procedure
		int val;			// ��ֵ����constʹ��
		int level;			// �����㣬var��procedureʹ��
		int adr;			// ��ַ��var��procedureʹ��
		int size;			// ��Ҫ������������ռ�, ��procedureʹ��
	}
	
	/**
	 * ���ֱ���ʹ��get()��������
	 * @see #get(int)
	 */
	private Item[] table = new Item[PL0.txmax];
	
	/**
	 * ��ǰ���ֱ���ָ�룬Ҳ�������Ϊ��ǰ��Ч�����ֱ��С��table size��
	 */
	public int tx = 0;
	
	/**
	 * ������ֱ�ĳһ�������
	 * @param i ���ֱ��е�λ��
	 * @return ���ֱ�� i �������
	 */
	public Item get(int i) {
		if (table[i] == null) {
			table[i] = new Item();
			table[i].name = "";
		}
		return table[i];
	}
	
	/**
	 * ��ĳ�����ŵ�½�����ֱ��У�ע�������C���԰汾��ͬ
	 * @param k   �÷��ŵ����ͣ�const, var, procedure
	 * @param lev �������ڵĲ��
	 * @param dx  ��ǰӦ����ı�������Ե�ַ��ע�����enter()��dxҪ��һ
	 */
	public void enter(Objekt k, int lev, int dx) {
		tx ++;
		Item item = get(tx);
		item.name = PL0.lex.id;			// ע��id��num���ǴӴʷ����������
		item.kind = k;
		switch (k) {
		case constant:					// ��������
			if (PL0.lex.num > PL0.amax) {
				Err.report(31);		// ���ֹ������
				item.val = 0;
			} else {
				item.val = PL0.lex.num;
			}
			break;
		case variable:					// �������� 
			item.level = lev;
			item.adr = dx;
			break;
		case procedure:					// ��������
			item.level = lev;
			break;
		}
	}
	
	/**
	 * ��ӡ���ű����ݣ�ժ��C���԰汾�� block() ������
	 * @param start ��ǰ��������ű���������
	 */
	public void debugTable(int start) {
		if (!PL0.tableswitch)
			return;
		System.out.println("TABLE:");
		if (start >= tx)
			System.out.println("    NULL");
		for (int i=start+1; i<= tx; i++) {
			String msg = "OOPS! UNKNOWN TABLE ITEM!";
			switch (table[i].kind) {
			case constant:
				msg = "    " + i + " const " + table[i].name + " val=" + table[i].val;
				break;
			case variable:
				msg = "    " + i + " var   " + table[i].name + " lev=" + table[i].level + " addr=" + table[i].adr;
				break;
			case procedure:
				msg = "    " + i + " proc  " + table[i].name + " lev=" + table[i].level + " addr=" + table[i].adr + " size=" + table[i].size;
				break;
			}
			System.out.println(msg);
			PL0.fas.println(msg);
		}
		System.out.println();
	}

	/**
	 * �����ֱ��в���ĳ�����ֵ�λ��
	 * @param idt Ҫ���ҵ�����
	 * @return ����ҵ��򷵻���������±꣬���򷵻�0
	 */
	public int position(String idt) {
		for (int i = tx; i > 0; i--)
			if (get(i).name.equals(idt))
				return i;
		
		return 0;
	}
}
