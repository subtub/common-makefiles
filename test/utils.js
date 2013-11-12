var assert = require('assert')
var sys = require('sys')
var exec = require('child_process').exec;

exports.execute = function(command, callback) {
  exec(command, function (error, stdout, stderr) {
    //sys.print('\n'+stdout);

    // if (stderr !== undefined) {
    //   sys.print('ERROR: '+stderr);
    //   assert.ifError(stderr);
    // }
    // else
    if (error !== null) {
      console.log('exec error: ' + error);
      assert.ifError(error);
    }
    else {
      assert.ok(true);
    }

    callback();
  });
};
