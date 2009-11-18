require 'blankslate'

class VCR < BlankSlate
  
  # Constructeur
  def initialize
    @messages = []
  end
  
  # Capture tous les messages sur l'objet
  def method_missing(method, *args, &block)
    @messages << [method, args, block]
  end
  
  # Redirige les messages stockés sur un objet
  def play_back_to(obj)
    @messages.each do |method, args, block|
      obj.send(method, *args, &block)
    end
  end
  
  # Support for irb
  def inspect
    "VCR inspect (triggered by irb)"
  end
end