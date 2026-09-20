# CPU 2026 testcases

Each testcase directory contains a loadable RV32IM program image, its expected
exit value, execution metadata, and the expected final external RAM image:

```text
correctness_example/
├── program.data
├── program.S
├── expected.txt
├── metrics.json
└── expected.memory
```

`program.S` is a disassembly snapshot generated from the executable sections of
the linked ELF. It exists for auditing and is not loaded by the simulator, which
loads only `program.data`.

`expected.memory` describes the complete 256 KiB external RAM after the program
writes its result to the exit MMIO address `0x80000000`. The file uses the same
`@address` plus hexadecimal-byte syntax as `program.data`. All omitted addresses
are zero, so the generator omits all-zero 16-byte rows to keep the files small.

Generate every final image with the independent RV32IM interpreter:

```sh
python3 tools/generate_expected_memory.py
```

Verify the committed images without modifying them:

```sh
python3 tools/generate_expected_memory.py --check
```

Names may be supplied to process a subset, for example:

```sh
python3 tools/generate_expected_memory.py correctness_add_to_100 perf_median
```

Before writing an image, the generator executes the program from PC 0 and
checks both `expected.txt` and `dynamic_instructions`. No program hash is required. The interpreter supports the required RV32IM integer
instructions and rejects invalid, unsupported, misaligned, or out-of-range
operations. The exit MMIO store is counted as the final retired instruction and
does not modify RAM.

The archived maintainer OJ packager selects `CPU2026-OJ 2` when an
`expected.memory` file is present. Merely adding these files does not enable
comparison in the current Framework local runner. Its simulator prints its final external RAM after the exit write, and
the OJ compares that output with this reference image. A CPU with a write-back
cache must write dirty data to external RAM before issuing the exit store;
otherwise its externally visible memory correctly fails the comparison.
