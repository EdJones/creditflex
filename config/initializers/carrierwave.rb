CarrierWave.configure do |config|
    
    # Store the files locally for test environment
    if Rails.env.test?
      CarrierWave.configure do |config|
        config.storage = :file
        config.enable_processing = false
      end
    end
	 
	 
	if Rails.env.development?

    CarrierWave.configure do |config|
      config.root = Rails.root
      config.storage :file
	end
    def store_dir
		"#{Rails.root}/public/uploads"
	end


    end
	
    #config.storage = :s3
    config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => '',
    :aws_secret_access_key  => '',
    :region                 => 'us-east-1'
  }
  config.fog_directory  = 'creditflexibility'
  #config.fog_host       = 's3.amazonaws.com'
  config.fog_public     = true
  #config.fog_attributes = {'Cache-Control' => 'max-age=315576000'}  
    
   if Rails.env.development? 
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines
end
#Remove these because they are covered by fog?
  #config.s3_access_key_id = ENV['AKIAI7NSIOUFIDPFRWCA']
  #config.s3_secret_access_key = ENV['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']
  #config.s3_bucket = ENV['creditflexibility']
  
      # hack fix for windows machine due to tmp file permission error
     # per https://github.com/jnicklas/carrierwave/issues/220/
     if ENV['RAILS_ENV'] != 'production'
       #   config.delete_tmp_file_after_storage = false
     end
end
