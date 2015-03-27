module ProductsHelper
	def print_price(price)
		# format("INR %.2f", price)
		number_to_currency price
	end

	def print_stock(stock, requested=1)
		if stock <=0
			return "Out of Stock"
		elsif stock < requested
			return content_tag(:span, "Insufficient Stock (#{stock})", class: 'low_stock')
		elsif stock > requested
			return content_tag(:span, stock, class: 'in_stock')
		end
	end
end