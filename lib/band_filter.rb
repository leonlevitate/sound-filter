def band_filter(frequency, lower_limit)
    frequency.map { |limit| 
      if limit < lower_limit
					lower_limit
			else
				limit
			end        
    }
end