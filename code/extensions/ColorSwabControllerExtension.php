<?php

/**
 * Class ColorSwabControllerExtension
 */
class ColorSwabControllerExtension extends Extension
{
    /**
     * Load the colour swabs into the template
     */
    public function onBeforeInit()
    {
        Requirements::css(COLOR_SWAB_DIR . '/css/color-swabs.css');
    }
}
