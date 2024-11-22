var htp = require('http');

htt.createSerever(function (req,res) {
  res.write('Hello word!');
  res.end();
}).listen(8080);
