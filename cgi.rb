require 'cgi'
require './main'

cgi = CGI.new("html5")
main = Main.new
cgi.out do
  
  params = cgi.params

  cgi.html do
    cgi.head do
      cgi.title { "RubyWikiMini" }
    end +
    cgi.body do
      cgi.h1{ "RubyWikiMini" } + 
      cgi.p{ params } +
      cgi.p{ main::hello }
    end
  end
end