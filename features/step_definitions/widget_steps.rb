Given(/^I create a widget$/) do
  @my_widget = Widget.new('My Widget')
end

Then(/^the WidgetCollector should have my widget available$/) do
  widget_collecter = WidgetCollector.new
  expect(widget_collecter.widgets.count).to eql 1
  expect(widget_collecter.widgets).to include(@my_widget)
end
