var utils = require('./utils');


describe('test.make.subtool', function() {
  
  it('subtool-help', function(done) {
    utils.execute('make -f subtool.make subtool-help', function() {
      done();
    });
  });

  it('subtool-version', function(done) {
    utils.execute('make -f subtool.make subtool-version', function() {
      done();
    });
  });

});
