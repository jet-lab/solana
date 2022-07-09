#!/bin/bash

cargo +1.60.0 nextest run --profile ci --config-file ./nextest.toml --workspace --tests --exclude solana-local-cluster --jobs 32 --partition hash:"$((BUILDKITE_PARALLEL_JOB+1))"/"$BUILDKITE_PARALLEL_JOB_COUNT"