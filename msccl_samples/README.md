## Introduction

This folder contains scripts for NPKit sample workflow for MSCCL. The sample workflow first builds MSCCL with NPKit enabled, then runs msccl-test to collect NPKit event dump files, and finally generates NPKit trace file.

## Dependencies

[MSCCL](https://github.com/microsoft/msccl) (with NPKit integrated) and [nccl-tests](https://github.com/microsoft/nccl-tests).

## Usage

1) Make sure parameters in `npkit_launcher.sh` are valid. Also note that currently NPKit only supports collecting non-overlapped events in GPU, and `NPKIT_FLAGS` should follow this rule.

2) Make sure `msccl_test` function in `npkit_runner.sh` is a valid command to run `nccl-tests` binary. Also note that currently NPKit only supports 1 GPU per process, so `-g 1` mode is required in `nccl-tests` commands.

3) Run command `bash npkit_launcher.sh`.

4) The generated trace file `npkit_event_trace.json` (zipped in `npkit_result.tar.gz`) is in [Google Trace Event Format](https://docs.google.com/document/d/1CvAClvFfyA5R-PhYUmn5OOQtYMH4h6I0nSsKchNAySU/preview) and can be viewed by trace viewers.
