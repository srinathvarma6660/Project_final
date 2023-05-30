#!/bin/bash
kubectl apply -f pod-app.yml
kubectl apply -f pod-db.yml
kubectl apply -f svc-app.yml
kubectl apply -f svc-db.yml
