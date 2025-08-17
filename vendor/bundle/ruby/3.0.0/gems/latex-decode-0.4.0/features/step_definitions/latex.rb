When /^I decode the string ('|")(.*)\1$/ do |quote,string|
  @result = LaTeX.decode(string)
end

Then /^the result should be ('|")(.*)\1$/ do |quote,value|
  expect(@result).to eq(value)
end

# For whitespace or other characters that are hard to read in source code:
Then /^I should get '([^']*)' \+ U\+(\h{4,}) \+ '([^']*)'$/ do |pre,code,post|
  expect(@result).to eq(pre + code.hex.chr(Encoding::UTF_8) + post)
end
