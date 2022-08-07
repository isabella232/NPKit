# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

set -x

# MSCCL source directory.
export MSCCL_SRC_DIR="/mnt/msccl"

# NPKit source directory.
export NPKIT_SRC_DIR="/mnt/npkit"

# Path to nccl-tests binary being profiled.
export NCCL_TEST_BIN="/mnt/nccl-tests/build/all_reduce_perf"
# export NCCL_TEST_BIN="/mnt/nccl-tests/build/alltoall_perf"

# NPKit runtime directory, used to store logs and results.
export NPKIT_RUN_DIR="/mnt/npkit_run"

# Message size of MSCCL operation.
export MSCCL_MSG_SIZE="16K"

# MSCCL communication algorithm. Ring, Tree and MSCCL are supported.
export MSCCL_ALGO="Ring,MSCCL"
# export MSCCL_ALGO="Tree,MSCCL"

# MSCCL communication protocol. Simple and LL are supported.
# export MSCCL_PROTO="Simple"
export MSCCL_PROTO="LL"
# export MSCCL_PROTO="LL128"

# Number of nccl-tests warmups.
export MSCCL_NUM_WARMUPS="0"

# Number of nccl-tests iterations.
export MSCCL_NUM_ITERS="10"

NPKIT_FLAGS_CPU_PREFIX="-DENABLE_NPKIT"
NPKIT_FLAGS_GPU_PREFIX="-DENABLE_NPKIT -DENABLE_NPKIT_EVENT_TIME_SYNC_CPU -DENABLE_NPKIT_EVENT_TIME_SYNC_GPU"

# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_ALL_REDUCE_RING_ENTRY -DENABLE_NPKIT_EVENT_ALL_REDUCE_RING_EXIT"
# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_ALL_REDUCE_TREE_UPDOWN_ENTRY -DENABLE_NPKIT_EVENT_ALL_REDUCE_TREE_UPDOWN_EXIT"
# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_ALL_REDUCE_TREE_SPLIT_ENTRY -DENABLE_NPKIT_EVENT_ALL_REDUCE_TREE_SPLIT_EXIT"

# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_COPY_SEND_EXIT"
# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_DIRECT_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_DIRECT_COPY_SEND_EXIT"
# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_DIRECT_RECV_ENTRY -DENABLE_NPKIT_EVENT_DIRECT_RECV_EXIT"
# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_DIRECT_RECV_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_DIRECT_RECV_COPY_SEND_EXIT"
# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_DIRECT_RECV_REDUCE_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_DIRECT_RECV_REDUCE_COPY_SEND_EXIT"
# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_DIRECT_SEND_ENTRY -DENABLE_NPKIT_EVENT_DIRECT_SEND_EXIT"
# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_DIRECT_SEND_FROM_OUTPUT_ENTRY -DENABLE_NPKIT_EVENT_DIRECT_SEND_FROM_OUTPUT_EXIT"
# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_RECV_ENTRY -DENABLE_NPKIT_EVENT_RECV_EXIT"
# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_RECV_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_RECV_COPY_SEND_EXIT"
# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_RECV_REDUCE_COPY_ENTRY -DENABLE_NPKIT_EVENT_RECV_REDUCE_COPY_EXIT"
# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_RECV_REDUCE_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_RECV_REDUCE_COPY_SEND_EXIT"
# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_RECV_REDUCE_SEND_ENTRY -DENABLE_NPKIT_EVENT_RECV_REDUCE_SEND_EXIT"
# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_SEND_ENTRY -DENABLE_NPKIT_EVENT_SEND_EXIT"
# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_SEND_FROM_OUTPUT_ENTRY -DENABLE_NPKIT_EVENT_SEND_FROM_OUTPUT_EXIT"

# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_PRIM_SIMPLE_WAIT_PEER_ENTRY -DENABLE_NPKIT_EVENT_PRIM_SIMPLE_WAIT_PEER_EXIT"
# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_PRIM_SIMPLE_REDUCE_OR_COPY_MULTI_ENTRY -DENABLE_NPKIT_EVENT_PRIM_SIMPLE_REDUCE_OR_COPY_MULTI_EXIT"

# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_PRIM_LL_WAIT_SEND_ENTRY -DENABLE_NPKIT_EVENT_PRIM_LL_WAIT_SEND_EXIT"
# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_PRIM_LL_DATA_PROCESS_ENTRY -DENABLE_NPKIT_EVENT_PRIM_LL_DATA_PROCESS_EXIT"

# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_PRIM_LL128_WAIT_SEND_ENTRY -DENABLE_NPKIT_EVENT_PRIM_LL128_WAIT_SEND_EXIT"
# export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_PRIM_LL128_DATA_PROCESS_ENTRY -DENABLE_NPKIT_EVENT_PRIM_LL128_DATA_PROCESS_EXIT"

# export NPKIT_FLAGS=${NPKIT_FLAGS_CPU_PREFIX}" -DENABLE_NPKIT_EVENT_NET_SEND_ENTRY -DENABLE_NPKIT_EVENT_NET_SEND_EXIT -DENABLE_NPKIT_EVENT_NET_RECV_ENTRY -DENABLE_NPKIT_EVENT_NET_RECV_EXIT"

export NPKIT_FLAGS=${NPKIT_FLAGS_GPU_PREFIX}" -DENABLE_NPKIT_EVENT_PRIM_LL_DATA_PROCESS_ENTRY -DENABLE_NPKIT_EVENT_PRIM_LL_DATA_PROCESS_EXIT -DENABLE_NPKIT_EVENT_MSCCL_REDUCE_ENTRY -DENABLE_NPKIT_EVENT_MSCCL_REDUCE_EXIT"

bash npkit_runner.sh
