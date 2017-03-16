module ItensHelper

	def generatetree
		result = "<ul>"
		Category.where(category_id: nil).each do |category|
			result = generatenode(category, result)
		end
		result += "</ul>"
	end

	def generatenode(father_category, result)
	  result += "<li>" + father_category.name
  	  if father_category.categories or father_category.items
  	  	result += "<ul>"
		father_category.categories.each do |category|
		  result = generatenode(category, result)
		end
  		father_category.items.each do |item|
    	  result += "<li> #{item.name} </li>"
  	 	end
  	 	result += "</ul>"
  	  end
  	  result += "</li>"
  	  return result
	end
end
