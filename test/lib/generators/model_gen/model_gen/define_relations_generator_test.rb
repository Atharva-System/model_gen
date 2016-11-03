require 'test_helper'
require 'generators/model_gen/define_relations/define_relations_generator'

module ModelGen
  class ModelGen::DefineRelationsGeneratorTest < Rails::Generators::TestCase
    tests ModelGen::DefineRelationsGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
