class User < ActiveRecord::Base
   belongs_to :team
   has_many :messages

   validates_presence_of :username, :password, :email, :firstname, :lastname 

  def fullname
    firstname + " " + lastname
  end
end
