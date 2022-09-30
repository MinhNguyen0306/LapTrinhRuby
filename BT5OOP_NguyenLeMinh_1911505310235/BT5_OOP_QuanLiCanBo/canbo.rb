class Canbo
  attr_accessor :ten, :tuoi, :gioitinh, :diachi
  def Input
    print "Nhap ho ten: "
    @ten = gets.chomp
    print "Nhap tuoi: "
    @tuoi = gets.chomp
    print "Nhap gioi tinh: "
    @gioitinh = gets.chomp
    print "Nhap dia chi: "
    @diachi = gets.chomp
  end

  def Output
    puts ("Ho ten can bo: #{@ten}")
    puts ("Tuoi can bo: #{@tuoi}")
    puts ("Dia chi can bo: #{@diachi}")
    puts ("Gioi tinh can bo: #{@gioitinh}")
  end
end
