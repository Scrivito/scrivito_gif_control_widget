# ScrivitoGifControlWidget

A widget for starting and stopping animated GIFs.

## Installation

Add this line to your application's Gemfile:

    gem 'scrivito_gif_control_widget'

Add this line to your application Javascript Manifest:

    //= require scrivito_gif_control_widget

## Localization

The following code represents the default localization for English. Copy it to your `en.yml` and change it if necessary:

```yaml
en:
  scrivito_gif control_widget:
    thumbnail:
      title: Gif Control
      description: Add a widget to control start and stop of a gif animation with click.
    details:
      image_gif: Gif


## Customization

Due to the click event the widget needs to handle, the GIF image in such a widget can only be set via the properties dialog using the Content Browser. You may want to create a corresponding filter for the Content Browser in order to find GIF binaries easier:

```js
scrivito.content_browser.filters = function(filter) {
  if (filter.image_gif) {
    return {
      _obj_class: {
        field: '_obj_class',
        options: {
          Image: {
            query: scrivito.obj_where('blob:content_type', 'equals', 'image/gif'),
            icon: 'image',
            title: 'Gifs'
          }
        }
      }
    };
  }
  else {
    ... // standard filter goes here
  }
};
```
