class PagesController < ApplicationController
	protect_from_forgery with: :exception
	before_action :home

	def home
		@balance = JSON.parse(HTTParty.get("https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_balance").body)['data']['balance']
		@amount0 = JSON.parse(HTTParty.get("https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_transactions&num=5&type=receive").body)['data']['transactions'][0]['amount'].to_i
		#@amount1 = JSON.parse(HTTParty.get("https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_transactions&num=5&type=receive").body)['data']['transactions'][1]['amount']
		#@amount2 = JSON.parse(HTTParty.get("https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_transactions&num=5&type=receive").body)['data']['transactions'][2]['amount']
		#@amount3 = JSON.parse(HTTParty.get("https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_transactions&num=5&type=receive").body)['data']['transactions'][3]['amount']
		#@amount4 = JSON.parse(HTTParty.get("https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_transactions&num=5&type=receive").body)['data']['transactions'][4]['amount']
  	end
end
