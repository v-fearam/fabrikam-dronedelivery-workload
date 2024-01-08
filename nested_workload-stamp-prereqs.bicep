@description('Azure Container Registry resource group location.')
param resourceGroupLocation string

resource workflowManagedIdentity 'Microsoft.ManagedIdentity/userAssignedIdentities@2023-01-31' = {
  name: 'uid-workflow'
  location: resourceGroupLocation
  tags: {
    displayName: 'workflow managed identity'
    what: 'rbac'
    reason: 'aad-workload-identity'
    app: 'fabrikam-workflow'
  }
}

resource deliveryManagedIdentity 'Microsoft.ManagedIdentity/userAssignedIdentities@2023-01-31' = {
  name: 'uid-delivery'
  location: resourceGroupLocation
  tags: {
    displayName: 'delivery managed identity'
    what: 'rbac'
    reason: 'aad-workload-identity'
    app: 'fabrikam-delivery'
  }
}

resource droneschedulerManagedIdentity 'Microsoft.ManagedIdentity/userAssignedIdentities@2023-01-31' = {
  name: 'uid-dronescheduler'
  location: resourceGroupLocation
  tags: {
    displayName: 'dronescheduler managed identity'
    what: 'rbac'
    reason: 'aad-workload-identity'
    app: 'fabrikam-dronescheduler'
  }
}

resource ingestionManagedIdentity 'Microsoft.ManagedIdentity/userAssignedIdentities@2023-01-31' = {
  name: 'uid-ingestion'
  location: resourceGroupLocation
  tags: {
    displayName: 'ingestion managed identity'
    what: 'rbac'
    reason: 'aad-workload-identity'
    app: 'fabrikam-ingestion'
  }
}

resource packageManagedIdentity 'Microsoft.ManagedIdentity/userAssignedIdentities@2023-01-31' = {
  name: 'uid-package'
  location: resourceGroupLocation
  tags: {
    displayName: 'package managed identity'
    what: 'rbac'
    reason: 'aad-workload-identity'
    app: 'fabrikam-package'
  }
}
