# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'cubedesign-et_test'
#
# Test Runner test script
class Cubedesign-etTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("CUBEDESIGN-ET COMMAND")
    wait_check("CUBEDESIGN-ET STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class Cubedesign-etSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('Cubedesign-etTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
