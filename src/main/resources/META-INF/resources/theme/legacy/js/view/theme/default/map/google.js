/*!
 *
 */
"use strict";
require([ "jquery" ], function($) {

	require([ "async!https://maps.googleapis.com/maps/api/js?sensor=false&language=" + $("html").attr("lang") ], function() {

		var home = new google.maps.LatLng(37.5215, 126.8930), office = new google.maps.LatLng(37.5203, 126.8901);

		var map = new google.maps.Map($("#map").get(0), {
			center : home,
			zoom : 15,
			scrollwheel: false,
			navigationControl: false,
			mapTypeControl: false,
			scaleControl: true,
			draggable: true,
			mapTypeControlOptions : {
				mapTypeIds : [ google.maps.MapTypeId.ROADMAP ]
			}
		});

		new google.maps.Marker({
			map : map,
			draggable : false,
			animation : google.maps.Animation.DROP,
			position : home,
			title: "HOME"
		});


		$(window).on("resize", function() {
			window.setTimeout(function() {
				map.panTo(home, 100);
			});
		});

	});
	
});
