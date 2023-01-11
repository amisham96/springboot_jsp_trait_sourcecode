$(document).ready(function() {
	var chrommosome = document.getElementById("chromosome").value;
	$("#chromosome").on('change', function() {
		var chromosome = document.getElementById("chromosome").value;
		console.log(chromosome);
		if (chromosome == 'all') {
			var s = '<option value = "all"> All </option>';
			$("#trait_associated").html(s);
			$("#specific_trait_associated").html(s);
		} else {
			$.ajax({
				type: 'POST',
				url: '/trait/get_trait_by_chromosome?chromosome=' + chromosome,
				success: function(data) {
					console.log(data);
					var s = '<option value = ""> Please Select Trait Class </option>';
					for (var i = 0; i < data.length; i++) {
						s += '<option value="' + data[i] + '">' + data[i] + '</option>';
					}
					$("#trait_associated").html(s);
				}
			});
		}
	});
});