class PhuongTien
  attr_accessor :id, :hangSX, :namSX, :dongXe, :gia, :bienSo, :mau
  def initialize(id, hangSX, namSX, dongXe, gia, bienSo, mau)
    @id = id
    @hangSX = hangSX
    @namSX = namSX
    @dongXe = dongXe
    @gia = gia
    @bienSo = bienSo
    @mau = mau
  end

  def Input
    puts ("Nhập mã xe: ")
    @id = gets.chomp
    puts ("Nhập hang SX: ")
    @hangSX = gets.chomp
    puts ("Nhập nam SX: ")
    @namSX = gets.chomp
    puts ("Nhập dong xe: ")
    @dongXe = gets.chomp
    puts ("Nhập gia: ")
    @gia = gets.chomp
    puts ("Nhập bien so: ")
    @bienSo = gets.chomp
    puts ("Nhập mau: ")
    @mau = gets.chomp
  end

  def Output
    puts ("\nMa xe: #{@id}")
    puts ("Hang SX: #{@hangSX}")
    puts ("Nam SX: #{@namSX}")
    puts ("Dong xe: #{@dongXe}")
    puts ("Gia: #{@gia}")
    puts ("Bien so: #{@bienSo}")
    puts ("Mau: #{@mau}")
  end
end

# Class O to
# # Class O to
class Oto < PhuongTien
  attr_accessor :soChoNgoi, :kieuDongCo, :nhienLieu, :soTuiKhi, :ngayDangKiem

  def initialize(id, hangSX, namSX, dongXe, gia, bienSo, mau, soChoNgoi, kieuDongCo, nhienLieu, soTuiKhi, ngayDangKiem)
    super(id, hangSX, namSX, dongXe, gia, bienSo, mau)
    @soChoNgoi = soChoNgoi
    @kieuDongCo = kieuDongCo
    @nhienLieu = nhienLieu
    @soTuiKhi = soTuiKhi
    @ngayDangKiem = ngayDangKiem
  end

  def Input
    super
    puts "Nhap so cho ngoi: "
    @soChoNgoi = gets.chomp
    puts "Nhap kieu dong co: "
    @kieuDongCo =gets.chomp
    puts "Nhap nhien lieu: "
    @nhienLieu = gets.chomp
    puts "Nhap so tui khi: "
    @soTuiKhi = gets.chomp
    puts "Nhap ngay dang kiem: "
    @ngayDangKiem = gets.chomp
  end

  def Output
    super
    puts (" so cho ngoi: #{@soChoNgoi}")
    puts " kieu dong co: #{@kieuDongCo}"
    puts " nhien lieu: #{@nhienLieu}"
    puts " so tui khi: #{@soTuiKhi}"
    puts " ngay dang kiem: #{@ngayDangKiem}"
  end
end

class XeMay < PhuongTien
  attr_accessor :congSuat, :dungTich

  def initialize(id, hangSX, namSX, dongXe, gia, bienSo, mau, congSuat, dungTich)
    super(id, hangSX, namSX, dongXe, gia, bienSo, mau)
    @congSuat = congSuat
    @dungTich = dungTich
  end

  def Input
    super
    puts "Nhap cong suat: "
    @congSuat = gets.chomp
    puts "Nhap dung tich: "
    @dungTich = gets.chomp
  end

  def Output
    super
    puts "Cong suat: #{@congSuat}"
    puts "Dung tich binh xang: #{@dungTich}"
  end
end

class XeTai <PhuongTien
  attr_accessor :trongTai

  def initialize(id, hangSX, namSX, dongXe, gia, bienSo, mau, trongTai)
    super(id, hangSX, namSX, dongXe, gia, bienSo, mau)
    @trongTai = trongTai
  end

  def Input
    super
    puts "Nhap trong tai: "
    @trongTai = gets.chomp
  end

  def Output
    super
    puts "Trong tai xe tai: #{@trongTai}"
  end
end

class QuanLyPhuongTien
  attr_accessor :danhsach_235

  def initialize
    @danhsach_235 = Array.new
  end

  def ThemPhuongTien
    puts "Nhap so luong phuong tien can them: "
    soLuong = gets.chomp.to_i

    soLuong.times do |i|
      loop do
        puts "Nhap 'o' de them o to, 'm' de them xe may, 't' de them xe tai: "
        kiTu = gets.chomp()

        case kiTu
        when "o"
          puts ("Nhập mã xe: ")
          id = gets.chomp
          puts ("Nhập hang SX: ")
          hangSX = gets.chomp
          puts ("Nhập nam SX: ")
          namSX = gets.chomp
          puts ("Nhập dong xe: ")
          dongXe = gets.chomp
          puts ("Nhập gia: ")
          gia = gets.chomp
          puts ("Nhập bien so: ")
          bienSo = gets.chomp
          puts ("Nhập mau: ")
          mau = gets.chomp
          puts "Nhap so cho ngoi: "
          soChoNgoi = gets.chomp
          puts "Nhap kieu dong co: "
          kieuDongCo =gets.chomp
          puts "Nhap nhien lieu: "
          nhienLieu = gets.chomp
          puts "Nhap so tui khi: "
          soTuiKhi = gets.chomp
          puts "Nhap ngay dang kiem: "
          ngayDangKiem = gets.chomp
          phuongTien = Oto.new(id, hangSX, namSX, dongXe, gia, bienSo, mau, soChoNgoi, kieuDongCo, nhienLieu, soTuiKhi, ngayDangKiem)
          danhsach_235.push(phuongTien)
        when 'm'
          puts ("Nhập mã xe: ")
          id = gets.chomp
          puts ("Nhập hang SX: ")
          hangSX = gets.chomp
          puts ("Nhập nam SX: ")
          namSX = gets.chomp
          puts ("Nhập dong xe: ")
          dongXe = gets.chomp
          puts ("Nhập gia: ")
          gia = gets.chomp
          puts ("Nhập bien so: ")
          bienSo = gets.chomp
          puts ("Nhập mau: ")
          mau = gets.chomp
          puts "Nhap cong suat: "
          congSuat = gets.chomp
          puts "Nhap dung tich: "
          dungTich = gets.chomp
          phuongTien = XeMay.new(id, hangSX, namSX, dongXe, gia, bienSo, mau, congSuat, dungTich)
          danhsach_235.push(phuongTien)
        when 't'
          puts ("Nhập mã xe: ")
          id = gets.chomp
          puts ("Nhập hang SX: ")
          hangSX = gets.chomp
          puts ("Nhập nam SX: ")
          namSX = gets.chomp
          puts ("Nhập dong xe: ")
          dongXe = gets.chomp
          puts ("Nhập gia: ")
          gia = gets.chomp
          puts ("Nhập bien so: ")
          bienSo = gets.chomp
          puts ("Nhập mau: ")
          mau = gets.chomp
          puts "Nhap trong tai: "
          trongTai = gets.chomp
          phuongTien = XeTai.new(id, hangSX, namSX, dongXe, gia, bienSo, mau, trongTai)
          danhsach_235.push(phuongTien)
        else
          puts "\nKí tự không hợp lệ!!! Nhập lại...\n"
        end

        break if kiTu =='o' or kiTu =='m' or kiTu =='t'
      end
    end
  end

  def XoaPhuongTien(id)
    @danhsach_235.each { |i| danhsach_235.delete(i.id.equal?id)}
  end

  def TimKiemTheo
    puts "Nhập tieu chi can tim kiem: 'h' tim theo hangSX, 'm' tim theo mau, 'b' tim theo bien so"
    kiTu = gets.chomp()
    danhsach_235.each do |i|
      if kiTu == 'h'
        puts "Nhập tên hãng: "
        tenHang = gets.chomp
        if i.hangSX == tenHang
          puts i.Output
        end
      elsif kiTu == 'm'
        puts "Nhập màu: "
        mau = gets.chomp
        if i.mau == mau
          puts i.Output
        end
      elsif kiTu == 'b'
        puts "Nhập biển số: "
        bienSo = gets.chomp
        if i.bienSo == bienSo
          puts i.Output
        end
      else
        puts "Ki tu khong hop le!!"
      end
    end
  end

  def ThongTinPhuongTien
    danhsach_235.each { |i| puts i.Output}
  end
end

class Main
  qlpt = QuanLyPhuongTien.new
  loop do
    puts "=========================================="
    puts "1. Thêm phuong tiện vào danh sách."
    puts "2. Hiển thị danh sách."
    puts "3. Xóa theo id."
    puts "4. Tim kiếm theo hãng sản xuất, màu hoặc biển số"
    puts "5. Thoát chương trình!"
    puts "Nhập lựa chọn của bạn: "


    luaChon = gets.chomp
    case luaChon
    when '1'
      qlpt.ThemPhuongTien
    when '2'
      qlpt.ThongTinPhuongTien
    when '3'
      puts "Nhập id phương tiện cần xóa: "
      idXoa = gets.chomp
      qlpt.XoaPhuongTien(idXoa)
    when '4'
      qlpt.TimKiemTheo
    else
      puts "\nLua chon khong hop le"
    end
    break if luaChon == 5
  end
end

main = Main.new
main