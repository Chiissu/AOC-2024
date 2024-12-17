class Main {
	static public function main():Void {
		var content:String = sys.io.File.getContent('input.txt');

		var match = ~/mul\(\d+,\d+\)/i;
		var match1 = ~/mul\(\d+,/i;
		var match2 = ~/,\d+\)/i;

		var res = 0;

		while (match.match(content)) {
			var pos = match.matchedPos();
			var matched_slice = content.substr(pos.pos, pos.len);
			match1.match(matched_slice);
			var pos1 = match1.matchedPos();
			var num1 = Std.parseInt(matched_slice.substr(pos1.pos + 4, pos1.len - 5));
			match2.match(matched_slice);
			var pos2 = match2.matchedPos();
			var num2 = Std.parseInt(matched_slice.substr(pos2.pos + 1, pos2.len - 2));

			res += num1 * num2;
			content = content.substr(pos.pos + pos.len);
		}

		trace(res);
	}
}
