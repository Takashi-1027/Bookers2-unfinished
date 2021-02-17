class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # 作成したUserモデルにdeviseで使用する機能が記述されている20210217
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
