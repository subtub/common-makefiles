var utils = require('./utils');


describe('test.make.plato', function() {
  
  it('plato-help', function(done) {
    utils.execute('make -f plato.make plato-help', function() {
      done();
    });
  });

  it('plato-version', function(done) {
    utils.execute('make -f plato.make plato-version', function() {
      done();
    });
  });

  it('plato', function(done) {
    utils.execute('make -f test/files/plato/Makefile plato', function() {
      done();
    });
  });

});
