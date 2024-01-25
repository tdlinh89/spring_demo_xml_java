// Set timeout page loader
$(function() {
	setTimeout(function () { $('.page-loader-wrapper').fadeOut(); }, 50);
});

$('#dataTable-listMember').dataTable({
	"ordering": false,
	//searching: false,
	lengthChange: false,
	pageLength: 10,
	bInfo : false,
});


// Date picker
$(function() {

	$('#fromDate').datepicker({
        format: 'dd/mm/yyyy',
        autoclose: true,
        todayHighlight: true
	});
	$('#toDate').datepicker({
        format: 'dd/mm/yyyy',
        autoclose: true,
        todayHighlight: true
	});
	$('#startTime').datepicker({
        format: 'dd/mm/yyyy',
        autoclose: true,
        todayHighlight: true
	});
	$('#endTime').datepicker({
        format: 'dd/mm/yyyy',
        autoclose: true,
        todayHighlight: true
	});
	$('#dateOfBirth').datepicker({
        format: 'dd/mm/yyyy',
        autoclose: true,
        todayHighlight: true
	});
});

//add active
$(function() {
	var loc = window.location.pathname;
    $('#sidebarAdmin').find('a').each(function() {
    	if ($(this).attr('href') == loc) {
    		$(this).parent().addClass('active');
    	}
    	if (loc.indexOf('employee') != -1) {
    		$('#employee-mana').addClass('active');
    	}
    	if (loc.indexOf('cinema-room') != -1) {
    		$('#cinema-mana').addClass('active');
    	}
    });
});

// Drop down hover
$('ul.nav li.dropdown').hover(function() {
    $(this).find('.dropdown-menu').stop(true, true).delay(100).fadeIn(500);
}, function() {
    $(this).find('.dropdown-menu').stop(true, true).delay(10).fadeOut(10);
});
