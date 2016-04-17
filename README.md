# stubbing
Simurate external HTTP resources

!!! UNDERDEVELOPMENT !!!

## Usage (roughly)


### Boot with Docker

$ docker-compose up [-d]

#### environments for configuration

- STUBBING_REDIS_HOST: host of redis, "localhost" is used by default.
- STUBBING_REDIS_PORT: port of redis, 6379 is used by default.


### Add dummy response

    $ vi person.json

```json
{"name" : "Michel", "age" : 15}
```

    $ curl -XPOST localhost:4567/some/external/service?rwait=5 @person.json


#### params
- path: service uri for a stub.
- rwait: maximum randomized seconds to sleep before response.

### Get dummy data from stub server

    $ curl localhost:80/some/external/service | jq .

You will get:

```json
{
  "name": "Michel",
  "age": 15
}
```


## TODO
- headers (json, xml, plains etc ...)
- randomize sleep secs or fixed sleep secs
- management apis (paths, delete, etc ..)




