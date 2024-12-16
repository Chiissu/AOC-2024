class Main {
	static public function main():Void {
		var listA:Array<Int> = [];
		var listB:Array<Int> = [];
		var content:String = sys.io.File.getContent('input.txt');

		for (line in content.split("\n")) {
			if (line == "")
				break;
			var nums = line.split("   ");
			listA.push(Std.parseInt(nums[0]));
			listB.push(Std.parseInt(nums[1]));
		}

		var res = 0;
		for (a in listA) {
			for (b in listB) {
				if (a == b)
					res += a;
			}
		}

		trace(res);
	}
}
