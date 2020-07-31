# Script Runner test script
cmd("CUBEDESIGN-ET COMMAND")
wait_check("CUBEDESIGN-ET STATUS BOOL == 'FALSE'", 5)
