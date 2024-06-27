/* global swal */

$(document).ready(function () {
//Eliminar Compra
    $("tr #btnDelete").click(function () {

        var idp = $(this).parent().find("#idp").val();
        swal({
            title: "¿Seguro?",
            text: "Una vez borrado, no podrá recuperar este producto.",
            icon: "warning",
            buttons: true,
            dangerMode: true
        })
                .then((willDelete) => {
                    if (willDelete) {
                        var url = "Controlador?accion=Delete";
                        $.ajax({
                            type: 'POST',
                            url: url,
                            data: "idp=" + idp,
                            success: function (data, textStatus, jqXHR) {
                                swal("¡Puf! ¡Tu producto ha sido borrado!", {
                                    icon: "success"
                                }).then((willDelete) => {
                                    if (willDelete) {
                                        parent.location.href = "Controlador?accion=carrito";
                                    }
                                });
                            }
                        });
                    } else {
                        swal("Tu producto está a salvo!");
                    }
                });
    });
    // Actualziar Compra
    $("tr #cantidad").click(function () {
        var idp = $(this).parent().find("#idpro").val();
        var cantidad = $(this).parent().find("#cantidad").val();
        var url = "Controlador?accion=ActualizarCantidad";
        $.ajax({
            type: 'POST',
            url: url,
            data: "idp=" + idp + "&cantidad=" + cantidad,
            success: function (data, textStatus, jqXHR) {
                location.href = "Controlador?accion=Cesta";
            }
        });
    });

});
