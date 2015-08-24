## Intro

Setting up Boomerang can be quite confusing for some people, especially those with little too no experience with the tech and software that it uses. I've decided to write a full tutorial for setting up Boomerang, including installing the necessary software, customizing your repository, and managing your packages.

## Build Env/Theos Setup

To start off, we're going to need to figure out what platform you are on. 

If you are using Windows, you likely already have a build environment for making Tweaks setup. If this is not the case, you can follow /u/coolstarorg's awesome tutorial on how to [setup Theos with Windows](https://coolstar.org/theos.pdf).

If you're on a Mac, I don't own a Mac, so you're going to need to figure out how to [setup your build environment](http://iphonedevwiki.net/index.php/Theos/Setup), which can also most likely be accomplished with a theos installation.

If you are on Linux, there's a variety of distributions that will require different installations, but I have found that both the theos [setup guide](http://iphonedevwiki.net/index.php/Theos/Setup) and Coolstar's pre-configured theos [installation zip](https://www.reddit.com/r/jailbreak/comments/2cm08q/preconfigured_theos_for_linux_with_arm64_support/) have been very useful in getting it running successfully.

If you aren't able to get theos working correctly, Google can likely be very helpful with any issues, or you can ask in /r/jailbreakdevelopers. If you are setting up a repository, you should probably already have an idea of how to get theos working and how to make tweaks, so little support for that will be provided here.

Now that we have a working theos installation, we can move on to setting up the web repository.

## Guide

1. First you're going to need to create a [Github](https://github.com) account. Make sure to provide a valid email, and later confirm it. If you do not know how to use [git](https://git-scm.com/), you should take a minute to learn the basic commands. It is a necessity for this tutorial, but also a very useful tool for other projects.

2. Now we're going to want to create a new Github Repository for your Cydia repository. You can use [this](https://github.com/new) link or click the "+" in the navigation bar of Github, and create a new repository from there.
  * You will likely want to name it something to represent your repository, such as *myrepo.example.com*

3. In order to make this tutorial as simple as possible, we'll use the example Boomerang repository to create foundation of your custom repository. Download the [zip file](https://github.com/Jake0oo0/boomerang.jakes.site/archive/gh-pages.zip) of [this repository](https://github.com/Jake0oo0/boomerang.jakes.site) and extract it to somewhere on your system.

4. cd to the directory that you downloaded the archive file to. Here you will find all the files necessary to create your repository. Don't worry, all of the content is customizable if you decide to do so.

5. Before we get to managing the packages in your repository, let's customize it, and make everything unique, so that it doesn't look the same as everyone else that uses this tutorial.
  * First, we'll want to change the *CydiaIcon.png* to something different. The icon can range in size from *96x96*, *64x64*, or *32x32*. It will be displayed at the latter res in Cydia.
  * Next, we can change the information in the *Release* file. The origin, label, and description are all used in separate places in Cydia. The orgin is shown at the bottom of packages, the label is used in the source list, along with the description.
  * If you have a custom domain, you're going to want to configure that using this Github [guide](https://help.github.com/articles/setting-up-a-custom-domain-with-github-pages/). Also make sure to change the *CNAME* file to reflect your own domain. 
  * If you do **not** have a custom domain, change the content to match the URL: *https://<github username>.github.io/<github repository name>* This URL will allow Boomerang to automatically generate depiction links.
  * If you choose to, you can also edit all of the files in the depictions folder to display a layout of your choosing. All custom CSS is put in the HTML header in order to reduce HTTP requests.

6. Now that we have a customized and unique repository, we can get to the most important part of a repository, the packages! Boomerang provides a *repo.sh* script for super-easy and automated package management.
  * We're going want to remove the example files in the *images* and *debs* folders. We'll start by adding a package with the command *./repo.sh add <package> <.deb file> If an example would help: *./repo.sh add com.jake0oo0.instamute ~/tweaks/instamute/com.jake0oo0.instamute.deb* The script will copy the file, and rename it to match the package automatically.
  * Now we can work on adding the information to the depictions that you see when viewing a package in Cydia.
  * Open the *packages* directory of the repository, and add rename one of the example JSON files to match your package. Now open it with a text editor, and edit the information to reflect your package. All the fields of the JSON file are documented [here](https://github.com/Jake0oo0/boomerang#example-package-file-instamute). Make sure that your JSON is [valid](http://jsonlint.com/) before saving it.
  * When adding more packages, you can copy the example files and edit them the same as above.
  * Boomerang will automatically generate all necessary files for Cydia, including *Packages*, *Packages.bz2*, and *Packages.gz*. If you want to manually edit these files, you can but the script will override them, so I would suggest making your edits to the script instead.

7. Everything is now customized, and your packages are added to the repository. It is time to push the repository to Github. In your repository, run the following commands:
    * *git add -A*
    * *git commit -am "Initial commit"*
    * *git remote add origin <github repository clone URL>* (info on this URL [here](https://help.github.com/articles/which-remote-url-should-i-use/))
    * *git push -u origin gh-pages*

8. With the previous commands, you pushed your repository to Github. If you encountered any errors, try using Google to find a solution, or ask here. Your repository will always be accessible at the URL *https://<username>.github.io/<repository name>*. If you used a custom domain, it should also be accessible there after some time. This URL can be added to Cydia for access to the packages.

My example repository is located at [https://cydia.jakes.site](https://cydia.jakes.site), the example boomerang repository code is located [here](https://github.com/Jake0oo0/boomerang.jakes.site), and the NPM module for creating a Boomerang repository from scratch is located [here](https://github.com/Jake0oo0/boomerang). 

## Closing

I realize that this is a long tutorial, but I feel that it's better to explain the steps, rather than just listing them. Boomerang is really simple to use once you get the hang of it, and the automatic package management makes it easy to quickly update your packages. The tutorial is obviously much easier if you have a knowledge of git, Github, and already have a working build environment for theos, as it also requires the packages used with Boomerang. 

If you have any questions, comments, concerns, or you would like to contribute, please leave a reply, open an issue on [Github](https://github.com/Jake0oo0/boomerang/issues), or shoot me a PM/email, and I'll try my best to point you in the right direction. 