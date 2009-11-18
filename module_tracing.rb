class Module
  def trace_attr(sym)
    self.module_eval %{
      def #{sym}
	      printf "Accessing %s with value %s\n", "#{sym}", @#{sym}.inspect
	      
	      @#{sym}
      end
    }
  end
end

class Dog
  trace_attr :name
  def initialize(dog_name)
    @name = dog_name
  end
end
