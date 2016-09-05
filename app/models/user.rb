class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable, :omniauth_providers => [:facebook, :google_oauth2]
  # 購物車
  has_many :carts, dependent: :destroy

  # 訂單
  has_many :orders, dependent: :destroy

  # 對話
  has_many :conversations, :foreign_key => :sender_id

  # 若 autosave 選項為 true，Rails 會在儲存父物件時，自動保存子物件。如子物件標記為刪除，也會在儲存時自動刪除。
  # dependent :destroy 刪除關聯
  has_one :jcoinm, dependent: :destroy, autosave: true

  validates :nickname, :presence => true, :uniqueness => true

  after_save :create_jcoinm_if_not_exist

  def create_jcoinm_if_not_exist
    # 使用者註冊時，要順便新增一筆 jcoinm , jcard_id = 西元年後兩碼+月兩碼+四碼流水號
    if self.jcoinm.nil?
      yymm = Time.now.strftime("%y%m")
      jcard_id = Jcoinm.where('substring(jcard_id, 1,4)=?', yymm).maximum(:jcard_id)

      if jcard_id.nil?
        jcard_id = Time.now.strftime("%y%m") << "0001"
      else
        jcard_id = jcard_id.to_i + 1
      end

      self.create_jcoinm(jcard_id: jcard_id)
    end
  end

  def self.google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(:provider => access_token.provider, :uid => access_token.uid ).first
    if user
      return user
    else
      registered_user = User.where(:email => access_token.info.email).first
      if registered_user
        return registered_user
      else
        user = User.create(nickname: data["name"],
                           provider:access_token.provider,
                           email: data["email"],
                           uid: access_token.uid ,
                           password: Devise.friendly_token[0,20],
                           confirmed_at: DateTime.now.strftime("%Y-%m-%d %T")

        )
      end
    end
  end

  def self.facebook_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.nickname = auth.info.name   # assuming the user model has a name
      user.confirmed_at = DateTime.now.strftime("%Y-%m-%d %T")
      # user.image = auth.info.image # assuming the user model has an image
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end
end
