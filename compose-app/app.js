const http = require('http');
const redis = require('redis');

const client = redis.createClient({
  socket: {
      host: 'redis-db',
          port: 6379
            }
            });

            client.connect();

            const server = http.createServer(async (req, res) => {
              let count = await client.incr('visits');
                res.writeHead(200, { 'Content-Type': 'text/plain' });
                  res.end(`Hello Innocent! This page has been visited ${count} times.\n`);
                  });

                  server.listen(3000, () => {
                    console.log('Server running on port 3000');
                  });