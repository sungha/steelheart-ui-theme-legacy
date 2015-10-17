/*!
 *
 */
"use strict";
require([ "jquery", "datatables-all" ], function($) {

	var table = $("#table1").DataTable({
	      scrollY:        "300px",
	        scrollX:        true,
	        scrollCollapse: true,
	        paging:         false,
	        ordering: false
	    } );
	 new $.fn.dataTable.FixedColumns( table, {
	        heightMatch: 'none'
	    } );

});
