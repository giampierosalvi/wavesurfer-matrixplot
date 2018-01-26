# wavesurfer-matrixplot
Matrix Plot Plugin for Wavesurfer

This plugin adds the possibility to display data in matrix form. The main use is to display feature vectors for automatic speech recognition. It reads the data from a text file with one variable for each column and a data point for each line and it displays it with grayscale tones or color. It is similar to the Data Plot pane, with the follwing exceptions:
* the data is displayed as an image instead of one line per variable
* it is not possible to edit the data
* it is not possible to select a background pane such as spectrogram.

## Installation
* start wavesurfer in order to create the preferences directory
* copy the `matrixplot.plug` file into the plugins directory (in linux systems this is located at `~/.wavesurfer/1.8/plugins/`).
