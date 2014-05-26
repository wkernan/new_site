class PagesController < ApplicationController
	protect_from_forgery with: :exception
	before_action :home

	def home
		@balance = HTTParty.get("https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_balance")['data']['balance']
		@amount0 = HTTParty.get("https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_transactions&num=5&type=receive")['data']['transactions'][0]['amount'].to_i
		@amount1 = HTTParty.get("https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_transactions&num=5&type=receive")['data']['transactions'][1]['amount'].to_i
		@amount2 = HTTParty.get("https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_transactions&num=5&type=receive")['data']['transactions'][2]['amount'].to_i
		@amount3 = HTTParty.get("https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_transactions&num=5&type=receive")['data']['transactions'][3]['amount'].to_i
		@amount4 = HTTParty.get("https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_transactions&num=5&type=receive")['data']['transactions'][4]['amount'].to_i
		@balance2 = HTTParty.get("https://dogechain.info/chain/Dogecoin/q/addressbalance/DHRVaPLM9c5idu3nKbKN8m182v1Kjqsmoq")
  	end
end
