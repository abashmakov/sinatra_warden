class User
  @@id = 0
  @@users = []

  def self.create(email:, password:)
    @@id += 1
    new_user = new(email, password)
    @@users << new_user
    new_user
  end

  def self.authenticate(email, password)
    user = @@users.select {|u| u.email == email && u.password == password}
    user.empty? ? nil : user.first
  end

  def self.get(user_id)
    user = @@users.select {|u| u.id == user_id}
    user.empty? ? nil : user.first
  end

  def initialize(email, password)
    @email = email
    @password = password
    @id = @@id
  end

  attr_reader :email, :password, :id
end
