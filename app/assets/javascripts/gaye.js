$(document).ready(function(){
	
	// Smart Labels
	$('.input.smart_label').each(function(i,el){
		
		label = $($(el).find('label')[0]).addClass('js');
		label.text(label.text().replace('*',''))
		
		if($(el).hasClass('text')) {
			input = $($(el).find('textarea')[0]);
		} else {
			input = $($(el).find('input')[0]);
		}
		
		input.bind('focus',function(ev){ $($(this).siblings('label')[0]).hide();  });
		
		input.bind('blur',function(ev){
			if($(this).val()=='') {
				$($(this).siblings('label')[0]).show()
			}
		});
		
		if(input.val()!='') { $(input.siblings('label')[0]).hide(); }
		
	});

	// Smooth scroll inline links
/*
	$('a[href*=#]').click(function() {
console.log(this.href);
	  if (this.href.length > 1) {
	  	scrollToElement(this.href);
	  }
	  return false;
	});
*/
	
	$('form.slides').easyPaginate({step:1})
	
	$('form.slides .big_radio.small li').bind('click',function(ev){
		$('form.slides .big_radio.small li').removeClass('active')
		$(this).addClass('active');
	})
	
	$('form.slides .large li').bind('click',function(ev){
		$('form.slides .large li').removeClass('active')
		$(this).addClass('active');
	});
	
	$('form.slides .jump_to_1').bind('click',function(ev){
		ev.preventDefault();
		ev.stopPropagation();
		$('form.slides').easyPaginate('jump',1)
	})
	
	$('form.slides .jump_to_2').bind('click',function(ev){
		ev.preventDefault();
		ev.stopPropagation();
		$('form.slides').easyPaginate('jump',2)
	})
	
	$('form.slides .jump_to_3').bind('click',function(ev){
		ev.preventDefault();
		ev.stopPropagation();
		$('form.slides').easyPaginate('jump',3)
	})
	
	$('form.slides .jump_to_4').bind('click',function(ev){
		ev.preventDefault();
		ev.stopPropagation();
		$('form.slides').easyPaginate('jump',4)
	})
	$('form.slides .jump_to_5').bind('click',function(ev){
		ev.preventDefault();
		ev.stopPropagation();
		$('form.slides').easyPaginate('jump',5)
	})
	$('form.slides .jump_to_6').bind('click',function(ev){
		ev.preventDefault();
		ev.stopPropagation();
		$('form.slides').easyPaginate('jump',6)
	})
	$('form.slides .jump_to_7').bind('click',function(ev){
		ev.preventDefault();
		ev.stopPropagation();
		$('form.slides').easyPaginate('jump',7)
	})
	
	$('.advanced_toggle').bind('click',function(ev){
		ev.preventDefault();
		ev.stopPropagation();
		$('#advanced').toggle();
		$('#employer_matching').attr('checked',false)
	})
	
	//	Flexselect
	$('select.flexselect').flexselect({hideDropdownOnEmptyInput: true});
	
	
	$('.alert').on('click', function(e) {
		e.preventDefault();
		alert($(this).data('alert'));
	});
	
	
	$('#employee_employer_id').on('change', function(e) {
		if ($(this).val()) {
			$('#step-2').slideDown(300);
		}
	});
	
	$('input[name=how_often]').on('change', function(e) {
		$('#step-3').slideDown(300);
		$('#step-4').slideDown(300);
	});
	
	$('input[name=tax]').on('change', function(e) {
		calculate();
	});
	$('input[name="employee[deduction]"]').on('keyup', function(e) {
		calculate();
	});
	$('#step-2 input').on('focus, change', function(e) {
		if ($('#calculator').css('display') === 'none') {
			$('#calculator').fadeIn(500);
		}
		calculate();
	});
	
	
	$('#employee_deduction').on('focus, keyup', function(e) {
		caculateMultiple();
	});
	
	
	var ttid = 0;
	$('.tooltip').on('click', function(e) {
		e.preventDefault();
		if ($(this).data('tooltip') !== '--active--') {
			if (!$(this).data('tooltipId')) {
				ttid ++;
				$tooltip = $('<p class="tooltip" id="tooltip-' + ttid + '">' + $(this).data('tooltip') + '</p>')
					.appendTo($(this)).fadeIn(200)
					.on('click', function() {
						$('#tooltip-' + $(this).data('tooltipId')).fadeOut(200);
						$(this).data('tooltip', '--inactive--');
					});
				$(this).data('tooltipId', ttid);
				$(this).data('tooltip', '--active--');
			}
			else {
				$('#tooltip-' + $(this).data('tooltipId')).fadeIn(200);
				$(this).data('tooltip', '--active--');
			}
		}
		else {
			$('#tooltip-' + $(this).data('tooltipId')).fadeOut(200);
			$(this).data('tooltip', '--inactive--');
		}
	});
	
	
	$('#approve-changes').on('click', function(e) {
		e.preventDefault();
		alert("Email sent to administrator:\n\nThis period's changes have just been approved and are ready to be processed");
	});
	
	
});



function calculate() {
	var tax = $('input[name=tax]:checked').val();
	var donation = $('input[name="employee[deduction]"]').val();
	var total = donationCalc(tax, donation);
	$('#calculated-donation').html('£' + total.formatMoney(2, '.', ','));
}

function caculateMultiple() {
	var donation = $('#employee_deduction').val();
	$('strong[data-tax]').each(function() {
		$(this).html('£' + donationCalc($(this).data('tax'), donation).formatMoney(2, '.', ','));
	});
}

function donationCalc(tax_percentage, donation) {
	return donation / ((100 - tax_percentage) / 100);
}

function reverseDonationCalc(tax_percentage, donation) {
	return donation - (donation * (tax_percentage / 100));
}


function scrollToElement(element) {
	var targetPosition=$(element).offset().top-10;
  $('html:not(:animated),body:not(:animated)').animate({ scrollTop: targetPosition }, {
    duration: 500, 
    easing:'swing'
  });
}


Number.prototype.formatMoney = function(c, d, t){
var n = this, c = isNaN(c = Math.abs(c)) ? 2 : c, d = d == undefined ? "," : d, t = t == undefined ? "." : t, s = n < 0 ? "-" : "", i = parseInt(n = Math.abs(+n || 0).toFixed(c)) + "", j = (j = i.length) > 3 ? j % 3 : 0;
   return s + (j ? i.substr(0, j) + t : "") + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : "");
 };
