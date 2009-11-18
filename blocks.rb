def execute_n_times(times)
  (0...times).each do
    yield
  end
end

def execute_n_times_with_args(times, &block)
  (0...times).each do |time|
    block.call(time)
  end
end