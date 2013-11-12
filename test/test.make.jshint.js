var utils = require('./utils');


describe('test.make.jshint', function() {
  
  it('jshint-help', function(done) {
    utils.execute('make -f jshint.make jshint-help', function() {
      done();
    });
  });

});
