threads = []
10.times do
thread = Thread.new do
10.times { |i| print i; $stdout.flush; sleep(1) }
end
threads << thread
end
threads.each { |thread| thread.join }
threads.each do |thread|
puts "Thread #{thread.object_id} didn't finish within 1s" unless thread.join(1)
end