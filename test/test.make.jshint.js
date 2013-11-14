var utils = require('./utils');


describe('test.make.jshint', function() {
  
  it('jshint-help', function(done) {
    utils.execute('make -f test/files/jshint/Makefile jshint-help', function() {
      done();
    });
  });

  it('jshint-version', function(done) {
    utils.execute('make -f test/files/jshint/Makefile jshint-version', function() {
      done();
    });
  });

  it('jshint', function(done) {
    utils.execute('make -f test/files/jshint/Makefile jshint', function() {
      done();
    });
  });

});
