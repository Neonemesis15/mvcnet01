$(document).ready(function () {
    $(".btn-create").click(function (e) {
        $("#modal")
        .load("/Movimientos/Create").attr("title", "Nuevo Producto")
        .dialog({
            width: 550,
            height: 'auto',
            modal: true
            })
    });

    $(".btn-edit").click(function (e) {
        var codigo = $(this).attr("data-codigo");
        $("#modal").load("/Producto/Edit/"+codigo).attr("title", "Editar Producto").dialog({ width: 550, height: 'auto' })
    });

    $(".btn-details").click(function (e) {
        var codigo = $(this).attr("data-codigo");
        $("#modal").load("/Producto/Details/" + codigo).attr("title", "Detalle Producto").dialog({ width: 550, height: 'auto' })
    });

    $(".btn-delete").click(function (e) {
        var codigo = $(this).attr("data-codigo");
        $("#modal").load("/Producto/Delete/" + codigo).attr("title", "Elimina Producto").dialog({ width: 550, height: 'auto' })
    });

});