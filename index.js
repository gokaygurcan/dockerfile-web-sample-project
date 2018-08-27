const express = require('express');

const app = express();

app.get('/', (req, res) => {
    res.json({
        timestamp: new Date().valueOf()
    });
});

app.listen(process.env.PORT || 3000, () => {
    console.log('started...');
});
