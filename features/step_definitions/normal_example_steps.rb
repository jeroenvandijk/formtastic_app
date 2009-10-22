Given /^the following normal_examples:$/ do |normal_examples|
  NormalExample.create!(normal_examples.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) normal_example$/ do |pos|
  visit normal_examples_url
  within("table > tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following normal_examples:$/ do |expected_normal_examples_table|
  expected_normal_examples_table.diff!(table_at('table').to_a)
end
