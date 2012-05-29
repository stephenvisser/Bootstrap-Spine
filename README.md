#Bootstrap + Spine

This is also an example of how Route handling should be controller-centric. The architectural composition of the app is more flexible, concise and powerful as a result.

###[Test it out:](http://stephenvisser.github.com/Bootstrap-Spine)

Change the URL manually (#c, #b/b, etc) and see how the app changes

###On your own:

Note that this example is not using Spine.js proper, but a [forked version](https://github.com/stephenvisser/spine) of my own which allows each controller to act independently to global route changes.

 __NOTE: All commands MUST be made in project root directory__
 
`npm install .`  ::: Install spine to the node_modules directory

`hem server` ::: [http://localhost:9294](http://localhost:9294)

__---OR---__

`hem build -debug` ::: Builds the app to the public directory where you can copy the files or run `open public/index.html`