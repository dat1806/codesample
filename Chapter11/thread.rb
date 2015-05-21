threads = []
#10.times do
thread = Thread.new do
    10.times { puts "0"; sleep(1)}
end
thread2 = Thread.new do
	10.times { puts "123"; sleep(1)}
end
thread3 = Thread.new do
	10.times {puts "abcdef"; sleep(1)}
end
threads << thread
threads << thread2
threads << thread3
#end
threads.each { |thread| thread.join}