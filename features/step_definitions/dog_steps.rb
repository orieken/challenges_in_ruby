Given(/^I create a Dog$/) do
  @my_dog = Dog.new({name: 'Sparky'})
end

Then(/^there should be one dog in the world$/) do
  expect(instance_variables.size).to eql 3
end

Then(/^my dog should be in the world$/) do
  expect(instance_variables).to eql [:@__cucumber_runtime, :@__natural_language, :@my_dog]
end

Given(/^I create my other dog$/) do
  @my_dog = Dog.new({name: 'Spot'})
end

Then(/^there should be two dogs in the world$/) do
  expect(instance_variables.size).to eql 4
end