# SPDX PDF

This repository holds the LaTeX sources for the PDF edition of the SPDX specification, the open standard for Software Bill of Materials.

To see the official release of the SPDX specification, please visit the [SPDX website](https://spdx.dev/specifications).

**[Download the generated PDF that corresponds to the most recent commit of this repository](https://nightly.link/seabass-labrax/spdx-pdf/workflows/build.yaml/main/spdx-spec.zip)**

## Building

* Make sure you have the Trueno typeface installed to a location where LaTeX can find it (typically `~/.fonts/` for Linux systems).

* Install the required LaTeX compiler, packages and their dependencies: on Debian systems, you can do this with `sudo apt-get install -y texlive-full texlive-fonts-extra texlive-xetex fonts-jetbrains-mono python3-pygments rubber`.

* Generate the PDF (`spdx-spec.pdf`) by running `rubber --unsafe -c 'setlist arguments -shell-escape' --module=xelatex spdx-spec.latex`.

  * Rubber is a tool that runs the LaTeX compiler enough times to make sure that the table of contents and other automatic sections are generated correctly.
  * `--unsafe -c 'setlist arguments -shell-escape'` allows the LaTeX document to call the 'Pygments' Python package, which colour-codes code and data snippets.
  * `--module=xelatex` tells Rubber to call the XeTeX implementation of LaTeX, which supports modern typeface formats among other features.
