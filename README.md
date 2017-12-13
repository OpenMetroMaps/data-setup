# Data Setup

This repository contains resources and scripts that allow you to obtain
OpemMetroMaps models from other data sources. In particular it allows you
to download some data for a region from OpenStreetMap, extract the relevant
data and build a model from that.

The files and scripts are organized in directories for the different cities
and regions. For example the [berlin](berlin) directory contains the files
for Berlin.

## Geometry data

Use this to inspect the city boundaries (assuming you have the
`geometry-preview` executable from
[Jeography](https://github.com/topobyte/jeography-gis) on your path):

    geometry-preview $(find . -name "*.wkt" -or -name "*.smx")

## Running scripts

These scripts are designed for Linux/macOS. Be sure to adapt
[paths.sh](paths.sh) to let the variables point to the location of your
main OpenMetroMaps installation.

Downloading and extracting data:

    ./berlin/extract.sh

Inspect the model:

    ./berlin/inspect-model.sh

Build the model:

    ./berlin/build-model.sh
