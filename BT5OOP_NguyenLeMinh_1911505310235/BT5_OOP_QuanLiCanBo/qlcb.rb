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
    print ("Ho ten can bo: #{@ten}")
    print ("Tuoi can bo: #{@tuoi}")
    print ("Dia chi can bo: #{@diachi}")
    print ("Gioi tinh can bo: #{@gioitinh}")
  end
end

class CongNhan < Canbo
  attr_accessor :bac

  def initialize
    super
    @bac = bac
    if(bac > 10 and bac < 1)
      print "Bac cong nhan khong hop le!!!"
    end
  end

  def Output
    super
    puts "Bac cong nhan : #{@bac}"
  end
end


class KySu < Canbo
  attr_accessor :nganhDaoTao

  def Input
    super
    print "Nhap nganh dao tao ky su: "
    @nganhDaoTao = gets.chomp
  end

  def Output
    super
    puts ("Nganh dao tao cua ky su la: #{@nganhDaoTao}")
  end
end

class NhanVien
  attr_accessor :congViec
  def Input
    super
    print "Nhap cong viec cua nhan vien: "
    @congViec = gets.chomp()
  end

  def Output
    super
    puts ("Cong viec cua nhan vien la: #{@congViec}")
  end
end


class QLCB
  attr_accessor :list
  def initialize
    @list = Array.new
  end

  def ThemCanBo
    list = Array.new
    print "Nhap so can bo can them: "
    cbs = gets.chomp().to_i
    cbs.times do |i|
      cb = Canbo.new()
      cb.Input()
      cb.Output()
      list.push(cb.ten)
    end
  end

  def FindName
    print "Nhap ten can bo can tim: "
    cbName = gets.chomp
    puts "#{list.find(cbName)}"
  end

  def Xuat
    list.each do |value|
      puts "Thong tin can bo: "
      puts "Ho ten: #{value["ten"]}"
      puts "Tuoi: #{value["tuoi"]}"
      puts "Gioi tinh: #{value["gioitinh"]}"
    end
  end
end

qlcb = QLCB.new
qlcb.ThemCanBo
qlcb.FindName
qlcb.Xuat




