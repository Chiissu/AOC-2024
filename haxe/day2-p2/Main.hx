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

			if (isGoodPermissive(nums))
				res++;
		}

		trace(res);
	}

	static function isGoodPermissive(list:Array<Int>):Bool {
		for (i in 0...list.length) {
			var listCp = list.copy();
			listCp.splice(i, 1);
			if (isGood(listCp)) {
				return true;
			}
		}
		return false;
	}

	static function isGood(list:Array<Int>):Bool {
		var increasing = list[list.length - 1] > list[0] ? -1 : 1;

		for (i in 0...list.length - 1) {
			var diff = list[i] - list[i + 1];
			diff *= increasing;

			if (3 < diff || 1 > diff) {
				return false;
			}
		}

		return true;
	}
}
