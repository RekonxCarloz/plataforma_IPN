const express = require('express');
const app = express();
const path = require('path');

// Settings
app.set('port', 8080);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

// middlewares


// routes
app.use(require('./routes/index'));

// Listening server
app.listen(app.get('port'), () => {
    console.log('Server listo', app.get('port'));
});
