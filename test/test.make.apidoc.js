var utils = require('./utils');


describe('test.make.apidoc', function() {

  it('apidoc-help', function(done) {
    utils.execute('make -f apidoc.make apidoc-help', function() {
      done();
    });
  });
  
});
