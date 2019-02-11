class Weapon < ApplicationRecord

     has_many :comments
	 mount_uploaders :photos, PhotoUploader
     serialize :photos, JSON #for SQL


end
