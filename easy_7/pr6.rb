UPPERCASE_LETTERS = ('A'..'Z')
LOWERCASE_LETTERS = ('a'..'z')

def staggered_case(original_string, count_non_letter_chars='false' )
  staggered_caps = []
  counter = 0
  
  original_string.chars.each do |char|
    staggered_caps << char.upcase if counter.even?
    staggered_caps << char.downcase if counter.odd?
    
    case count_non_letter_chars
    when 'false'
      counter += 1 if UPPERCASE_LETTERS.include?(char) || LOWERCASE_LETTERS.include?(char)
    when 'true'
      counter += 1
    end
  end
  
  staggered_caps.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

p staggered_case('I Love Launch School!', 'true') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', 'true') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', 'true') == 'IgNoRe 77 ThE 444 NuMbErS'