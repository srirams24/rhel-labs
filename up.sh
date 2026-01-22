nodes="${@:-node1 node2}"
if [[ ${#nodes} -eq 1 ]]; then
	        vagrant up ${nodes} > /dev/null && vagrant ssh ${nodes} || echo "Error: ${nodes} is not started"
else
	for node in ${nodes}; do 
		status=$(vagrant status ${node} --machine-readable | sed -n '3p' | awk -F, '{ print $4 }')
		if [[ ${status} == "poweroff" ]]; then
			vagrant up ${node} > /dev/null &&  echo "OK: ${node} Started. Run vagrant ssh ${node}" || echo "ERROR: ${node} is not started"
		else 
			echo "OK: ${node} is already started. Run vagrant ssh ${node}"
		fi
	done
fi
