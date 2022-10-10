Identity.CheckBox = function(box) {
    var cbs = document.getElementsByClassName("Checkbox");
    for (var i = 0; i < cbs.length; i++) {
        cbs[i].checked = false;
    }
    box.checked = true;
}

Identity.CheckEntries = function() {
	var EntryList = [
		document.getElementById("FirstName_Entry"), 
		document.getElementById("LastName_Entry"),
		document.getElementById("DateOfBirth_Entry")
	];
	for(element of EntryList)
	{
		element.addEventListener("input", function(){
			document.getElementById('Submit').disabled = (EntryList[0].value === '' || EntryList[1].value === '' || EntryList[2].value === '');
		})
	}
}

Identity.Translate = function(Lang) {
	if (Lang == "EN") {
		document.getElementById("Title").innerHTML = "Identity Creator";
		document.getElementById("FirstName").innerHTML = "First Name";
		document.getElementById("LastName").innerHTML = "Last Name";
		document.getElementById("DateOfBirth").innerHTML = "Date Of Birth";
		document.getElementById("Sex").innerHTML = "Sex";
		document.getElementById("Male").innerHTML = "Male";
		document.getElementById("Female").innerHTML = "Female";
		document.getElementById("Skills").innerHTML = "Description";
		document.getElementById("Submit").innerHTML = "Create Identity";
	} else if (Lang == "ES") {
		document.getElementById("Title").innerHTML = "Creador de Identidad";
		document.getElementById("FirstName").innerHTML = "Nombre";
		document.getElementById("LastName").innerHTML = "Apellido";
		document.getElementById("DateOfBirth").innerHTML = "Fecha De Nacimiento";
		document.getElementById("Sex").innerHTML = "Sexo";
		document.getElementById("Male").innerHTML = "Masculino";
		document.getElementById("Female").innerHTML = "Femenino";
		document.getElementById("Skills").innerHTML = "Descripción";
		document.getElementById("Submit").innerHTML = "Crear Identidad";
	} else if (Lang == "FR") {
		document.getElementById("Title").innerHTML = "Créateur d'identité";
		document.getElementById("FirstName").innerHTML = "Prénom";
		document.getElementById("LastName").innerHTML = "Nom de famille";
		document.getElementById("DateOfBirth").innerHTML = "Date de naissance";
		document.getElementById("Sex").innerHTML = "Sexe";
		document.getElementById("Male").innerHTML = "Masculin";
		document.getElementById("Female").innerHTML = "Femme";
		document.getElementById("Skills").innerHTML = "Description";
		document.getElementById("Submit").innerHTML = "Créer";
	};
}

let PreventList = true;

$(document).ready(function(){


	window.addEventListener('message', function(event) {
		var Data = event.data;
		if (Data.Type === "Identity") {
			if (Data.Display == true) {
				$("#IncluideIdentity").load("../Modules/Core/Identity/Data/NUI/Main.html", function() {
					$('<link>').appendTo('head').attr({
						type: 'text/css', 
						rel: 'stylesheet',
						href: '../Modules/Core/Identity/Data/NUI/Main.css'
					});

					Identity.Translate(Data.Locale);
					Identity.CheckEntries();
					Identity.Submit();
				});

				$("#IncluideIdentity").hide();
				setTimeout(function() {
                    $('#IncluideIdentity').fadeIn(1000);
                }, 250);
			} else {
				$("#IncluideIdentity").empty();
				$("LINK[href*='../Modules/Core/Identity/Data/NUI/Main.css']").remove();
			}
		}
	});

	Identity.Submit = function() {
		$("#Submit").click(function () {
			let EntryFirstName = $("#FirstName_Entry").val()
			let EntryLastName = $("#LastName_Entry").val()
			let EntryDateOfBirth = $("#DateOfBirth_Entry").val()
			let Male = $("#MaleCheckbox").prop('checked')
			let Female = $("#FemaleCheckbox").prop('checked')
			let EntrySex;
			if (Male) {
				EntrySex = "Male";
			} else if (Female) {
				EntrySex = "Female";
			}
			$.post('http://zombieoutbreak/Identity:Submit', JSON.stringify({
				FirstName: EntryFirstName,
				LastName: EntryLastName,
				DateOfBirth: EntryDateOfBirth,
				Sex: EntrySex,
				Occupation: "Unemployed"
			}));
		})
	}
});