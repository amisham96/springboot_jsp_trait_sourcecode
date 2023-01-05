$(document).ready(function() {
	$.ajax({
		type: 'GET',
		url: '/trait/get_chromosome',
		success: function(data) {
			// $('#trait_class').html(htmlresponse);
			console.log(data);
			var s = '<option value = ""> Please Select Chromosome </option><option value = "all"> All </option>';
			for (var i = 0; i < data.length; i++) {
				s += '<option value="' + data[i] + '">' + data[i] + '</option>';
			}
			$("#chromosome").html(s);
		}
	});
});