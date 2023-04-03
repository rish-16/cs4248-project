#!/bin/bash

set -e

export SBATCH_JOB_NAME="eval_flan_t5_3_langs" # change
export USERNAME=$USER
export SBATCH_FILE="Scripts/inference_job.sh"

export SBATCH_PARTITION="medium"
export SBATCH_WHICHNODES_EXCLUDE="amdgpu1,xgpc[5-6],xgpd[5-7],xgpf[6-8],xcne[2-5],xgpc7,xcna[4-6,8-11],xcnb[5-14],xcnc[13-15,17-32,34-37],xcnd[15-44],xgpc[3-4],xgpd[3-4],xgpe[3-8],xgpf[3-5],amdgpu2"
export SBATCH_NODES=1
export SBATCH_TASKS=1
export SBATCH_MEM_PER_NODE="4G"
export SBATCH_TIME_LIMIT="01:30:00"

mkdir "findings/$SBATCH_JOB_NAME"
export SBATCH_OUTPUT="findings/$SBATCH_JOB_NAME/output.slurmlog"
export SBATCH_ERROR="findings/$SBATCH_JOB_NAME/error.slurmlog"
export PROGRAM_OUTPUT="findings/$SBATCH_JOB_NAME/output.slurmlog"

SBATCH_FILE_FULL=$SBATCH_FILE
[[ -f $SBATCH_FILE_FULL ]] || { echo "!!! Runner: sbatch file $SBATCH_FILE_FULL does not exist, quitting..."; exit 1; }
echo -e "\n>>> Runner: Executing $SBATCH_FILE_FULL with Slurm\n"

jobid=$(sbatch \
    --nodes=$SBATCH_NODES \
    --ntasks=$SBATCH_TASKS \
    --exclude=$SBATCH_WHICHNODES_EXCLUDE \
    --mem=$SBATCH_MEM_PER_NODE \
    --time=$SBATCH_TIME_LIMIT \
    --output=$SBATCH_OUTPUT \
    --error=$SBATCH_ERROR \
    --gres=gpu:1 \
    --parsable \
    $SBATCH_FILE_FULL)

echo -e "\n>>> Runner: Submitted slurm job with ID $jobid"

