# Script Runner test script
cmd("CUBEDESIGN_TLM_CLIENT COMMAND")
wait_check("CUBEDESIGN_TLM_CLIENT STATUS BOOL == 'FALSE'", 5)
