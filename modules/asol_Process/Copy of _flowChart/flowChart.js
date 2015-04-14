function main_jsPlumb() {
	// alert("jsPlumb is now loaded");

	jsPlumb.bind("ready", function() {
		// your jsPlumb related init code goes here

		jsPlumb.Defaults.Container = $("#ui-layout-center"); // In order to attach svg-jsPlumb-tags to the body, and not to the elements´s parent that is connected

		jsPlumb.importDefaults({
			// default to blue at one end and green at the other
			EndpointStyles : [ {
				fillStyle : '#225588'
			}, {
				fillStyle : '#225588'
			} ],
			// EndpointStyles : [ null, null ],
			// blue endpoints 7 px; green endpoints 11.
			// Endpoints : [ [ "Dot", {radius:3} ], [ "Rectangle", { width :10, height: 10 } ]],
			Endpoints : [ [ "Dot", {
				radius : 3
			} ], [ "Dot", {
				radius : 3
			} ] ],
			// Endpoints : [ "Blank", "Blank" ],
			// the overlays to decorate each connection with.
			//
			ConnectionOverlays : [ [ "Arrow", {
				location : 0.5
			} ] ],

			// Connector : [ "Flowchart", { stub:10 } ],
			// Connector : [ "Bezier", { curviness:1 } ],
			Connector : [ "Straight" ],
			// Connector : [ "StateMachine", {curviness :0} ],
			// 
			Anchors : [ "RightMiddle", "LeftMiddle" ],
			//
			PaintStyle : {
				lineWidth : 3,
				strokeStyle : "#deea18",
				joinstyle : "round"
			},
			//
			HoverPaintStyle : {
				lineWidth : 5,
				strokeStyle : "#2e2aF8"
			}
		});

		generateConnections();

	});

	jsPlumb.bind("click", function(conn, originalEvent) {

		if ($('#' + conn.sourceId).hasClass('connection_clicked')) {
			$('#' + conn.sourceId).removeClass('connection_clicked');
		} else {
			$('#' + conn.sourceId).addClass('connection_clicked');
		}

		if ($('#' + conn.targetId).hasClass('connection_clicked')) {
			$('#' + conn.targetId).removeClass('connection_clicked');
		} else {
			$('#' + conn.targetId).addClass('connection_clicked');
		}
	});

}

// -----------------MAIN SCRIPT---------------//

function scrollToTopArrowVisibility() {
	
	$("#scrollToTop").position({
		my : "right bottom",
		at : "right bottom",
		of : "#ui-layout-center"
	});

	if ($("#ui-layout-center").scrollTop() > 100) {
		$('.scrollToTop').fadeIn();
		
		
	} else {
		$('.scrollToTop').fadeOut();
	}
}


$(document).ready(function() {

	// Check to see if the window is top if not then display button
	$("#ui-layout-center").scroll(function() {
		scrollToTopArrowVisibility();
	});
	// Click event to scroll to top
	$('.scrollToTop').click(function() {
		$('#ui-layout-center').animate({
			scrollTop : 0
		}, 800);
		return false;
	});

	// When pressing 'Ctrl' key + 'Space' key => complete names
	$(document).keypress(function(e) {
		if (e.which == 32) { // space key was pressed
			if (e.ctrlKey) { // 
				toggleEllipsis();
			}
		}
	});

	// When pressing 'Ctrl' key and clicking on a link => redirect to EditView (instead of DetailView when only clicking without pressing)
	$("#ui-layout-center a").not('#scrollToTop').click(function(event) {

		var viewType = "EditView";
		if (event.ctrlKey) {
			viewType = "DetailView";
		}

		var module = $(this).attr("module");
		var id = $(this).attr("link_id");
		var url = 'index.php?module=' + module + '&action=' + viewType + '&record=' + id;
		window.opener.location = url;
		window.frames.objectEditor.src = url + '&sugar_body_only=false';

	});

	// jsPlumb
	main_jsPlumb();

	$('a[title]').qtip({
		style : {
			classes : 'ui-tooltip-rounded ui-tooltip-shadow'
		},
		position : {
			my : 'bottom left',
			at : 'top left'
		}
	});

	$('.process_name a').qtip({
		content : {
			attr : 'qtip_info'
		},
		style : {
			classes : 'ui-tooltip-rounded ui-tooltip-shadow myTooltip'
		},
		position : {
			my : 'top left',
			at : 'bottom left'
		}
	});

	$('.delay_icon img, .delay_icon_for_task img').qtip({
		content : {
			attr : 'alt'
		},
		style : {
			classes : 'ui-tooltip-rounded ui-tooltip-shadow myTooltip'
		},
		position : {
			my : 'bottom middle',
			at : 'top middle'
		}
	});

	$('.event_symbol img, .task_call_process_open_subprocess_icon img').qtip({
		content : {
			attr : 'qtip_info'
		},
		style : {
			classes : 'ui-tooltip-rounded ui-tooltip-shadow myTooltip'
		},
		position : {
			my : 'bottom left',
			at : 'top right'
		}
	});

	$('.condition_icon img, .condition_icon_for_events img').qtip({
		content : {
			attr : 'qtip_info'
		},
		style : {
			classes : 'ui-tooltip-rounded ui-tooltip-shadow myTooltip'
		},
		position : {
			my : 'left top',
			at : 'bottom middle'
		},
		show : 'click',
		hide : 'click'
	});

});

$(window).unload(function() {
	jsPlumb.unload();
});

// BEGIN - Growl
$(document).ready(function() {
	$('#flowchart_info').click(function() {
		// Check if it should be persistent (can set to a normal bool if you like!)
		createGrowl($(this).hasClass('persistent'));
	});

	window.createGrowl = function(persistent) {
		// Use the last visible jGrowl qtip as our positioning target
		var target = $('.qtip.jgrowl:visible:last');

		// Create your jGrowl qTip...
		$(document.body).qtip({
			// Any content config you want here really.... go wild!
			content : {
				text : SUGAR.language.get('asol_Process', 'LBL_ASOL_INFO_TEXT'),
				title : {
					text : SUGAR.language.get('asol_Process', 'LBL_ASOL_INFO_TITLE'),
					button : true
				}
			},
			position : {
				my : 'top right',
				// Not really important...
				at : (target.length ? 'bottom' : 'top') + ' right',
				// If target is window use 'top right' instead of 'bottom right'
				target : target.length ? target : $("#ui-layout-center"),
				// Use our target declared above
				adjust : {
					x : -5,
					y : 47
				}, // y = bar height + bar border
				effect : function(api, newPos) {
					// Animate as usual if the window element is the target
					$(this).animate(newPos, {
						duration : 200,
						queue : false
					});

					// Store the final animate position
					api.cache.finalPos = newPos;
				}
			},
			show : {
				event : false,
				// Don't show it on a regular event
				ready : true,
				// Show it when ready (rendered)
				effect : function() {
					$(this).stop(0, 1).fadeIn(400);
				},
				// Matches the hide effect
				delay : 0,
				// Needed to prevent positioning issues
				// Custom option for use with the .get()/.set() API, awesome!
				persistent : persistent
			},
			hide : {
				event : false,
				// Don't hide it on a regular event
				effect : function(api) {
					// Do a regular fadeOut, but add some spice!
					$(this).stop(0, 1).fadeOut(400).queue(function() {
						// Destroy this tooltip after fading out
						api.destroy();

						// Update positions
						updateGrowls();
					});
				}
			},
			style : {
				classes : 'jgrowl qtip-dark qtip-rounded',
				// Some nice visual classes
				tip : false
			// No tips for this one (optional ofcourse)
			},
			events : {
				render : function(event, api) {
					// Trigger the timer (below) on render
					timer.call(api.elements.tooltip, event);
				}
			}
		}).removeData('qtip');
	};

	// Make it a window property see we can call it outside via updateGrowls() at any point
	window.updateGrowls = function() {
		// Loop over each jGrowl qTip
		var each = $('.qtip.jgrowl'), width = each.outerWidth(), height = each.outerHeight(), gap = each.eq(0).qtip('option', 'position.adjust.y'), pos;

		each.each(function(i) {
			var api = $(this).data('qtip');

			// Set target to window for first or calculate manually for subsequent growls
			api.options.position.target = !i ? $(window) : [ pos.left + width, pos.top + (height * i) + Math.abs(gap * (i - 1)) ];
			api.set('position.at', 'top right');

			// If this is the first element, store its finak animation position
			// so we can calculate the position of subsequent growls above
			if (!i) {
				pos = api.cache.finalPos;
			}
		});
	};

	// Setup our timer function
	function timer(event) {
		var api = $(this).data('qtip'), lifespan = 5000; // 5 second lifespan

		// If persistent is set to true, don't do anything.
		if (api.get('show.persistent') === true) {
			return;
		}

		// Otherwise, start/clear the timer depending on event type
		clearTimeout(api.timer);
		if (event.type !== 'mouseover') {
			api.timer = setTimeout(api.hide, lifespan);
		}
	}

	// Utilise delegate so we don't have to rebind for every qTip!
	$(document).delegate('.qtip.jgrowl', 'mouseover mouseout', timer);
});
// END - Growl

// *********//
// GENERAL //
// *********//

function toggleEllipsis() {

	if ($('.aux_name_overflow').hasClass('overflow_ellipsis_enabled')) {
		$('.aux_name_overflow').addClass('overflow_ellipsis_disabled');
		$('.aux_name_overflow').removeClass('overflow_ellipsis_enabled');
	} else {
		$('.aux_name_overflow').addClass('overflow_ellipsis_enabled');
		$('.aux_name_overflow').removeClass('overflow_ellipsis_disabled');
	}

	// $(".aux_name_overflow").switchClass( "overflow_ellipsis_disabled", "overflow_ellipsis_enabled", 1000 );
	// $(".aux_name_overflow").switchClass( "overflow_ellipsis_enabled", "overflow_ellipsis_disabled", 1000 );
}