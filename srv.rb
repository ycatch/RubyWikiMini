# srv.rb
# 
# $ ruby srv.rb
# http://127.0.0.1:8080/index.html
# http://127.0.0.1:8080/cgi?a=hoge

require 'webrick'
srv = WEBrick::HTTPServer.new({
    :DocumentRoot => './',
    :BindAddress => '127.0.0.1',
    :Port => 8080,
    :CGIInterpreter => 'C:\Ruby27-x64\bin\ruby.exe'     # for Windows
})
srv.mount('/cgi', WEBrick::HTTPServlet::CGIHandler, './cgi.rb')
trap("INT"){ srv.shutdown }
srv.start