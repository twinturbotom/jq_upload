S3DirectUpload.config do |c|
  c.access_key_id = ENV["S3_UPLOADER_ACCESS_KEY_ID"]       # your access key id
  c.secret_access_key = ENV["S3_UPLOADER_SECRET_ACCESS_KEY"]   # your secret access key
  c.bucket = ENV["S3_UPLOADER_BUCKET"]             # your bucket name
end
