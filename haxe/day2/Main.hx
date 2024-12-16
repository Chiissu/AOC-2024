class Main {
	static public function main():Void {
		var content:String = sys.io.File.getContent('input.txt');

		var res = 0;

		for (line in content.split("\n")) {
			if (line == "")
				break;

			var nums = line.split(" ").map(function(s) {
				return Std.parseInt(s);
			});

			var increasing = nums[1] > nums[0] ? -1 : 1;

			var isGood = true;
			for (i in 0...nums.length - 1) {
				var diff = nums[i] - nums[i + 1];
				diff *= increasing;
				if (3 < diff || 1 > diff) {
					isGood = false;
					break;
				}
			}

			if (isGood)
				res++;
		}

		trace(res);
	}
}
