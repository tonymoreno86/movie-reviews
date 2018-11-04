class Movie < ApplicationRecord

  has_attached_file :image,
                    styles: { small: ["125x175#", :jpg, :png] }

  has_many :reviews, dependent: :destroy

  validates_presence_of :title, :released_on, :duration

  validates :description, length: { minimum: 25 }

  validates :total_gross, numericality: { greater_than_or_equal_to: 0 }

  validates_attachment :image,
    :content_type => { :content_type => ['image/jpeg', 'image/png'] },
    :size => { :less_than => 1.megabyte }

  mount_uploader :image_file_names, MyFlixUploader

  RATINGS = %w(G PG PG-13 R NC-17)

  validates :rating, inclusion: { in: RATINGS}

  def flop?
    total_gross.blank? || total_gross < 50000000.00
  end

  def self.released
    where('released_on <= ?', Time.now).order('released_on desc')
  end

  def self.hits
    where('total_gross >= 300000000').order(total_gross: :desc)
  end

  def self.flops
    where('total_gross < 50000000').order(total_gross: :asc)
  end

  def self.recently_added
    order('created_at desc').limit(3)
  end

  def average_stars
    reviews.average(:stars)
  end

  def recent_reviews
    reviews.order('created_at desc').limit(2)
  end
end
