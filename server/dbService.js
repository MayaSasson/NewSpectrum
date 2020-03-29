const express = require('express');
const { postgraphile } = require('postgraphile');

function initDBService (host) {
  const dbService = express();

// add db service to the server
  dbService.use(postgraphile(
    'postgress://postgres:NewSpectrum123!@35.223.39.246:5432/newspectrumdb',
    'public',
    {
      watchPg : true,
      graphiql : true,
      enhanceGraphiql : true,
    }
  ));

// Listen the DB service
  dbService.listen(9000, host);
}

module.exports = initDBService;
