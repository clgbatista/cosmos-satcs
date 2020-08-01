# Script Runner test script
cmd("CUBEDESIGN_CMD_CLIENT COMMAND")
wait_check("CUBEDESIGN_CMD_CLIENT STATUS BOOL == 'FALSE'", 5)
