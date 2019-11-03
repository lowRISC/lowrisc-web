# lowRISC web site

This repository contains the source code of the lowRISC web site. It is built
using Hugo, with all frontend assets being managed by Webpack.

## Develop

### Prerequisites

You need to install node.js and yarn on your machine. (Note: you do not need to
install Hugo manually, it will be installed with yarn later.)

- [nodejs](https://nodejs.org/en/download/)
- [yarn](https://nodejs.org/en/download/)

### Download all frontend dependencies

Before you can get started, you need to download all frontend dependencies
(CSS and JS libraries), and Hugo. These dependencies will be installed into the
`node_modules` directory.

```bash
yarn install
```

### Development

This repository is set up to give you an efficient development experience.

At the root of this repository, run

```bash
yarn start
```

A browser window will open and show you the web site. Now editing is easy: as
soon as you save changes to a source file the page in the browser will
automatically reload. No need to click the reload button!

Content in Hugo can be marked as
[draft or future content](https://gohugo.io/getting-started/usage/#draft-future-and-expired-content).
To see such content in the preview, run

```bash
yarn preview
```

## Deploy

A static version of the web site can be built with:

```bash
yarn build
```

The output will live at `/dist`.

## Frontend Processing Pipeline

This web site uses [Hugo](https://gohugo.io/) as a static site generator and
[Webpack](https://webpack.js.org/) as JS/CSS asset pipeline.

[PostCSS](http://postcss.org/) and [Babel](https://babeljs.io/) are used for CSS
and JavaScript compiling/transpiling.

### Add new node modules

Frontend dependencies are generally handled through `yarn`.

* Use `yarn add` to add dependencies.
* Import JS and CSS modules in `index.js`.

### CSS

This site uses Bootstrap 4, refer to https://getbootstrap.com for available
classes.

Styles are edited as SASS files in `src/scss` and post-processed into (minified)
CSS.

### Images

We have a Hugo shortcode to downscale images, and create two variants: one for
clients with a display scaling factor of 1, and another image for clients with a
2x scaling factor (HighDPI or Retina displays). To use this functionality,
follow these steps:

- Place images into the `content` directory, next to an `index.md` or
  `index.html` file.
- Reduce the size to about 2000px on the longer side to avoid overly large
  images in the Git repository.
- Use the `img` Hugo shortcode to include images:

  ```
  {{< img class="any class you want" src="image.png" alt="alternative text (if image cannot be shown)" title="some title (mouseover)" >}}
  ```

## License

"Technical parts" of this web site are licensed under the Apache License,
Version 2.0. See file headers and LICENSE for details. Content is typically
licensed under CC BY-SA 4.0.
