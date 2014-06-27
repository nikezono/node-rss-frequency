###
#
# test.coffee
# Author:@nikezono, 2014/06/27
#
###


# dependency
path = require 'path'
assert = require 'assert'

dependency = null

describe "rss-frequency",->

  it "can compile",->
    dependency = require path.resolve 'lib','frequency'
    assert.notEqual dependency,null
