#Author : Mihir Mithani
#Assignment

set log [open "output.log" w+]
puts $log "--- Log Session Started ---"
puts $log "Task executed successfully by Mihir Mithani."
puts $log "Timestamp: [clock format [clock seconds]]"
puts $log "--- Log Session Ended ---"
close $log

puts "Logs Saved to Output.log"
