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
