class SinhVien
  attr_accessor :msv, :ten, :tuoi, :diachi
  def initialize(msv, ten, tuoi, diachi)
    @msv = msv
    @ten = ten
    @tuoi = tuoi
    @diachi = diachi
  end

  def to_s
    puts "msv: #{@msv}, ten: #{@ten}, tuoi: #{@tuoi}, dia chi: #{@diachi}"
  end

  def nhapDiem
    puts "Nhap diem toan ly hoa: "
    t = gets.chomp
    l = gets.chomp
    h = gets.chomp
    dtb = ((t.to_i + l.to_i + h.to_i).to_f / 3).round(1)
    puts ("Diem trung binh cua sinh vien la: #{dtb}")
  end
end

sinhvien1 = SinhVien.new(1, "minh", 21, "Ninh Hoa")
sinhvien1.to_s
sinhvien1.nhapDiem