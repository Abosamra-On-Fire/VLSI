
# Load the top-level module for simulation
vsim BypassAdder;# Replace with your top-level module name

# Add waveform signals for monitoring
add wave -position insertpoint \
    sim:/BypassAdder/A       ;# Input A
add wave -position insertpoint \
    sim:/BypassAdder/B       ;# Input B
add wave -position insertpoint \
    sim:/BypassAdder/Cin     ;# Carry-in
add wave -position insertpoint \
    sim:/BypassAdder/Sum     ;# Output Sum
add wave -position insertpoint \
    sim:/BypassAdder/Cout    ;# Output Carry-out

# Function to validate test cases
proc validate_test {expected_sum expected_cout} {
    set sum [examine /BypassAdder/Sum]
    set cout [examine /BypassAdder/Cout]
    if {$sum == $expected_sum && $cout == $expected_cout} {
        puts "Test passed: Sum=$sum, Cout=$cout"
    } else {
        puts "Test failed: Expected Sum=$expected_sum, Cout=$expected_cout but got Sum=$sum, Cout=$cout"
    }
}

# Test Case 1
puts "Running Test Case 1..."
force -drive /BypassAdder/A 32'h00000001 ;# Input A
force -drive /BypassAdder/B 32'h00000001 ;# Input B
force -drive /BypassAdder/Cin 0           ;# Carry-in
run 10ns
validate_test "32'h00000002" "1'h0"

# Test Case 2
puts "Running Test Case 2..."
force -drive /BypassAdder/A 32'hFFFFFFFF ;# Input A
force -drive /BypassAdder/B 32'h00000001 ;# Input B
force -drive /BypassAdder/Cin 0           ;# Carry-in
run 10ns
validate_test "32'h00000000" "1'h1"

# Test Case 3
puts "Running Test Case 3..."
force -drive /BypassAdder/A 32'h12345678 ;# Input A
force -drive /BypassAdder/B 32'h87654321 ;# Input B
force -drive /BypassAdder/Cin 1           ;# Carry-in
run 10ns
validate_test "32'h9999999a" "1'h0"

# Test Case 4: Test with different carry-out behavior
puts "Running Test Case 4..."
force -drive /BypassAdder/A 32'h11111111 ;# Input A
force -drive /BypassAdder/B 32'h22222222 ;# Input B
force -drive /BypassAdder/Cin 1           ;# Carry-in
run 10ns
validate_test "32'h33333333" "1'h0"

# Run additional time to view waveforms
run 10ns

# Quit simulation
quit
