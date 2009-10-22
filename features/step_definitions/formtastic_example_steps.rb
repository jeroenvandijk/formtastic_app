Given /^the following formtastic_examples:$/ do |formtastic_examples|
  FormtasticExample.create!(formtastic_examples.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) formtastic_example$/ do |pos|
  visit formtastic_examples_url
  within("table > tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following formtastic_examples:$/ do |expected_formtastic_examples_table|
  expected_formtastic_examples_table.diff!(table_at('table').to_a)
end
