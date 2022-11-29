# lowRISC website

This repository contains the source code of the lowRISC website.

## Deploying

Build the site for production with the following command:

```sh
hugo -s site --minify --baseURL 'https://www.lowrisc.org'
```

Output files will go into the `site/public/` directory which can then be copied
to the actual website repo at <https://github.com/lowRISC/lowrisc.github.io>.
Eventually this step should be automated by CI.

## Developing

The site is built with the [Hugo](https://gohugo.io/) static site generator.
Install Hugo from your system's package manager.

Hugo version 0.92 has been tested, but older versions may work. At least version
0.43 is required for SASS processing.

The following will build the site and serve a preview locally. When running,
Hugo will trigger rebuilds and automatically refresh your webpage when files
change.

```sh
hugo server -s site
```

Hugo supports marking content as [draft or future content][hugo-draft-future].
To preview this content, run Hugo with the `-D` and `-F` flags:

hugo server -s site -D -F

[hugo-draft-future]: https://gohugo.io/getting-started/usage/#draft-future-and-expired-content

### CSS

This site uses Bootstrap 4, refer to https://getbootstrap.com for available
classes. The styling is configured using the SASS files in `site/assets/scss/`.
Hugo handles processing these into CSS.

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
