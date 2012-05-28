#Bootstrap + Spine

A useful example of web app patterns using Bootstrap and Spine.

Note that this example is not using Spine.js proper, but a [forked version](https://github.com/stephenvisser/spine) of my own which allows each controller to act independently to global route changes.

Test this out by changing the URL manually and see how the app changes. This is COOL!

This is also an example of how Route handling should be controller-centric. It has made the architectural composition of this app flexible and powerful.

###To setup, install the missing node modules

In the __ROOT directory of the project__, run `npm install .`

###To run, install hem globally:

`npm install -g hem`

Then run the hem server __in the ROOT directory of the project__: `hem server`

Then browser to `http://localhost:9294`
