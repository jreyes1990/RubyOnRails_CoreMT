import Swal from 'sweetalert2';
document.addEventListener("turbolinks:load", function () {

    /**
      * Muestra un cuadro de diálogo de confirmación cuando se hace clic en un botón.
      * 
      * @param {string} btnClass - El selector del botón al que se adjunta el evento de clic.
      * @param {string} title - El título que se muestra en el cuadro de diálogo de confirmación.
      * @param {string} confirmButtonText - El texto que se muestra en el botón de confirmación del cuadro de diálogo.
      * @param {string} accion - Un parámetro opcional que por defecto es 'inactivar'. Se utiliza para construir el mensaje de texto que se muestra en el cuadro de diálogo de confirmación.
      */

    function confirmStatus(btnClass, title, confirmButtonText, accion = 'inactivar') {
        $(document).on('click', btnClass, function (e) {
            e.preventDefault();
            var nombre = this.dataset.nombre;
            let config = {
                title: title,
                text: '¿Estás seguro de ' + accion + ': ' + nombre + '?',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#008000',
                cancelButtonColor: '#FF0000',
                confirmButtonText: confirmButtonText
            }
            Swal.fire(config).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = this.href;
                }
            });
        });
    }

    function confirmSave(btnClass, title, confirmButtonText, accion = 'guardar') {
        $(document).on('click', btnClass, function (e) {
            e.preventDefault();
            let config = {
                title: title,
                text: '¿Estás seguro de ' + accion + '?',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#008000',
                cancelButtonColor: '#FF0000',
                confirmButtonText: confirmButtonText
            }
            Swal.fire(config).then((result) => {
                if (result.isConfirmed) {
                    // Encuentra el formulario más cercano y lo envía
                    $(this).closest('form').submit();
                }
            });
        });
    }

    confirmStatus('.btn-inactivar-usuario', 'Inactivar Usuario', '¡Sí, inactivarlo!');
    confirmStatus('.btn_inactivar_empresa', 'Inactivar Empresa', '¡Sí, inactivarlo!');
    confirmStatus('.btn_inactivar_area', 'Inactivar Área', '¡Sí, inactivarlo!');
    confirmStatus('.btn_inactivar_rol', 'Inactivar Rol', '¡Sí, inactivarlo!');
    confirmStatus('.btn_inactivar_menu', 'Inactivar Menu', '¡Sí, inactivarlo!');
    confirmStatus('.btn_inactivar_opcion', 'Inactivar Opción', '¡Sí, inactivarlo!');
    confirmStatus('.btn_inactivar_menu_rol', 'Inactivar Menu Rol', '¡Sí, inactivarlo!');
    confirmStatus('.btn_inactivar_atributo', 'Inactivar Atributo', '¡Sí, inactivarlo!');
    confirmStatus('.btn_inactivar_componente', 'Inactivar Componente', '¡Sí, inactivarlo!');
    confirmStatus('.btn_inactivar_opcion_ca', 'Inactivar Permiso Formulario', '¡Sí, inactivarlo!');
    confirmStatus('.btn_inactivar_estado', 'Inactivar Estado', '¡Sí, inactivarlo!');
    confirmStatus('.btn_activar_estado', 'Activar Estado', '¡Sí, Activarlo!', 'activar');
    confirmStatus('.btn_inactivar_parametro', 'Inactivar Parámetro', '¡Sí, inactivarlo!');
    confirmStatus('.btn_activar_parametro', 'Activar Parámetro', '¡Sí, Activarlo!', 'activar');
    

    confirmSave('.btn_guardar_inventarios', 'Guardar Inventario', '¡Sí, Guardarlo!');

    confirmSave('.btn_guardar_inventarios', 'Guardar Inventario', '¡Sí, Guardarlo!');

    confirmSave('#btn_add_empresa', 'Guardar Empresa', 'Sí');

});