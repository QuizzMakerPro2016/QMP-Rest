jQuery('.ui.accordion').accordion();
	jQuery('select.dropdown').dropdown();

	jQuery('select').change(function(){
		jQuery(jQuery(this).attr('data-field')).val(jQuery(this).find(':selected').val());
	});

	jQuery('.btn-ajax').click(function(){		
		var elt = jQuery(this);

		var baseUrl = "http://localhost:8080/QMP-Rest/rest/";
		//jQueryurlToShow = jQuerybaseUrl;
		var urlToShow = "http://qmp.com/api-v1/"

		var extUrl = elt.attr('data-ajax');



		jQuery(elt.attr("data-container")).find("code").parent().hide("fast");

		var arrStr = elt.attr('data-ajax').split(/[{}]/);
		for (var i = 1; i < arrStr.length-1; i+=2) {
			var value = jQuery(elt.attr("data-form")).find("input[name=param-"+arrStr[i]+"]").val();
			if (value == null || value == "") { value = jQuery(elt.attr("data-form")).find("*[name=param-"+arrStr[i]+"]").attr("data-default")};
			extUrl = extUrl.replace('{'+arrStr[i]+'}', value);
		};

		var url = baseUrl + extUrl;
		urlToShow +=  extUrl;

		console.log(value);
		console.log(url);


		jQuery(elt.attr("data-container")).find(".msg").html('<div class="ui icon message"><i class="notched circle loading icon"></i><div class="content"><div class="header">Loading</div><p>Request is being Loaded.</p></div></div>');

		jQuery.ajax({
			crossDomain:true,
		  method: elt.attr('data-request'),
		  url: url
		})
		.fail(function(xhr, textStatus, errorThrown) {
			var statusText = xhr.statusText;
			if(xhr.status == 0 )
				statusText = "Unable to Contact Server";
			jQuery(elt.attr("data-container")).find(".msg").html('<div class="ui icon red message"><i class="remove icon"></i><div class="content"><div class="header">'+xhr.status+' - '+statusText+'</div><p>'+urlToShow+'</p></div></div>');
			jQuery(elt.attr("data-container")).find("code").html("");
		})
		.done(function(data, status, xhr) {
			console.log(xhr);
			jQuery(elt.attr("data-container")).find("code").html(JSON.stringify(data, null, 4));
			jQuery('code.highlight').each(function(i, block) {
				hljs.highlightBlock(block);
			});
			jQuery(elt.attr("data-container")).find("code").parent().show("slow");
			jQuery(elt.attr("data-container")).find(".msg").html('<div class="ui icon green message"><i class="checkmark icon"></i><div class="content"><div class="header">'+xhr.status+' - '+xhr.statusText+'</div><p>'+urlToShow+'</p></div></div>');
		});
	});