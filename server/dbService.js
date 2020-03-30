const express = require('express');
const { postgraphile } = require('postgraphile');
const cors = require('cors');

require('dotenv').config();

function initDBService (host) {
  const dbService = express();

  dbService.use(cors());

// add db service to the server
  dbService.use(postgraphile(
    process.env.DB_CON_STRING,
    'public',
    {
      watchPg : true,
      graphiql : true,
      enhanceGraphiql : true,
    }
  ));

// Listen the DB service
  dbService.listen(process.env.DB_SERVICE_PORT, host);
}

module.exports = initDBService;
