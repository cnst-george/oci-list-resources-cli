# !/bin/bash

page=$(oci \
    search \
    resource \
    structured-search \
    --limit 1000 \
    --query-text \
    "QUERY all resources where (lifeCycleState != 'TERMINATED' || lifeCycleState != 'FAILED')" | \
	   jq -r '."opc-next-page"')
while [ -n $page ]; do
    oci search resource structured-search --page $page --limit 1000 --query-text \
	"QUERY all resources where (lifeCycleState != 'TERMINATED' || lifeCycleState != 'FAILED')" | \
	jq -r '[.data.items[] | {compartmentId: ."compartment-id", displayName:."display-name" , id: .identifier, definedTags: ."defined-tags", freeformTags: ."freeform-tags", lifecycleState: ."lifecycle-state"}]'
    old_page=$page
    page=$(oci search resource structured-search --page $old_page --limit 1000 --query-text \
	       "QUERY all resources where (lifeCycleState != 'TERMINATED' || lifeCycleState != 'FAILED')" | \
	       jq -r '."opc-next-page"')
done