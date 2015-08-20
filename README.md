# Boomerang 

Boomerang is a static Cydia repository that can be run on Github Pages using Jekyll, or anywhere else.

## About

Servers often aren't very cheap, and download bandwidth further raises the cost of Cydia repository servers. In order to counter this, Github Pages can be used to host a Cydia repository. Boomerang provides a very simple installation and update process, along with a modern Bootstrap design.

## Installation

### Node Generator
0. Install the node.js Boomerang generator with ```npm install boomerang-repo -g```
0. Run ```boomerang-init _directory_``` to generate a Boomerang repository.
0. If you are using Github Pages
  0. Create a Github Repository and add the remote
  0. In your new Boomerang directory:
    * Run ```git init```
    * Run ```git add -A``` to add all files
    * Run ```git commit -am "Initial Commit"```
    * Run ```git checkout -B gh-pages``` to checkout the web branch
    * Run ```git push -u origin gh-pages``` to push your changes

### Clone the example repository
0. You can find the example Boomerang repository at the repository [here](https://github.com/Jake0oo0/boomerang-example).
0. Clone the repository and change the remotes. You can now push your changes to your own repository.

## License
MIT

I would prefer that you leave at least one of the links to my [twitter](https://twitter.com/itsjake88) or to the boomerang repository in the depictions.

If you are using Boomerang for your repository, please shoot me an email, as I'd love to list it here!