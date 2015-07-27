## Synopsis
An extension of font-awesome-picker that replaces the icons with colours.

## Features
* Easily pick colour swabs to be used anywhere in the frontend
* Can filter on colour name
* Almost no development/lines of code required to add new colours

## Installation

### Composer
Ideally composer will be used to install this module. 
```composer require "moe/color-swab:@stable"```

## Screen shots

### Color swab view
![Color swabs](https://raw.githubusercontent.com/peavers/silverstripe-color-swabs/master/images/screens/color-swabs.png "Colour swabs")
---------------------------------------
### Filter view
![Filter](https://raw.githubusercontent.com/peavers/silverstripe-color-swabs/master/images/screens/color-swabs-filter.png "Colour filter")

## Usage
A basic working example, include the following to any class you want the field on; 

```php
    private static $db = array(
        'MenuBackgroundColor' => 'Varchar(255)',
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.Main', array(
            ColorSwabField::create('MenuBackgroundColor', 'Megamenu background colour')
        ));

        return $fields;
    }
```

Then simply include in the template in a class element
```html
    <nav class="{$MenuBackgroundColor}">[...]</nav>  
```

The controller extension should make sure you've got access to the colour swabs so you don't need to double up the CSS file. 

## Add/Change colours
To modify the choice of colours you need to change two files.
 
* js/color-swabs.js
* css/color-swabs.css

For example: To add the colour black make the following changes

```javascript
// js/color-swabs.js    
    var colorSwabs = [
        //[...]
        'black-500'
    ];
```

```css
/* css/color-swabs.css */
    .color-black-500 {
        background: #000000;
    }
```

## Libraries used/modified
* Font Awesome Icon Picker
 
## Final words
This was built for a specific user case, and built to our specific environment, it may not work for you and may not meet accessibility standards on some level. 
Make sure you know what it is you're installing, before installing it. 

