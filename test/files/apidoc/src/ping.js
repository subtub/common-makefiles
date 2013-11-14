/**
 * @api {get} /ping GET ping
 * @apiVersion 1.0.0
 * @apiGroup Ping
 * @apiDescription
 *     Send a ping request to check if the is still working.
 *
 * @apiSuccessExample Success-Response:
 *     HTTP/1.1 200 OK
 *     "pong"
 *
 * @apiExample Example usage:
 *     curl -i http://localhost:8080/ping
 */
module.exports = function(req, res, next) {
  res.send('pong');
  return next();
};
