#!/bin/bash
export POD_NAME=$(kubectl get pods -l app=dev-portal-saml -n default -o jsonpath='{.items[0].metadata.name}') && kubectl port-forward -n default $POD_NAME 8080:8080

export POD_NAME=$(kubectl get pods -l app=dev-portal-saml -n default -o jsonpath='{.items[0].metadata.name}') && kubectl port-forward -n default $POD_NAME 8443:8443
