class Human
  attr_accessor :name, :hair, :weight, :height, :age, :phone, :email, :nation

  # def initialize(name, hair, weight, height, age, phone, email, nation)
  #   @name = name
  #   @hair = hair
  #   @weight = weight
  #   @height = height
  #   @age = age
  #   @phone = phone
  #   @email = email
  #   @nation = nation
  # end

  def Input
    print "\n\nNhap ten: "
    @name = gets.chomp()
    print "Nhap mau toc: "
    @hair = gets.chomp()
    print "Nhap can nang: "
    @weight = gets.chomp().to_f
    print "Nhap chieu cao: "
    @height = gets.chomp().to_i
    print "Nhap tuoi: "
    @age = gets.chomp().to_i
    print "Nhap SDT: "
    @phone = gets.chomp().to_i
    print "Nhap Email: "
    @email = gets.chomp()
    print "Nhap quoc tich: "
    @nation = gets.chomp()
  end

  def Output
    puts ("\nTen: #{@name}")
    puts ("Mau toc: #{@hair}")
    puts ("Can nag: #{@weight}")
    puts ("Chieu cao: #{@height}")
    puts ("Do tuoi: #{@age}")
    puts ("So dien thoai: #{@phone}")
    puts ("Dia chi email: #{@email}")
    puts ("Quoc tich: #{@nation}")
  end
end

class Student < Human
  attr_accessor :math, :physic, :chemistry

  def initialize
  end

  #
  # def initialize(name, hair, weight, height, age, phone, email, nation, math, physic, chemistry)
  #   super(name, hair, weight, height, age, phone, email, nation)
  #   @math = math
  #   @physic = physic
  #   @chemistry = chemistry
  # end

  def Input
    super
    print "Nhap diem toan: "
    @math = gets.chomp().to_i
    print "Nhap diem ly: "
    @physic = gets.chomp().to_i
    print "Nhap diem hoa: "
    @chemistry = gets.chomp().to_i
  end

  def Output
    super
    puts "Diem toan: #{@math}"
    puts "Diem ly: #{@physic}"
    puts "Diem hoa: #{@chemistry}"
  end

  def dtb
    tb = ((@math.to_i + @physic.to_i + @chemistry.to_i).to_f / 3).round(1)
    return tb
  end
end

class Array
  def sort_by_dtb_desc
    sort_by{|x| Student.new().dtb}.reverse()
  end
end

class DanhSach
  def danhSach
    list = Array.new
    print "Nhap so sinh vien can them: "
    students = gets.chomp().to_i
    students.times do |i|
      s = Student.new()
      s.Input()
      s.Output()
      puts ("Diem trung binh sinh vien thu #{i} la: #{s.dtb}")
      list.insert(i, s.name)
    end

    puts "\n\nDanh sach sinh vien chua sap xep: #{list.join(', ')}"
    puts "\nDanh sach sinh vien da sap xep: #{list.sort_by_dtb_desc.join(', ')}"
  end
end

danhsach = DanhSach.new
danhsach.danhSach

