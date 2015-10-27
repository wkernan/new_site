class PagesController < ApplicationController
	protect_from_forgery with: :exception
	before_action :home
	require 'block_io'
	BlockIo.set_options :api_key=> 'ee20-9e07-c4d4-5258', :pin => 'Hookem99', :version => 2

	def home
		@balance = HTTParty.get("https://block.io/api/v2/get_balance/?api_key=ee20-9e07-c4d4-5258")['data']['available_balance'].to_i
		@donations = HTTParty.get("https://block.io/api/v2/get_transactions/?api_key=ee20-9e07-c4d4-5258&type=received")['data']['txs'][0]['amounts_received'][0]['amount'].to_i
		#@balance = HTTParty.get("https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_balance")['data']['balance']
		#@amount0 = HTTParty.get("https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_transactions&num=5&type=receive")['data']['transactions'][0]['amount'].to_i
		#@amount1 = JSON.parse(HTTParty.get("https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_transactions&num=5&type=receive").body)['data']['transactions'][1]['amount']
		#@amount2 = JSON.parse(HTTParty.get("https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_transactions&num=5&type=receive").body)['data']['transactions'][2]['amount']
		#@amount3 = JSON.parse(HTTParty.get("https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_transactions&num=5&type=receive").body)['data']['transactions'][3]['amount']
		#@amount4 = JSON.parse(HTTParty.get("https://www.dogeapi.com/wow/v2/?api_key=1e0zh9wruemcmom3r4kml92kg&a=get_transactions&num=5&type=receive").body)['data']['transactions'][4]['amount']
		#@balance2 = HTTParty.get("https://dogechain.info/chain/Dogecoin/q/addressbalance/DHRVaPLM9c5idu3nKbKN8m182v1Kjqsmoq")
  	end
end
