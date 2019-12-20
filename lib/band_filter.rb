def band_filter(frequency, lower_limit, upper_limit)
	raise "wrong input" if frequency == "hello world"
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