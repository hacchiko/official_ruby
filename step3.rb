# 3-66
a = []
b = [10,true,"30"]
puts b[0]

puts '-----------------------'
# 3-68
v1 = %w(hoge foo bar)
puts v1.join()
puts v1.join("_")

puts '-----------------------'

a = Array.new(5)
puts a.length
puts Array.new(2){|index| index + 10}

puts '-----------------------'
# 発見
# 配列２つ。そこにaが入る
a = Array.new(2, "a") 
# a[0],a[1]の両方が置き換えられるreprace
a[0].replace("b") 
puts a

# 1つだけ変更
a = Array.new(2){"a"}
a[0].replace("b")
puts a
puts '-----------------------'

# 置き換え
a = [0,1,2,3]
a[1,2] = "a"
p a

puts '-----------------------'

def foo
  return 1,2,3
end

a,b,c = foo

p a
p b
p c

puts '-----------------------'

# for 3-91

a = [2,3,4]
for i in a do
  p i
end

puts '-----------------------'

case 3
when 
    1,2 then; p 1
when 
    3,4 then; p 2
else
    p 3
end

puts '-----------------------'

proc = Proc.new{|x| p x}
proc.call(1)


puts '-----------------------'


# 3-135
lmd = lambda{|x| p x}
lmd = ->(x){p x}
lmd.call(1)

puts '-----------------------'

def func
  proc = Proc.new{return 1}
  proc.call
end

p func

puts '-----------------------'

p1 = ->(x,y){p x + y}

p1.call(1,2)

puts '-----------------------'


# 3-141
[1,2,3].each do |value|
  p value
end

puts '-----------------------'

# each_with_index がよくわからないぞ！
[3,4,5].each_with_index do |value, index|
  p value + index
end

puts '-----------------------'

# ちょっとむずい
{:a => 1, :b => 2}.each do |key, value|
  p "#{key}:#{value}"
end

puts '-----------------------'

# keyのみ必要
{:a => 1, :b => 2}.each_key do |key|
    p "#{key}"
  end
# valueのみ必要
{:a => 1, :b => 2}.each_value do |value|
  p "#{value}"
 end

 puts '-----------------------'

#  ("a".."z").each do |value|
#   p value
#  end

puts '-----------------------'
# 2~4
2.upto(4) do |i|
  p i
end

puts '-----------------------'

# 5~1
5.downto(1) do |i|
  p i
end
  
puts '-----------------------'
# 0~3
4.times do |i|
  p i
end

puts '-----------------------'

# スレッド
t = Thread.new do
  p "start"
  sleep 5
  p "end"
end

p "wait"

puts '-----------------------'

# ファイバ

# f = Fiber.new do
#   (1..3).each do |i|
#     Fiber.yield i
#   end
#   nil
# end

# p f.resume
# p f.resume
# p f.resume
# p f.resume
# p f.resume

3.times do |i|
  Thread.start(i) do |index|
    p "thread-#{index} start"
  end
end

sleep 1

puts '-----------------------'


# ループ脱出

10.times do |i|
  next if i == 5
#   print i, ""
  
end

puts '-----------------------'



