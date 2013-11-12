var assert = require('assert')
var sys = require('sys')
var exec = require('child_process').exec;

exports.execute = function(command, callback) {
  exec(command, function (error, stdout, stderr) {
    //sys.print('\n'+stdout);

    if (stderr != undefined) {
      sys.print('ERROR: '+stderr);
      assert.ifError(stderr);
    };

    if (error !== null) {
      console.log('exec error: ' + error);
      assert.ifError(error);
    }
    callback();
  });
};
