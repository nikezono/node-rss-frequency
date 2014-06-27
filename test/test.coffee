###
#
# test.coffee
# Author:@nikezono, 2014/06/27
#
###


# dependency
path = require 'path'
assert = require 'assert'

# Feed Repo
feed = "http://tumblr.nikezono.net/rss"

frequency = null

describe "rss-frequency",->

  it "can compile",->
    frequency = require path.resolve 'lib','frequency'
    assert.notEqual frequency,null

  it "can parsing rss feed",->
    freq = frequency feed
    assert.ok freq

  it "数値が帰る",->
    freq = frequency feed
    assert.equal class freq, Number
