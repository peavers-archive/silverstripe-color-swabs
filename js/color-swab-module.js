(function ($) {
    $.entwine(function ($) {

        $('.color-swab').entwine({
            onmatch: function () {
                $('.color-swab').colorpicker({
                    hideOnSelect: true,
                    inputSearch: false
                });
            }
        });
    });
})(jQuery);
