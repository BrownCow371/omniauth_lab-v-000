class User < ActiveRecord::Base

  def self.find_or_create_by_omniauth(auth_hash)
    self.where(:email => auth_hash['info']['email']).first_or_create do |user|
      user.name = auth_hash['info']['name']
      user.image = auth_hash['info']['image']
      user.uid = auth_hash['uid']
    end
  end
end
