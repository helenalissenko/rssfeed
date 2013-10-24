class RssControllerController < ApplicationController
	def rss
		require 'rss'
		@rss = RSS::Parser.parse(open('http://blogs.nasa.gov/stationreport/feed/').read, false)
	end
end
