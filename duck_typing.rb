class Duck
  def talk; puts "Quack"; end
end

class DuckLikeObject
  def talk; puts "Kwak"; end
end

flock = [ Duck.new, DuckLikeObject.new ] 

flock.each do |d|
  d.talk
end