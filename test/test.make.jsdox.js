var utils = require('./utils');


describe('test.make.jsdox', function() {

  it('jsdox-help', function(done) {
    utils.execute('make -f jsdox.make jsdox-help', function() {
      done();
    });
  });
  
});
