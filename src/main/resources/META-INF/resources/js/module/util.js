/*!
 * 공용 유틸 함수 모음
 */
"use strict";

define(["jquery"], function($) {


	return {


		param: function(key, value) {
			if (!window.params) {
				window.params = {};

				var seg = window.location.search.replace(/^.*\?/,"").split("&"), len=seg.length;
				for (var i=0; i<len; i++) {
					if (!seg[i]) { continue; }
					var s = seg[i].split("=");
					window.params[s[0]] = s[1];
				}
			}

			if (key) {
				if (value) {
					window.params[key] = value;
				}
				else {
					return window.params[key];
				}
			}
			else {
				return window.params;
			}
		},


		json: function(url) {
			return $.ajax({
				url : url,
				dataType : "json",
				cache : false
			}).pipe(function(json) {
				return json;
			});
		},


		post: function(url, data) {
			return $.ajax({
				url: url,
				type: "POST",
				processData: false,
				contentType: "application/json",
				data: JSON.stringify(data)
			}).pipe(function(json) {
				return json;
			});
		},


		format: function(timestamp, format) {
			var date = new Date(timestamp);
			var fmt = format || "yy/MM/dd hh:mm:ss";

			return $.trim(fmt.replace(/(?:yy(yy)?|MM?|dd?|hh?|mm?|ss?)/g, function(match) {
				switch (match) {
					case "yyyy": return date.getFullYear();
					case "yy": return ("" + date.getFullYear()).slice(-2);
					case "MM": return ("0" + (date.getMonth()+1)).slice(-2);
					case "M": return date.getMonth()+1;
					case "dd": return ("0" + date.getDate()).slice(-2);
					case "d": return date.getDate();

					case "hh": return ("0" + date.getHours()).slice(-2);
					case "h":  return date.getHours();
					case "mm": return ("0" + date.getMinutes()).slice(-2);
					case "m":  return date.getMinutes();
					case "ss": return ("0" + date.getSeconds()).slice(-2);
					case "s":  return date.getSeconds();

					default: return "";
				}
			}));
		},


		commify: function(number) {
			var reg = /(^[+-]?\d+)(\d{3})/;
			var n = "" + number;

			while (reg.test(n))
				n = n.replace(reg, "$1" + "," + "$2");

			return n;
		}

	};

});



