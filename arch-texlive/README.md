[![Build][build-shield]][build-url]
[![Git Tag][tag-shield]][tag-url]
[![Docker Image Size][img-size-shield]][docker-url]

# arch-texlive

<img src="logo.svg" height="260px" align="right"/>

Ready-to-use docker image of a full LaTeX installation on top of arch.

- __Arch-based.__ Always use the latest version of LaTeX.
- __Fonts included.__ Every Google font available.
- __Gigantic.__ Around 11 GB of dependencies on a single image.
- __CI/CD friendly.__ In case you're insane like me and want to compile
    LaTeX documents inside a continuous integration pipeline.

You can see this image in action [here](https://github.com/caian-org/cv).

[build-shield]: https://img.shields.io/github/actions/workflow/status/caian-org/arch-texlive/build-latest.yml?label=edge%20build&logo=github&style=for-the-badge
[build-url]: https://github.com/caian-org/arch-texlive/actions/workflows/build-latest.yml

[tag-shield]: https://img.shields.io/github/tag/caian-org/arch-texlive.svg?logo=git&logoColor=FFF&style=for-the-badge
[tag-url]: https://github.com/caian-org/arch-texlive/tags

[img-size-shield]: https://img.shields.io/docker/image-size/caian/arch-texlive?logo=docker&logoColor=FFF&style=for-the-badge
[docker-url]: https://hub.docker.com/r/caian/arch-texlive


## License

To the extent possible under law, [Caian Ertl][me] has waived __all copyright and related or neighboring rights to this
work__. In the spirit of _freedom of information_, I encourage you to fork, modify, change, share, or do whatever you
like with this project! [`^C ^V`][kopimi]

[![License][cc-shield]][cc-url]

[me]: https://github.com/upsetbit
[cc-shield]: https://forthebadge.com/images/badges/cc-0.svg
[cc-url]: http://creativecommons.org/publicdomain/zero/1.0

[kopimi]: https://kopimi.com
