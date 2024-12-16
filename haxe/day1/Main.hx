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

		listA.sort((a, b) -> a - b);
		listB.sort((a, b) -> a - b);

		var res = 0;
		for (i in 0...listA.length) {
			res += Math.round(Math.abs(listA[i] - listB[i]));
		}

		trace(res);
	}
}
