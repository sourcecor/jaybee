class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

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
end
