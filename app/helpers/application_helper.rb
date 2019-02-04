module ApplicationHelper
	def process_text(str, column_number)
		if str != nil
		  	if str.length <= column_number
				return str
			end
			space = str[0..column_number].rindex(" ")	
			if space
				return str[0..space-1] + "\n" + process_text(str[space+1..-1], column_number)
			else
				return str[0..column_number-1] + "\n" + process_text(str[column_number..-1], column_number)
			end
		else
			return ""
		end
 	end
end
