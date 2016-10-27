package com.momolela.test;

public class TtestData {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
			for(int i = 7;i<500;i++){
				String ha= ", {"+
						"                    'id': '"+i+"',"+
						"                    'parentid': '1',"+
						"                    'text': 'Peppermint Hot Chocolate',"+
						"                    'value': '$2.3'"+
						"                }";
				System.out.println(ha);
			}

	}

}
