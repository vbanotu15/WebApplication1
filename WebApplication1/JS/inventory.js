(function () {

	// nodes
	var $productType = $('#productClass');
	var $productSize = $('#productSize');
	var $productGrade = $('#productGrade');
	var $productLength = $('#productLength');
	var $selects = $('select');
	var $resultsContainer = $('[data-inventory-tables]');

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

	var getFilters = function()
	{
		var filters = {};

		$selects.each(function(){
			var $select = $(this);
			var filterName = $select.attr('name');
			var filterValue = $select.val();

			if( filterValue !== '' )
			{
				filters[filterName] = filterValue
			}
		});

		return filters;
	};

	var filterData = function()
	{
		var filters = getFilters();

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

		// if this function exists, call it to destroy any floatTHeads bound to existing tables
		if( typeof destroyFloatHeads === 'function' )
		{
			destroyFloatHeads();
		}

		// get data subset for current filters
		var filteredData = filterData();

		$resultsContainer.html(
			generateResults(filteredData)
		);

		if(typeof setupFloatHeads === 'function' )
		{
			setupFloatHeads();
		}
	});


	// bind
	$productType.on('--change', function()
	{
		filterData();
		var type = $productType.val();

		/*$productSize.html(
			getOptions(inventoryData[type])
		);*/

		typeData = getItemsByAttribute(inventoryData, 'type', type);

		$resultsContainer.html(
			generateResults(typeData)
		);

		// reset
		gradeData = [];
		/*$productGrade.html('');
		$productLength.html('');*/
	});

	$productSize.on('--change', function(){
		var type = $productType.val();
		var size = $productSize.val();

		/*$productGrade.html(
			getOptions(inventoryData[type][size])
		);*/

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

		/*$productLength.html(
			getOptions(inventoryData[type][size][grade])
		);*/

		gradeData = getItemsByAttribute(sizeData, 'size', size);

		$results.html(
			generateResults(gradeData)
		);


	});


})();