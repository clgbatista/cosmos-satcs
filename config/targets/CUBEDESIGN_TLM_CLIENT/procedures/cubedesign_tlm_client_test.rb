# To add this test to Test Runner edit config/tools/test_runner/test_runner.txt
# Add this line:
#   LOAD_UTILITY 'cubedesign_tlm_client_test'
#
# Test Runner test script
class Cubedesign_tlm_clientTest < Cosmos::Test
  # def setup
  #   # Implement group level setup
  # end

  def test_command
    cmd("CUBEDESIGN_TLM_CLIENT COMMAND")
    wait_check("CUBEDESIGN_TLM_CLIENT STATUS BOOL == 'FALSE'", 5)
  end

  # def teardown
  #   # Implement group level teardown
  # end
end

class Cubedesign_tlm_clientSuite < Cosmos::TestSuite
  # def setup
  #   # Implement suite level setup
  # end

  def initialize
    super()
    add_test('Cubedesign_tlm_clientTest')
  end

  # def teardown
  #   # Implement suite level teardown
  # end
end
