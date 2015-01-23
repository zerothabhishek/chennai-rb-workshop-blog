class RBook < ActiveRecord::Base

	def price_data=(pricing_params)
		final_price = {}
    pricing_params.each_pair do |pricing_type, price_value|
      next if price_value.empty?
      final_price[pricing_type] = price_value
    end
    self.pricing = final_price.to_json
	end

	def tag_list=(list)
		self.tags = list.join(', ')
	end

end
