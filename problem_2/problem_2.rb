def time
  start = Time.now
  yield
  puts "This code took #{Time.now - start} seconds to run"
end

time do
  second_last = 0
  last = 1
  sum = 0

  until last >= 4000000
    tmp_last = last + second_last

    second_last = last
    last = tmp_last

    if last % 2 == 0
      sum = sum + last
    end
  end

  puts "The sum of the even-valued terms within the Fibornacci sequence below four million is #{sum}"
end
