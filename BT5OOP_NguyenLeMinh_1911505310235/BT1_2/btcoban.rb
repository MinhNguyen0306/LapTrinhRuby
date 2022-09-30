
#1
arr = [1, 3, 5, 8, 10, 12]
puts "Gia tri nho nhat trong mang: "
puts(arr.min)
puts "gia tri lon nhat trong mang: "
puts(arr.max)


#2
def tamgiac(a, b, c)
  if (a + b) > c and (a + c) > b and (b + c) > a
    chuvi = a + b + c
    p = (chuvi.to_f / 2).to_f
    dientich = Math.sqrt(p * (p - a) * (p - b) * (p - c)).round
    puts("Chu vi tam giac: #{chuvi}, Dien tich tam giac: #{dientich}")
  else
    puts "Khong phai ba canh tam giac!!!"
  end
end
tamgiac(2, 2, 3)


#3
def nhapten
  puts "Nhap vao ten cua ban: "
  s = gets.chomp()
  puts("Ten cua ban la #{s}")
end
nhapten

#4
def songuyen
  puts "Nhap ba so a,b,c"
  arr = []
  a = gets.chomp()
  b = gets.chomp()
  c = gets.chomp()
  x = arr.push(a,b,c)
  tang = x.sort!
  giam = x.sort!.reverse
  print "Tang dan: "
  for t in tang
    print ("#{t}")
  end
  print "\n"
  print "Giam dan: "
  for g in giam
    print ("#{g}")
  end
end
songuyen


#5
n = 1.to_i
f = 2.3
c = 'k'
puts ("So nguyen: #{n} , So thuc: #{f} , Ky tu: #{c}")
