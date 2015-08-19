#!/usr/bin/env node

var prompt = require('prompt');
var fs = require("fs");

var init = function() {
  var args = process.argv.slice(2);
  var dir;
  if (args.length === 1) {
    dir = args[0];
    var exists = fs.existsSync(dir);
    if (exists) {
      console.error("Folder already exists");
      return;
    } else {
      fs.mkdirSync(dir);
    }
  } else {
    dir = ".";
  }

  prompt.start();

  prompt.get(['domain'], function(err, result) {
    fs.mkdirSync(dir + "/" + "depictions");
    fs.mkdirSync(dir + "/" + "debs");
    fs.writeFileSync(dir + "/CNAME", result.domain);
    fs.writeFileSync(dir + "/README.md", "# Cydia Repo: " + result.domain);
    fs.createReadStream(__dirname + "/../templates/add.sh").pipe(fs.createWriteStream(dir + "/add.sh"));
  });
}

init();

module.exports = init;