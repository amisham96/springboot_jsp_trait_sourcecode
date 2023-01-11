$(document).ready(function() {
	$("#trait_associated").on('change', function() {
		var trait_associated = document.getElementById("trait_associated").value;
		var chromosome = document.getElementById("chromosome").value;
		console.log(chromosome);
		$.ajax({
			type: 'POST',
			url: '/trait/get_specific_trait_by_trait?trait=' + trait_associated + '&chromosome=' + chromosome,
			success: function(data) {
				console.log(data);
				var s = '<option value = ""> Please Select Specific Trait Class </option>';
				for (var i = 0; i < data.length; i++) {
					s += '<option value="' + data[i] + '">' + data[i] + '</option>';
				}
				$("#specific_trait_associated").html(s);
			}
		});
	});
});