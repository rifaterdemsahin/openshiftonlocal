# Function to add a command to the PowerShell history
function Add-ToHistory {
    param (
        [string]$Command
    )

    # Add the command to history using Add-History
    Add-History -CommandLine $Command
}

# List of common OpenShift commands
$openshiftCommands = @(
    "oc login https://your-openshift-cluster --token=your-token",    # Login to OpenShift
    "oc project your-project-name",                                  # Switch to a specific project
    "oc get pods",                                                   # List all pods in the current project
    "oc get services",                                               # List all services in the current project
    "oc get routes",                                                 # List all routes in the current project
    "oc describe pod pod-name",                                      # Describe a specific pod
    "oc logs pod-name",                                              # Get logs from a specific pod
    "oc rsh pod-name",                                               # Remote shell into a specific pod
    "oc create -f your-file.yaml",                                   # Create resources from a YAML file
    "oc delete pod pod-name",                                        # Delete a specific pod
    "oc scale --replicas=3 deployment/deployment-name",              # Scale a deployment
    "oc rollout restart deployment/deployment-name",                 # Restart a deployment
    "oc rollout status deployment/deployment-name",                  # Check the status of a rollout
    "oc expose svc/service-name",                                    # Expose a service to create a route
    "oc apply -f your-file.yaml",                                    # Apply a configuration from a YAML file
    "oc delete -f your-file.yaml"                                    # Delete resources defined in a YAML file
)

# Iterate over the OpenShift commands and add them to history
foreach ($cmd in $openshiftCommands) {
    Add-ToHistory -Command $cmd
}

Write-Host "OpenShift commands have been added to your PowerShell history."
