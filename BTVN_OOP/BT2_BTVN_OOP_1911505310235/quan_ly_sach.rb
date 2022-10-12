class TaiLieu
  attr_accessor :maTL, :tenNXB, :soBPH

  def initialize(maTL, tenNXB, soBPH)
    @maTL = maTL
    @tenNXB = tenNXB
    @soBPH = soBPH
  end

  def Info
    puts ("\nMa tai lieu: #{@maTL}")
    puts ("Ten NXB: #{@maTL}")
    puts ("Số bản phát hành: #{@maTL}")
  end
end


class Bao < TaiLieu
  attr_accessor :ngayPH

  def initialize(maTL, tenNXB, soBPH, ngayPH)
    super(maTL, tenNXB, soBPH)
    @ngayPH = ngayPH
  end

  def Info
    super
    puts("Ngay phat hanh: #{@ngayPH}")
  end
end


class Sach < TaiLieu
  attr_accessor :tenTG, :soTrang

  def initialize(maTL, tenNXB, soBPH, tenTG, soTrang)
    super(maTL, tenNXB, soBPH)
    @tenTG = tenTG
    @soTrang = soTrang
  end

  def Info
    super
    puts ("Ten tac gia: #{@tenTG}")
    puts ("So trang: #{@soTrang}")
  end
end


class TapChi < TaiLieu
  attr_accessor :soPH, :thangPH

  def initialize(maTL, tenNXB, soBPH, soPH, thangPH)
    super(maTL, tenNXB, soBPH)
    @soPH = soPH
    @thangPH = thangPH
  end

  def Info
    super
    puts ("So phat hanh: #{@soPH}")
    puts ("Thang phat hanhL #{@thangPH}")
  end
end

####################################################################
####################################################################
####################################################################

class QuanLySach
  attr_accessor :danhSach

  def initialize
    @danhSach = Array.new
  end

  def ThemTaiLieu
    puts "Nhap so luong tai lieu can them: "
    soLuong = gets.chomp.to_i

    soLuong.times do |i|
      loop do
        puts "Nhap 's' de them sach, 'b' de them bao, 't' de them tap chi: "
        kiTu = gets.chomp()

        case kiTu
        when "s"
          puts ("Nhập mã tài lệu: ")
          maTL = gets.chomp.to_i
          puts ("Nhập tên NXB: ")
          tenNXB = gets.chomp.to_s
          puts ("Nhập số bản phát hành sách: ")
          soBPH = gets.chomp.to_i
          puts ("Nhập tên tác giả sách: ")
          tenTG = gets.chomp.to_s
          puts ("Nhập số trang sách: ")
          soTrang = gets.chomp.to_i
          taiLieu = Sach.new(maTL, tenNXB, soBPH, tenTG, soTrang)
          danhSach.push(taiLieu)
        when 'b'
          puts ("Nhập mã tài lệu: ")
          maTL = gets.chomp.to_i
          puts ("Nhập tên NXB: ")
          tenNXB = gets.chomp.to_s
          puts ("Nhập số bản phát hành báo: ")
          soBPH = gets.chomp.to_i
          puts ("Nhập ngày phát hành báo: ")
          ngayPH = gets.chomp.to_i
          taiLieu = Bao.new(maTL, tenNXB, soBPH, ngayPH)
          danhSach.push(taiLieu)
        when 't'
          puts ("Nhập mã tài lệu: ")
          maTL = gets.chomp.to_i
          puts ("Nhập tên NXB: ")
          tenNXB = gets.chomp.to_s
          puts ("Nhập số bản phát hành tạp chí: ")
          soBPH = gets.chomp.to_i
          puts ("Nhập số phát hành tạp chí: ")
          soPH = gets.chomp.to_s
          loop do
            puts ("Nhập tháng phát hành tạp chí: ")
            thangPH = gets.chomp.to_i
            if thangPH > 0 and thangPH < 13
              taiLieu = TapChi.new(maTL, tenNXB, soBPH, soPH, tha)
            end
            break if thangPH > 0 and thangPH < 13
          end
          danhSach.push(taiLieu)
        else
          puts "\nKí tự không hợp lệ!!! Nhập lại...\n"
        end

        break if kiTu=='s' or kiTu=='b' or kiTu=='t'
      end

    end
  end

  def XoaTaiLieu(maTL)
    danhSach.each { |i| danhSach.delete(i.maTL.equal?maTL)}
  end

  def TimKiemTheoLoai
    puts "Nhập loại 's': sách, 'b': báo, 't': tạp chí: "
    kiTu = gets.chomp()
    danhSach.each do |i|
      if kiTu == 's'
        if i.instance_of? Sach
          puts i.Info
        end
      elsif kiTu == 'b'
        if i.instance_of? Bao
          puts i.Info
        end
      elsif kiTu == 't'
        if i.instance_of? TapChi
          puts i.Info
        end
      else
        puts "Ki tu khong hop le!!"
      end
    end
  end

  def ThongTinTaiLieu
    danhSach.each { |i| puts i.Info}
  end
end

ds = QuanLySach.new
ds.ThemTaiLieu
ds.ThongTinTaiLieu
ds.TimKiemTheoLoai