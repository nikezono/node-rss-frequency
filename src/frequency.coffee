###
#
# node-rss-frequency
# Frequency.coffee
# Author:@nikezono
# RSSフィードの更新頻度を算出する
#
####

parser = require 'parse-rss'
_      = require 'underscore'

module.exports = (feed,callback)->
  parser feed,(error,articles)->
    return callback error,null if error
    avr = 0 # unixtime
    dates = _.pluck articles,'pubDate'
    for date,i in dates
      break if dates.length is i+1
      diff = dates[i]/1000 - dates[i+1]/1000
      avr = avr + diff
    avr = avr / dates.length
    return callback null,avr
