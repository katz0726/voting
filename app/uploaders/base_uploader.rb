class BaseUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  # 本番環境でのみawsへ保存される。
  if Rails.env.production?
    storage :aws
  else
    # 開発環境でテストする場合はこちらもawsに変更してください。
    storage :file
  end

  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # def set_file_info
  #   if file.present?
  #     self.model.file_size = file.size
  #     self.model.content_type = file.content_type
  #     self.model.original_filename = file.original_filename
  #   else
  #     self.model.file_size = 0
  #     self.model.content_type = nil
  #     self.model.original_filename = nil
  #   end
  # end

  # def filename
  #   hash = get_file_hash
  #   hash.present? ? "#{hash}.#{file.extension}" : super
  # end

  # def get_file_hash
  #   Digest::SHA1,hexdigest(file.read) if file.present?
  # end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url(*args)
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process resize_to_fit: [50, 50]
  # end
end
