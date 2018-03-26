=begin
##################################################################################
URL NAVIGATION
##################################################################################
=end

Then(/^I navigate to url "([^"]*)"$/) do |url|
	#$session.visit url
	visit url
end

Given(/^I am on the homepage$/) do
    if $sourceCode == nil
	#$session.visit $homepage
		visit $homepage
    else
        #$session.visit $homepage + "?sc=" + "#{$sourceCode}"
        visit $homepage + "?sc=" + "#{$sourceCode}"
    end
end

