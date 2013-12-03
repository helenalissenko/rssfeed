class RssControllerController < ApplicationController
	def sendMail
		UserMailer.welcome_email().deliver
	end 

	def rss
		require 'rss'
		@rss = RSS::Parser.parse(open('http://blogs.nasa.gov/stationreport/feed/').read, false)
	end
end
