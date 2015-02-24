module ProductsHelper
	def print_price(price)
		# format("INR %.2f", price)
		number_to_currency price
	end
end