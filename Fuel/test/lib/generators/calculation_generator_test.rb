require 'test_helper'
require 'generators/calculation/calculation_generator'

class CalculationGeneratorTest < Rails::Generators::TestCase
  tests CalculationGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
