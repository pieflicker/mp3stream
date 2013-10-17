require "mp3info"
class Song < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  belongs_to :user


  before_validation :fill_in_data, on: :create

  protected
  	def fill_in_data

  		Mp3Info.open(self.attachment.current_path) do |mp3|
  			self.track = mp3.tag.title   
  			self.artist = mp3.tag.artist   
			  self.album = mp3.tag.album
			  self.length = mp3.tag.length
			  self.bitrate = mp3.tag.quality
			  
			end

  	end



end




