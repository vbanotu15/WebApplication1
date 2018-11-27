(function () {

	// nodes
	var $productType = $('#productClass');
	var $productSize = $('#productSize');
	var $productGrade = $('#productGrade');
	var $productLength = $('#productLength');
	var $selects = $('#filter-wrapper').find('select');
	var $resultsContainer = $('[data-inventory-tables]');

	var $filterRoot = $('#filter-root');

	var $filterListLink = $filterRoot.find('a');
	var $saveFilterPanel = $('#save-filter-panel');
	var $saveFilterButton = $('#saveFilterBtn');
	var $filterName = $('#filterName');
	var $restoreFitler = $('#restoreFilter');

	// string templates
	var optionTemplate = '<option value="{VAL}">{TEXT}</option>';
	var tableRowRowspan = '	<td>{TYPE}</td>';

	var typeHeader = '<h4>{TYPE}</h4>';

	var tableRow =  '<tr>' +
				    //'	{rowspan}' +
					'	<td>{SIZE}</td>' +
					'	<td{GRADE_CLASS}>{GRADE}</td>' +
					'	<td>{LENGTHINFEET}</td>' +
					'	<td>{SECTIONSINBUNDLE}</td>' +
					'	<td>{BUNDLEWEIGHT}</td>' +
					'	<td>{BUNDLESUNSOLD}</td>' +
					'	<td>{PRICECWT}</td>' +
					'	<td>{NEXTROLLDATE}</td>' +
					'</tr>';

	var tableHeader = '<thead>' +
					  '	<tr>' +
					  '		<th>Size</th>' +
					  '		<th>Grade</th>' +
					  '		<th>Length</th>' +
					  '		<th>Pieces Per Bundle</th>' +
					  '		<th>Bundle Weight (t)</th>' +
					  '		<th>Bundle Available</th>' +
					  '		<th>Price/cwt</th>' +
					  '		<th>Next Roll&nbsp;Week</th>' +
					  '	</tr>' +
					  '	</thead>';

	var tableWrapper = '<div class="table-section">' +
		               '	<div class="table-container">' +
					   '		<table class="data">{ROWS}</table>' +
					   '	</div>' +
					   '</div>';

	// data
	var typeData = [];
	var sizeData = [];
	var gradeData = [];

	var filteredData;

	var isEmpty = function(obj) {

		// null and undefined are "empty"
		if (obj == null) return true;

		// Assume if it has a length property with a non-zero value
		// that that property is correct.
		if (obj.length > 0)    return false;
		if (obj.length === 0)  return true;

		// If it isn't an object at this point
		// it is empty, but it can't be anything *but* empty
		// Is it empty?  Depends on your application.
		if (typeof obj !== "object") return true;

		// Otherwise, does it have any properties of its own?
		// Note that this doesn't handle
		// toString and valueOf enumeration bugs in IE < 9
		for (var key in obj) {
			if (obj.hasOwnProperty(key)) return false;
		}
		return true;
	};

	var getUserFilters = function ()
	{
		var userFilters = Cookies.get('SDI_FILTERS');
		return userFilters ? JSON.parse(userFilters) : {};
	};

	var saveFilter = function(filterName)
	{
		var userFilters = getUserFilters();
		var activeFilters = getFilters();

		if( userFilters[filterName] )
		{
			alert('You already have a filter saved with this name. Please choose a unique name.');
		}
		else
		{
			if( isEmpty(activeFilters) )
			{
				alert('There are no active filters set. Please choose at least one filter.');
			}
			else
			{
				var option = optionTemplate.replace('{VAL}', filterName).replace('{TEXT}', filterName);
				userFilters[filterName] = activeFilters;
				Cookies.set('SDI_FILTERS', JSON.stringify(userFilters), { 'expires': 365, 'path': '' });
				$restoreFitler.append(option).removeClass('hidden');
				closeLightbox();
			}
		}
	};

	var getFilters = function()
	{
		var filters = {};

		$selects.each(function(){
			var $select = $(this);
			var filterName = $select.attr('name');
			var filterValue = $select.val();

			if( filterValue !== '' )
			{
				filters[filterName] = filterValue;
			}
		});

		return filters;
	};

	var filterData = function(filters)
	{
		var inventoryItem = {};
		var i, l;
		var matched = true;

		var filteredData = {};

		// all the inventory
		for(i= 0, l=inventory.length; i<l; i++)
		{
			// assume it matches until otherwise determined
			matched = true;

			// current inventory item
			inventoryItem = inventory[i];

			// iterate each of the applied filters
			for(var filter in filters)
			{
				var inventoryItemFilterValue = inventoryItem[filter];
				var filterFilterValue = filters[filter];

				// if this item does NOT match an applied filter, disqualify it
				//if( inventoryItem[filters[filter]] !== filterValue)
				if( inventoryItemFilterValue != filterFilterValue ) // important not to do strict comparison here since int values will be strings from API
				{
					matched = false;
				}
			}

			// if this item didn't fail any of the applied filters, add it to filteredData
			if( matched )
			{
				// identify item type/class
				var type = inventoryItem.Class;

				// ensure a property for this type/class exists in the return d ata
				if( !filteredData[type] )
				{
					filteredData[type] = [];
				}

				// add this item, by class/type
				filteredData[type].push(inventoryItem);
			}
		}

		return filteredData;
	};

	// functions
	var getOption = function (val, text)
	{
		return optionTemplate.replace('{val}', val).replace('{text}', text);
	};

	var getOptions = function(data)
	{
		var options = getOption('', 'Select');

		for(var option in data)
		{
			options += getOption(option, option);
		}

		return options;
	};

	var getItemsByAttribute = function(data, attr, value)
	{
		var matches = [];
		for(var item in data)
		{
			if( data[item][attr] === value )
			{
				matches.push(data[item]);
			}
		}
		return matches;
	};

	var applyValues = function(tpl, data)
	{
		var template = tpl;
		for(var field in data)
		{
			var token = '{' + field.toUpperCase() + '}';
			template = template.replace(token, data[field]);
		}
		return template;
	};

	// TODO
	// buildSavedFilterBar
	var buildSavedFilterBar = function()
	{
		var userFilters = Cookies.get('SDI_FILTERS');
		if( userFilters )
		{
			userFilters = JSON.parse(userFilters);
			var options = '';

			for(var filter in userFilters)
			{
				options += '<option value="' + filter + '">' + filter + '</option>';
			}

			$restoreFitler.append(options).removeClass('hidden');;
			$filterRoot.removeClass('hidden');
		}
		// get filters from cookies
		// generate a <select>
	};

	var restoreSavedFilter = function (filter)
	{
		var userFilters = getUserFilters();
		if( userFilters[filter] )
		{
			$selects.each(function(){
				this.selectedIndex = 0;
			});

			var filterData = userFilters[filter];
			var $filterSelect = null;
			var savedFilterValue = '';
			for(var filter in filterData)
			{
				$filterSelect = $('#product' + filter);
				savedFilterValue = filterData[filter];

				$filterSelect.find('option[value="' + savedFilterValue + '"]').prop('selected', true);
			}

			//console.log(filterData);

			renderFilteredView();
		}
	};

	var renderFilteredView = function()
	{
		// if this function exists, call it to destroy any floatTHeads bound to existing tables
		if( typeof destroyFloatHeads === 'function' )
		{
			destroyFloatHeads();
		}

		// get data subset for current filters
		var filters = getFilters();

		var filteredData = filterData(filters);

		if( !isEmpty(filters))
		{
			$filterRoot.removeClass('hidden');
		}
		else
		{
			$filterRoot.addClass('hidden');
		}

		$resultsContainer.html(
			generateResults(filteredData)
		);

		if(typeof setupFloatHeads === 'function' )
		{
			setupFloatHeads();
		}
	};

	var generateResults = function(data)
	{
		var html = '';
		var typeHtml = '';
		var rowHtml = '';
		var rowData = null;
		var typeRowsHtml = '';

		var typeName = null;
		var type = null;

		// iterate collection of "type"s
		for( typeName in data )
		{
			// data for this particular type
			type = data[typeName];

			// type header
			html += typeHeader.replace('{TYPE}', typeName);

			// all the rows for this type
			typeRowsHtml = '';

			// iterate all the items in tyis type
			for( var i= 0, l=type.length; i<l; i++)
			{
				rowData = type[i];

				// individual row of data/html
				rowHtml = applyValues(tableRow, rowData);

				// apply "red" class for a992
				if( rowData.Grade === 'A992' )
				{
					rowHtml = rowHtml.replace('{GRADE_CLASS}', ' class="red"')
				} else {
					rowHtml = rowHtml.replace('{GRADE_CLASS}', '');
				}

				// add this row to the overall table html
				typeRowsHtml += rowHtml;
			}

			// add all rows to the return string
			html += tableWrapper.replace('{ROWS}', tableHeader + typeRowsHtml);

		}

		return html;
	};

	$selects.on('change', function(){
		renderFilteredView();
	});

	$filterListLink.on('click', function(e){
		e.preventDefault();

		openLightbox($saveFilterPanel, {
			'type': 'inline'
		});
	});

	$saveFilterButton.on('click', function ()
	{
		var filterName = $filterName.val();

		if( filterName === '' )
		{
			alert("Please indicate a name for this filter");
			return false;
		}

		saveFilter(filterName)
	});

	$restoreFitler.on('change', function(){
		restoreSavedFilter($(this).val());
	});

	// show filter bar, if user has saved filters
	buildSavedFilterBar();

	/*// bind
	$productType.on('--change', function()
	{
		filterData();
		var type = $productType.val();

		/!*$productSize.html(
			getOptions(inventoryData[type])
		);*!/

		typeData = getItemsByAttribute(inventoryData, 'type', type);

		$resultsContainer.html(
			generateResults(typeData)
		);

		// reset
		gradeData = [];
		/!*$productGrade.html('');
		$productLength.html('');*!/
	});

	$productSize.on('--change', function(){
		var type = $productType.val();
		var size = $productSize.val();

		/!*$productGrade.html(
			getOptions(inventoryData[type][size])
		);*!/

		sizeData = getItemsByAttribute(typeData, 'size', size);

		$resultsContainer.html(
			generateResults(sizeData)
		);

		// reset
		gradeData = [];
		//$productLength.html('');
	});

	$productGrade.on('--change', function(){
		var type = $productType.val();
		var size = $productSize.val();
		var grade = $productGrade.val();

		/!*$productLength.html(
			getOptions(inventoryData[type][size][grade])
		);*!/

		gradeData = getItemsByAttribute(sizeData, 'size', size);

		$results.html(
			generateResults(gradeData)
		);


	});*/


})();