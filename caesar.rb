  def caesar_cipher(str, shift)
    strarr = str.split('')
    strarr.map! {|c|
      if (c.ord<=90)
        if(c.ord+shift>90)
          (c.ord+shift-26).chr
        else
          (c.ord+shift).chr
        end
      elsif (c.ord<=122)
        if(c.ord+shift>122)
          (c.ord+shift-26).chr
        else
          (c.ord+shift).chr
        end
      end
    }
    strarr = strarr.join('')
  end