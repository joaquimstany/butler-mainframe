ButlerMainframe.configure do |config|
  config.host_gateway   = :pcomm
  config.session_path   = '"C:/Program Files (x86)/IBM/Personal Communications/pcsws.exe" "C:/Users/YOUR_USER/AppData/Roaming/IBM/Personal Communications/host3270.ws" /Q /H /S=A'
  # /Q to suppress starting logo
  # /H for hidden session
  # /S=A to select the session A (WARNING: must be the same in session_tag)
  config.session_tag    = 'A'
  config.timeout        = 6000
 #config.env            = 'production'
end

