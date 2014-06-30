rss-frequency [![Build Status](https://travis-ci.org/nikezono/node-rss-frequency.png)](https://travis-ci.org/nikezono/node-rss-frequency)
---

[![NPM](https://nodei.co/npm/rss-frequency.png)](https://nodei.co/npm/rss-frequency/)

## What is it
`RSS-Frequency` is Small Library avarage update frequency of rss feed.

##install

####NPM INSTALL:

    npm install rss-frequency

####package.json:

```
{
  "dependencies":{
    "rss-frequency": "*"
  }
}
```

## Usage

    freq = require 'rss-frequency'
    feed = 'http://github.com/nikezono.atom'
    
    freq feed,(error,interval)->
      console.log interval
      # -> 109127.0623 (second per publishing article)
