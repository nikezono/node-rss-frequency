###
#
# node-rss-frequency
# Frequency.coffee
# Author:@nikezono
# RSSフィードの更新頻度を算出する
#
####

parser = require 'parse-rss'

module.exports = (feed)->
  articles = parser feed

