var assert = require('assert')
var sys = require('sys')
var exec = require('child_process').exec;


describe('Generate the Makefiles.', function() {
  it('build.sh', function(done) {
    execute('sh scripts/build.sh', function() {
      done();
    });
  });
});

describe('test apidoc.make', function() {
  it('apidoc-help', function(done) {
    execute('make -f apidoc.make apidoc-help', function() {
      done();
    });
  });
});

describe('test jsdox.make', function() {
  it('jsdox-help', function(done) {
    execute('make -f jsdox.make jsdox-help', function() {
      done();
    });
  });
});

describe('test jshint.make', function() {
  it('jshint-help', function(done) {
    execute('make -f jshint.make jshint-help', function() {
      done();
    });
  });
});

describe('test mocha.make', function() {
  it('mocha-help', function(done) {
    execute('make -f mocha.make mocha-help', function() {
      done();
    });
  });
});

describe('test plato.make', function() {
  it('plato-help', function(done) {
    execute('make -f plato.make plato-help', function() {
      done();
    });
  });
});

describe('test subtool.make', function() {
  it('subtool-help', function(done) {
    execute('make -f subtool.make subtool-help', function() {
      done();
    });
  });
});

describe('cleanup the Project.', function() {
  it('clean.sh', function(done) {
    execute('sh scripts/clean.sh', function() {
      done();
    });
  });
});


// http://nodejs.org/api.html#_child_processes
function execute(command, callback) {
  exec(command, function (error, stdout, stderr) {
    sys.print('\n'+stdout);

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
