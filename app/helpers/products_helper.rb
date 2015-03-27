module ProductsHelper
	def print_price(price)
		# format("INR %.2f", price)
		number_to_currency price
	end

	def print_stock(stock, requested)
		if stock <=0
			return "Out of Stock"
		elsif stock < requested
			return content_tag(:span, "Insufficient Stock (#{stock})", class: 'low_stock')
		elsif stock > requested
			return content_tag(:span, stock, class: 'in_stock')
		end
			



		if stock > 0
			return content_tag(:span, stock, class: 'in_stock')
		else
			return "Out of Stock"
		end
	end


end