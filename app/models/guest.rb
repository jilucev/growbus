class Guest < ActiveRecord::Base

  # email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # validates(:email, :presence => true,
  #                   :length => {:maximum => 40},
  #                   :format => {:with => email_regex})
end