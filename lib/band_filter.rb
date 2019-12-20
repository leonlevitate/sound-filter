def band_filter(frequency, lower_limit, upper_limit)
    frequency.map { |limit| 
      if limit < lower_limit
					lower_limit
			elsif limit > upper_limit
				upper_limit
			else
				limit
			end        
    }
end