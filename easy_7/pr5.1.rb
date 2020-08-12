# Further exploration

def staggered_case(original_string, letter_case='upcase')
  staggered_caps = []
  
  original_string.chars.each_with_index do |char, index|
    case letter_case
    when 'downcase'
      index.even? ? (staggered_caps << char.downcase) : (staggered_caps << char.upcase)
    when 'upcase'
      index.even? ? (staggered_caps << char.upcase) : (staggered_caps << char.downcase)
    end
  end
  
  staggered_caps.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

p staggered_case('I Love Launch School!', 'downcase') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', 'downcase') #== 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', 'downcase') #== 'IgNoRe 77 ThE 444 NuMbErS'