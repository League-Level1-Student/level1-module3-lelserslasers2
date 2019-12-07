package _02_backpack;

public class BackpackRunner {
	public static void main(String[] args) {
		Backpack bapa = new Backpack();
		Pencil penc = new Pencil();
		Ruler rule = new Ruler();
		Textbook txtbo = new Textbook();
		bapa.putInBackpack(penc);
		bapa.putInBackpack(rule);
		bapa.putInBackpack(txtbo);
		bapa.packAndCheck();
		/* new Backpack().packAndCheck(); */
	}
}
