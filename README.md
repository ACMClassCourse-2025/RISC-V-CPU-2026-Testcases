# CPU 2026 testcases

Each testcase directory contains a loadable RV32IM program image, its expected
final exit result, and execution metadata:

```text
correctness_example/
├── program.data
├── program.S
├── expected.txt
└── metrics.json
```

`program.data` uses `@address` markers and hexadecimal bytes to initialize the
simulator's RAM. Unspecified bytes start at zero.

`expected.txt` contains the unsigned 32-bit result written to the exit MMIO
address `0x80000000`. Local tests and the Online Judge compare the final exit
result with this value.

`metrics.json` records `dynamic_instructions` for IPC calculation. The exit
MMIO store counts as the final retired instruction.

`program.S` is a disassembly snapshot generated from the executable sections of
the linked ELF. It exists for auditing and is not loaded by the simulator, which
loads only `program.data`.
