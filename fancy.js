$(document).ready(function(){
///Some styling tricks////
		$('span.conditional').hide();
		$('li:contains("*"), small:contains("*")').each(function(){
			var text= String($(this).html());
			text = text.replace(/\*(.+?)\*/g,'<strong>$1</strong>');
			$(this).html(text);
		});
		$('li:contains("/"), small:contains("/")').each(function(){
			var text= String($(this).html());
			text = text.replace(/\/(.+?)\//g,'<em>$1</em>');
			$(this).html(text);
		});
		$('div').each(function(){
			var text= String($(this).html());
			text = text.replace(/\\n/g,'<br />');
			$(this).html(text);
		});
// Make timeline scrollable
// If we are not on mobile
		if( $(window).width() > 481 ){
			var $exp_section = $('div.section.experience');
			var $exp_item = $('.section.experience .listBox');
			var first_exp_scroll = 1;
			var all_exp_scroll = 4;
			var curr = first_exp_scroll;

	// sort of a weird use of wrapper here. wrapper is INSIDE section.
	// just be advised.
			$exp_item.wrapAll("<div class='item wrapper experience'></div>");
			$exp_item_wrap = $('.item.wrapper.experience');

			$exp_item_wrap.css({
						'width':'100%',
						'overflow-x':'scroll',
						'white-space':'nowrap'
						});	
			$exp_item.css({
							'width':'33%',
							'float':'none',
							'display':'inline-block',
							'white-space':'normal',
							'vertical-align':'top'
						});
			$exp_section.prepend("<div class='prev experience button no-more'>&lang;</div> \
															<div class='next experience button'>&rang;</div> ");
			$next_exp_button = $('.next.button.experience');
			$prev_exp_button = $('.prev.button.experience');

			$next_exp_button.click(function(){
				$prev_exp_button.removeClass('no-more');
				if(curr < all_exp_scroll) curr++;

				$exp_item_wrap.scrollTo('.listBox:nth-child(' + curr +')', 300);

			//check again to see if button should be greyed
				if(curr == all_exp_scroll) $next_exp_button.addClass('no-more')
			});

			$prev_exp_button.click(function(){
				$next_exp_button.removeClass('no-more');
				if(curr > first_exp_scroll)	curr--;
				
				$exp_item_wrap.scrollTo(' .listBox:nth-child(' + curr +')', 300);
				
			//check to see if button should be greyed
				if(curr == first_exp_scroll) $prev_exp_button.addClass('no-more')
			});
		}


});
