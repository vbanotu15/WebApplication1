function openLightbox (src, options)
{
	var settings = {
		'items': {
			'src': src
		},
		'type': 'ajax',
		'closeOnBgClick': false,
		'enableEscapeKey': true,
		'alignTop': false,
		'callbacks': {
			'open': function() {},
			'close': function() {}
		}
	};

	if( options )
	{
		settings = $.extend(settings, options);
	}

	$.magnificPopup.open(settings);
}

function closeLightbox()
{
	$.magnificPopup.close();
}

function getFloatHeads()
{
	var $floatHeads = $([]);

	$('table.data').each(function ()
	{
		var $table = $(this);

		// only initialize this plugin on tables with more than 20 rows
		if ($table.find('tr').length > 20) {
			$floatHeads = $floatHeads.add($table);
		}
	});

	return $floatHeads;
}

function setupFloatHeads()
{
	// promote to global so they can be reached outside this closure
	window.$floatHeads = getFloatHeads();

	window.$floatHeads.each(function(index){
		var $table = $floatHeads.eq(index);
		$table.data('reinit', $table.floatThead());
	});
}

function destroyFloatHeads()
{
	window.$floatHeads.each(function(index){
		var $table = $floatHeads.eq(index);
		$table.floatThead('destroy');
	});
}


$(function(){

	var $receivingLocationsWrapper = $('#receiving-locations').find('.wrapper');

	$('#showLocations').on('click', function (e)
	{
		e.preventDefault();

		if( $receivingLocationsWrapper.hasClass('expanded') )
		{
			$receivingLocationsWrapper.animate({'height': 0}, 500, function(){
				$receivingLocationsWrapper.removeClass('expanded');
			});
		}
		else {
			$receivingLocationsWrapper.css('height', 'auto');
			var height = $receivingLocationsWrapper.outerHeight();
			$receivingLocationsWrapper.css('height', 0);
			$receivingLocationsWrapper.animate({'height': height}, 500, function(){
				$receivingLocationsWrapper.toggleClass('expanded');
			});
		}
	});

	$('.mobilebutton').on('click', function(){
		$(this).parent().toggleClass('expanded');
	});

	if($.fn.tablesorter)
	{
		$("table.data").each(function(){
			var $table = $(this);
			// if this table has more than 20 rows, make it sortable
			if( $table.find('tbody').find('tr').length > 20)
			{
				$table.tablesorter();
			}
		});

	}

	setupFloatHeads();

	enquire.register('screen and (max-width:800px)', {
		'match': function(){
			destroyFloatHeads();
		},
		'unmatch': function(){
			setupFloatHeads();
		}
	});

	$('select[name="CustomerNum"]').on('change.switchCompany', function(){
		$(this).parents('form').submit();

	});


});