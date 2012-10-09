class Zombie < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessible :graveyard, :name, :nickname, :level, :date_of_death,
  		:hit_points, :description, :active, :wins, :losses, :creator_id, :weapon

  validates :name, :presence=>true, :uniqueness=>true
  validates :active, :presence=>true
  validates :wins, :presence=>true
  validates :losses, :presence=>true
  validates :weapon, :presence=>true

  has_many :tweets, :dependent => :destroy
  belongs_to :creator, :class_name=>'Zombie'

  after_initialize :init

  def init
    self.hit_points ||= 100
    self.level ||= 1
  end
end
