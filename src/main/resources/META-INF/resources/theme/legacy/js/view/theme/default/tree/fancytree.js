/*!
 *
 */
"use strict";
require([ "jquery", "fancytree" ], function($) {

	$("#tree1").fancytree({
		checkbox: true,
		selectMode: 2,
		source: $.ajax({
			url: ctx + "/js/view/theme/default/tree/fancytree-source.json",
			dataType: "json"
		}),
		lazyLoad: function(event, data) {
			data.result = $.ajax({
				url: ctx + "/js/view/theme/default/tree/fancytree-lazyload.json",
				dataType: "json"
			});
		}
	});

	$("#tree2").fancytree({
		extensions: [ "table", "glyph" ],
		checkbox: true,
		selectMode: 2,
		toggleEffect: { effect: "drop", options: {direction: "left"}, duration: 400 },
		glyph: {
			map: {
				doc: "fa fa-file-o",
				docOpen: "fa fa-file-o",
				checkbox: "fa fa-square-o",
				checkboxSelected: "fa fa-check-square-o",
				checkboxUnknown: "fa fa-square",
				dragHelper: "fa arrow-right",
				dropMarker: "fa long-arrow-right",
				error: "fa fa-warning",
				expanderClosed: "fa fa-caret-right",
				expanderLazy: "fa fa-angle-right",
				expanderOpen: "fa fa-caret-down",
				folder: "fa fa-folder-o",
				folderOpen: "fa fa-folder-open-o",
				loading: "fa fa-spinner fa-pulse"
			}
		},
		source: $.ajax({
			url: ctx + "/js/view/theme/default/tree/fancytree-source.json",
			dataType: "json"
		}),
		lazyLoad: function(event, data) {
			data.result = $.ajax({
				url: ctx + "/js/view/theme/default/tree/fancytree-lazyload.json",
				dataType: "json"
			});
		}
	});


});
