var formUI = document.getElementsByTagName( "form" )[ 0 ];
var inputsUI = formUI.getElementsByTagName( "input" );
var inputNombre_Usuario = inputsUI[ 0 ];
var inputCorreo_Electronico = inputsUI[ 1 ];
var inputContrasena = inputsUI[ 2 ];
// var inputSubmit = inputsUI[ 3 ];
var recordInsert = document.getElementById( "recordInsert" );

var dataNombre_Usuario = " ";
var dataCorreo_Electronico = " ";
var dataContrasena = " ";

recordInsert.addEventListener("click", function(e) {
    e.preventDefault();

    var endpoint = "http://localhost/Recetas_fin/insertar.php";
    var xhr = new XMLHttpRequest();
    xhr.open("POST", endpoint, true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.send("Nombre_Usuario=" + inputNombre_Usuario.value + "&Correo_Electronico=" + inputCorreo_Electronico.value + "&Contrasena=" + inputContrasena.value);

    xhr.addEventListener("load", function() {
        var dataJson = JSON.parse(xhr.responseText);
        console.log(dataJson)});

        if (dataJson.success) {
            formUI.reset();
        } else {
            console.error("Error al insertar registro:", dataJson.message);
        }
    });
