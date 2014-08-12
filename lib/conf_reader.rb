
def getAuthKeys(i)
  key1=""
  key2=""
  value=""
  configfile  = ""  
  case i
    when 0 
      configfile="./etc/conf"
    when 1 
      configfile="./etc/appinfo"
    else 
  end

  puts "CONFIGFILE #{configfile} #{i}"

  File.open(configfile,"r").each_line do |line|  
      lsplit = line.split(':')
      value = lsplit[1].chomp
      case lsplit[0].strip 
        when "key1"
          key1 = value 
        when "key2"  
          key2 = value
        else  
      end
  end
  puts "key1:#{key1}"
  puts "value:#{key2}"
  arr = Array.new 
  arr.push key1
  arr.push key2
  arr
end




