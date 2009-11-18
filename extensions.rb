class Integer
  
  def even?
    (self % 2) == 0
  end
  
end

class String
  
  # Cuts a string if its length is superior to length, and adds '...' if cutted.
  def summarize(length = 100, end_string = '...')
    if self.length >= length 
    	shortened = self[0, length]
  		splitted = shortened.split(/\s/)
  		words = splitted.length
  		splitted[0, words-1].join(" ") + end_string
  	else 
  		self
  	end
  end
  
  def url_friendly
    self.downcase.gsub(/[^[:alnum:]àâéèêïîùç]/,'-').gsub(/-{2,}/,'-')
  end
  
end