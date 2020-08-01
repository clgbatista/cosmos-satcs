# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'cubedesign_cmd_client_test'
#
# Test Runner test script
class Cubedesign_cmd_clientTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("CUBEDESIGN_CMD_CLIENT COMMAND")
    wait_check("CUBEDESIGN_CMD_CLIENT STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class Cubedesign_cmd_clientSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('Cubedesign_cmd_clientTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
