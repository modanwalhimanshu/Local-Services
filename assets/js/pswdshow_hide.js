$(document).ready(function () {
    $('#show_hide').on('click', function () {
        var passwordField = $('#P_txtpswd');
        var passwordFieldType = passwordField.attr('type');
        if (passwordFieldType == 'P_txtpswd')
         {
            passwordField.attr('type', 'text');
            $(this).text('(.)');
        }
        else 
        {
            passwordField.attr('type', 'P_txtpswd');
            $(this).text('(.)');
        }
    });
});