const express = require('express');
// eslint-disable-next-line  import/no-unresolved
const ignGpao = require('ejs-ign');

const app = express();

// set the view engine to ejs
app.set('view engine', 'ejs');

// set the resources folders
app.set('views', ignGpao.viewFolder());
app.use(express.static(ignGpao.scriptFolder()));
