class Tracing
  
  def self.method_added(name)
    puts "Method #{name} added to #{self.name} class."
  end

  def new_method
    # Yada yada yada
  end
end