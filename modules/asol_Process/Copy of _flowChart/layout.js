// BEGIN - Class ValidTarget

function ValidTargetNode(targetNode) {

	this.id;
	this.type;
	this.isValidTargetNode;

	this.init(targetNode);
}

ValidTargetNode.prototype.setId = function(id) {
	this.id = id;
};

ValidTargetNode.prototype.setType = function(type) {
	this.type = type;
};

ValidTargetNode.prototype.setIsValidTargetNode = function(isValidTargetNode) {
	this.isValidTargetNode = isValidTargetNode;
};

ValidTargetNode.prototype.getId = function() {
	return this.id;
};

ValidTargetNode.prototype.getType = function() {
	return this.type;
};

ValidTargetNode.prototype.getIsValidTargetNode = function() {
	return this.isValidTargetNode;
};

ValidTargetNode.prototype.init = function(targetNode) {

	if (targetNode.closest('.activity_symbol').length) {
		this.setType('activity');
	} else if (targetNode.closest('.event_symbol').length) {
		this.setType('event');
	} else if (targetNode.closest('.process').length) {
		this.setType('process');
	} else {
		this.setType(null);
	}

	switch (this.getType()) {
	case 'process':
		this.setId(targetNode.closest('.process').attr('link_id'));
		break;
	case 'event':
		this.setId(targetNode.closest('.event_symbol').attr('id'));
		break;
	case 'activity':
		this.setId(targetNode.closest('.activity_symbol').attr('id'));
		break;
	}

};

// END - Class ValidTarget

// BEGIN - Class DraggedNode

function DraggedNode(id, type) {
	this.id;
	this.type;
}

DraggedNode.prototype.getId = function() {
	return this.id;
};

DraggedNode.prototype.getType = function() {
	return this.type;
};

// END - Class DraggedNode

function drop_finish(data) {
	console.log('drop_finish(data)');
	console.dir(arguments);

	var draggedNode = $(data.o);
	var targetNode = $(data.r);

	var draggedNodeType = draggedNode.parent().parent().attr("id");

	var validTargetNode = new ValidTargetNode(targetNode);

	createObjectAndRelationship(draggedNodeType, draggedNode.attr("id"), validTargetNode.getType(), validTargetNode.getId());
}

function drop_check(data) {
	console.log('drop_check(data)');
	console.dir(arguments);

	var draggedNode = $(data.o);
	var targetNode = $(data.r);

	var draggedNodeType = draggedNode.parent().parent().attr("id");
	console.log('draggedNodeType=[' + draggedNodeType + ']');

	var validTargetNode = new ValidTargetNode(targetNode);

	switch (draggedNodeType) {

	case 'events':

		switch (validTargetNode.getType()) {
		case 'process':
			validTargetNode.setIsValidTargetNode(true);
			break;
		default:
			validTargetNode.setIsValidTargetNode(false);
			break;
		}

		break;

	case 'activities':

		switch (validTargetNode.getType()) {
		case 'activity':
		case 'event':
			validTargetNode.setIsValidTargetNode(true);
			break;
		default:
			validTargetNode.setIsValidTargetNode(false);
			break;
		}

		break;

	case 'tasks':

		switch (validTargetNode.getType()) {
		case 'activity':
			validTargetNode.setIsValidTargetNode(true);
			break;
		default:
			validTargetNode.setIsValidTargetNode(false);
			break;
		}

		break;

	default:
		validTargetNode.setIsValidTargetNode(false);
		break;
	}

	console.log(validTargetNode);

	return validTargetNode.getIsValidTargetNode();
}

function createObjectAndRelationship(draggedNodeType, draggedNodeId, targetNodeModule, targetNodeId) {
	console.log('createObjectAndRelationship(draggedNodeType, draggedNodeId, targetNodeModule, targetNodeId)');
	console.dir(arguments);

	var connectionError = false;

	try {

		$.ajax(site_url + "/index.php?entryPoint=" + entryPoint, {
			async : true,
			dataType : "json",
			type : "POST",
			data : {
				action : 'createObjectAndRelationship',
				draggedNodeType : draggedNodeType,
				draggedNodeId : draggedNodeId,
				targetNodeModule : targetNodeModule,
				targetNodeId : targetNodeId
			},
			beforeSend : function() {
				blockUI_type('save');
			},
			success : function(response) {

				if (response.ok) {
					console.log('createObjectAndRelationship: success -> response.ok==true');
					loadFlowChart(false);
				} else {
					alert('createObjectAndRelationship: success -> response.ok==false');
				}
			},
			error : function(xhr, errorType, exception) { // Triggered if an error communicating with server

				var errorMessage = exception || xhr.statusText; // If exception null, then default to xhr.statusText
				console.error("createObjectAndRelationship: error -> " + errorMessage);

				throw new ConnectionError();
			},
			complete : function(response) {
			}
		});

	} catch (exception) {
		if (exception instanceof ConnectionError) {
			connectionError = true;
			alert(exception);
		} else {
			throw exception;
		}
	} finally {
		return connectionError;
	}

}

// BEGIN - Class ConnectionError
function ConnectionError(message) {
	this.name = "ConnectionError";
	this.message = (message || "You are offline.");
}

ConnectionError.prototype = new Error();
ConnectionError.prototype.constructor = ConnectionError;
// END - Class ConnectionError

// BEGIN - blockUI

var message_load = "Loading...";
var message_clear = "Clearing...";
var message_save = "Saving...";
var message_import = "Importing...";
var message_publish = "Publishing...";
var message_createBaseline = "Creating Baseline...";
var image_loading = "modules/asol_Process/___common_WFM/plugins_js_css_images/jquery.blockUI/blockUI_loading.gif";
var message_blocked = "Action not allowed.";
var image_blocked = "blockUI_blocked.gif";
var message_undo = "Undoing...";
var message_redo = "Redoing...";

function blockUI(image, message, blockUI_cursor_type) {

	var aux_message = "" + "<table id='blockUI_table'>" + "<tr>" + "<td>" + "<img id='blockUI_image' src='" + image + "'/>" + "</td>" + "</tr>" + "<tr>" + "<td>" + "<h2 id='blockUI_message'>" + message + "</h2>" + "</td>" + "</tr>" + "</table>";

	var v = $.blockUI({
		message : aux_message,
		css : {
			width : 'auto',
			height : 'auto',
			left : '45%',
			top : '35%',
			border : 'none',
			padding : '15px',
			backgroundColor : '#000',
			'-webkit-border-radius' : '10px',
			'-moz-border-radius' : '10px',
			opacity : .5,
			color : '#F15B29',
			cursor : blockUI_cursor_type,
			minWidth : '-moz-fit-content'
		},
		overlayCSS : {
			opacity : .3,
			cursor : blockUI_cursor_type
		},
		baseZ : 10000000
	});
}

function blockUI_type(type) {
	console.log('blockUI_type');

	switch (type) {
	case 'load':
		blockUI(image_loading, message_load, 'wait');
		break;
	case 'publish':
		blockUI(image_loading, message_publish, 'wait');
		break;
	case 'createBaseline':
		blockUI(image_loading, message_createBaseline, 'wait');
		break;
	case 'clear':
		blockUI(image_loading, message_clear, 'wait');
		break;
	case 'save':
		blockUI(image_loading, message_save, 'wait');
		break;
	case 'import':
		blockUI(image_loading, message_import, 'wait');
		break;
	case 'blocked':
		blockUI(image_blocked, message_blocked, 'not-allowed');
		break;
	case 'undo':
		blockUI(image_loading, message_undo, 'wait');
		break;
	case 'redo':
		blockUI(image_loading, message_redo, 'wait');
		break;
	}

}
// END - blockUI

function loadFlowChart(block) {
	var url = "index.php?entryPoint=wfm_flowChart&uid=" + uid;
	// $('#ui-layout-center').load(url);

	$.ajax({
		url : url,
		cache : false,
		async : true,
		beforeSend : function() {
			if (block) {
				blockUI_type('load');
			}
		},
		success : function(html) {
			$('#ui-layout-center').html(html);
		},
		complete : function(response) {
			$.unblockUI();
		}

	});

}
