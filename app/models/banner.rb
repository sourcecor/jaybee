class Banner < ActiveRecord::Base
  validates :caption, :link, presence: true
  mount_uploader :picture, PictureUploader

  has_many :sub_banners, -> { order(:seq) }, class_name: "Banner", foreign_key: "parent_id", dependent: :destroy
  accepts_nested_attributes_for :sub_banners, allow_destroy: true, :reject_if => lambda { |a| a[:caption].blank? }

  belongs_to :banner, class_name: "Banner", foreign_key: "parent_id"

  before_destroy :remember_id
  after_destroy :remove_id_directory

  protected

  def remember_id
    @id = id
  end

  def remove_id_directory
    FileUtils.remove_dir("#{Rails.root}/public/uploads/banner/#{@id}", :force => true)
  end
end
