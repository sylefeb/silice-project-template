# Silice project template

This template provides automated building of a [Silice](https://github.com/sylefeb/Silice) project through github actions.
This includes an *online* tool to configure your FPGA board from the generated bitstream.

## Quickstart

- Fork this repository,
- customize the [Makefile](Makefile) to setup your board (see first line),
- edit [project.si](project.si) (or leave the default blinky for testing),
- commit and push.

Github will take care of everything and produce a zip containing the bitstream.
The result can be downloaded from the `Actions` tab: click on the latest workflow
(its title is your commit message), then select `Summary` in the left panel.

A link to an online FPGA configuration page is provided.

> Note: for the configuration page to be generated, enable github pages from actions after forking the repo, see https://tinytapeout.com/faq/#my-github-action-is-failing-on-the-pages-part

Alternatively the
bitstream download is at the bottom of the summary in the `Artifacts` section.
If you prefer, download the bitstream, unzip and program your board using
(for instance, recommended) [openFPGALoader](https://github.com/trabucayre/openFPGALoader).

## Behind the scene

This uses two other repositories:
- [silice-for-github](https://github.com/sylefeb/silice-for-github) which compiles and packages Silice for use in github actions.
- [openFPGALoader-online](https://github.com/sylefeb/openFPGALoader-online), which is a modified version of YoWASP's [OpenFPGALoader-web](https://github.com/YoWASP/openFPGALoader-web) that compiled for the web *without* requiring `SharedArrayBuffer` or pthread support.

## Credits
- [TinyTapeout](https://tinytapeout.com/) for the idea of integrating the toolchain in github actions!
- The [YoWASP project](http://yowasp.org/) and more specifically the [OpenFPGALoader-web](https://github.com/YoWASP/openFPGALoader-web) repo for how to compile openFPGALoader with Emscripten.
- The [openFPGALoader](https://github.com/trabucayre/openFPGALoader) project.
- [OSS CAD suite](https://github.com/YosysHQ/oss-cad-suite-build) for packaging all the great tools for many platforms.