/*!
 *
 */
"use strict";
require([ "jquery", "datatables-all" ], function($) {

	var table1 = $("#table1").DataTable({
		paging: false,
		searching: false,
		info: false,
	    scrollY: 200,
	    scrollX: true,
        scrollCollapse: false
	});
	
	var lastIdx = null;
	$("#table1 tbody")
		.on( 'mouseover', 'td', function () {
			var colIdx = table1.cell(this).index().column;

			if ( colIdx !== lastIdx ) {
				$( table1.cells().nodes() ).removeClass( 'highlight' );
				$( table1.column( colIdx ).nodes() ).addClass( 'highlight' );
			}
		} )
		.on( 'mouseleave', function () {
			$( table1.cells().nodes() ).removeClass( 'highlight' );
		} );	

	
	var dt2 = $("#table2").DataTable({
        serverSide: true,
        ordering: false,
        searching: false,
        ajax: function ( data, callback, settings ) {
            var out = [];
 
            for ( var i=data.start, ien=data.start+data.length ; i<ien ; i++ ) {
                out.push( [ i+'-1', i+'-2', i+'-3', i+'-4', i+'-5' ] );
            }
 
            setTimeout( function () {
                callback( {
                    draw: data.draw,
                    data: out,
                    recordsTotal: 5000000,
                    recordsFiltered: 5000000
                } );
            }, 50 );
        },
        dom: "rtiS",
        scrollY: 200,
        scrollX: true,        
        scroller: {
            loadingIndicator: true
        },		
        scrollCollapse: true,
		deferRender: true,
		language: {
/*			url: ctx + "/lib/datatables-plugins/i18n/Korean.lang"*/
/*			url: ctx + "/js/i18n/datatables-ko.json"*/
			
			info: "_START_ - _END_ / _TOTAL_"
		},
        stateSave: true        
	});
	
	new $.fn.dataTable.FixedColumns(dt2);
	new $.fn.dataTable.ColReorder(dt2);	

});
