class User < ActiveRecord::Base

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
    # user = self.find_or_create_by_provider_and_uid(auth_data["provider"], auth_data["uid"])
    # if user.name != auth_data["user_info"]["name"]
    #   user.name = auth_data["user_info"]["name"]
    #   user.save
    # end
    # return user
  end

end
