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
