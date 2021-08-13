require 'cgi'
require_relative './src/page'

cgi = CGI.new("html5")
page = Page.new(cgi.params)

cgi.out(type: 'text/html',
        charset: 'UTF-8') do
  
  params = cgi.params

  cgi.html do
    cgi.head do
      cgi.title { "RubyWikiMini" }
    end + 
    cgi.body do
        "<p>#{page.main}</p>"
    end
  end

end