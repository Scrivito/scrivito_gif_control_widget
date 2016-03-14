# ScrivitoGifControlWidget

Scrivito Widget for a gif with simple controll to start and stop

## Installation

Add this line to your application's Gemfile:

    gem 'scrivito_gif_control_widget'

Add this line to your application Javascript Manifest:

    //= require scrivito_gif_control_widget

## Customization

Setting the image is only possible in your details view with the content browser. You will see all your filter. A filter_context is set in the details view. It is `image_gif`. Create a content browser filter for easier use:

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
