// We need this to build our post string
var querystring = require('querystring');
var http = require('http');
var fs = require('fs');

function PostAnswer(newAnswer) {
    // Build the post string from an object
    var post_data = querystring.stringify({
        "author": "https://try-api.lightsidelabs.com/api/authors/1",
        "answer_set": "https://try-api.lightsidelabs.com/api/answer-sets/3",
        'text' : newAnswer
    });

    // An object of options to indicate where to post to
    var post_options = {
        host: 'https://try-api.lightsidelabs.com/',
        port: '80',
        path: 'api/answers/',
        method: 'POST',
        headers: {
            "Authorization": "Token ded435f184a304a4d1e3a87c3d9739fc6e2ba1bc", //fake token from Lightside API Reference
            "Content-Type": "application/json"
        }
    };

    // Set up the request
    var post_req = http.request(post_options, function(res) {
        res.setEncoding('utf8');
        res.on('data', function (chunk) {
            console.log('Response: ' + chunk);
        });
    });
    // post the data
    post_req.write(post_data);
    post_req.end();
}
