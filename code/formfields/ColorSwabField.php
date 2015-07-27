<?php

/**
 * Class ColorSwabField
 */
class ColorSwabField extends TextField
{
    /**
     * @return string
     */
    public function Type()
    {
        return 'text';
    }

    /**
     * @param array $properties
     *
     * @return mixed
     */
    public function Field($properties = array())
    {
        $this->addExtraClass('form-control color-swab');

        //Libraries
        Requirements::css(COLOR_SWAB_DIR . '/css/lib/colorswab-iconpicker.css');
        Requirements::javascript(COLOR_SWAB_DIR . '/js/color-swabs.js');
        Requirements::javascript(COLOR_SWAB_DIR . '/js/lib/colorswab-iconpicker.js');

        // Module
        Requirements::css(COLOR_SWAB_DIR . '/css/lib/bootstrap.min.css');
        Requirements::css(COLOR_SWAB_DIR . '/css/color-swab-module.css');
        Requirements::css(COLOR_SWAB_DIR . '/css/color-swabs.css');
        Requirements::javascript(COLOR_SWAB_DIR . '/js/color-swab-module.js');

        Requirements::set_force_js_to_bottom(true);

        return parent::Field($properties);
    }

    /**
     * @param $validator
     * @return bool
     */
    public function validate($validator)
    {
        return true;
    }
}
