var utils = require('./utils');


describe('test.build.js', function() {
  
  it('build.sh - Generate the Makefiles.', function(done) {
    utils.execute('sh scripts/build.sh', function() {
      done();
    });
  });
  
});
