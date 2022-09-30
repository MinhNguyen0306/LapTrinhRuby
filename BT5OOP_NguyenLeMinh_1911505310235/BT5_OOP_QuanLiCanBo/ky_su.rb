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
