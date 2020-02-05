desc "Fetch currency exchange"
task :fetch_currency_exchange => :environment do 
  require 'nokogiri'
  require 'open-url'


    
    #doc = Nokogiri::HTML(open('https://www.abokifx.com/', :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE))
    url = 'https://www.xe.com'  #/currencyconverter/convert/?Amount=1&From=USD&To=COP
    doc = Nokogiri::HTML(open(url))
    #entries = doc.css('span.converterresult-toAmount').text
    puts doc.css"h1#main-heading.Slogan-sc-1ugjaid-3.sc-bdVaJa.fwxFO"
    product.update(name)
    
    #@formattedrate = entries
    #render template: 'parallel/home'


  
end
#h1 Slogan-sc-1ugjaid-3.sc-bdVaJa .fwxFO