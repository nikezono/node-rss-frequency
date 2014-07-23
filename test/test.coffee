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
feed = "https://github.com/nikezono.atom"

frequency = null

describe "rss-frequency",->

  it "can compile",(done)->
    frequency = require '../lib/frequency'
    assert.notEqual frequency,null
    done()

  it "can parsing rss feed",(done)->
    frequency feed,(error,score)->
      assert.ok score
      done()

  it "数値が帰る",(done)->
    frequency feed,(error,score)->
      assert.equal typeof score,"number"
      done()
