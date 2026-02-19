#!/bin/bash

declare -A graph
declare -A visited
declare -A stack

detect_cycle() {
    local process=$1
    visited[$process]=1
    stack[$process]=1

    for next in ${graph[$process]}; do
        if [[ -z "${visited[$next]}" ]]; then
            detect_cycle "$next"
            if [[ $? -eq 1 ]]; then
                return 1
            fi
        elif [[ "${stack[$next]}" -eq 1 ]]; then
            echo "Cycle Found: $process → $next"
            return 1
        fi
    done

    stack[$process]=0
    return 0
}

echo "Enter number of wait-for relations:"
read n

echo "Enter relations in format: P1 P2"

for (( i=0; i<n; i++ ))
do
    read p1 p2
    graph[$p1]="${graph[$p1]} $p2"
done

echo "Checking for deadlock..."

for process in "${!graph[@]}"; do
    if [[ -z "${visited[$process]}" ]]; then
        detect_cycle "$process"
        if [[ $? -eq 1 ]]; then
            echo "Deadlock Detected!"
            exit
        fi
    fi
done

echo "No Deadlock Detected!"

Screenshots of outputs:
 
 
