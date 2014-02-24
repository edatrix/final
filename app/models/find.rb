class Find

  attr_reader :petfinder, :count, :shelter, :breeds

  def initialize
    @petfinder = Petfinder::Client.new('1f7b2c995b345e95a219ee0216c6c2ca', '001140c21ced6653e7812414be872368')
    # @shelter = Shelter.new(find["shelter"])
  end

end
