require './lib/dropbox/lib/dropbox_sdk.rb'

require './lib/conf_reader.rb'
arr = getAuthKeys(1)
APP_KEY = arr[0] 
APP_SECRET = arr[1] 

flow = DropboxOAuth2FlowNoRedirect.new(APP_KEY, APP_SECRET)
authorize_url = flow.start()

def authorize(authorize_url)
  puts '1. Go to: ' + authorize_url
  puts '2. Click "Allow" (you might have to log in first)'
  puts '3. Copy the authorization code'
  print 'Enter the authorization code here: '
  code = gets.strip
  code
end

code = authorize(authorize_url)
access_token, user_id = flow.finish(code)
puts "key1:#{access_token}"
puts "key2:#{user_id}"
