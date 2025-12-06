[![verification](../../actions/workflows/verification.yaml/badge.svg)](../../actions/workflows/verification.yaml)
[![tt_datasheet](../../actions/workflows/tt_datasheet.yaml/badge.svg)](../../actions/workflows/tt_datasheet.yaml)
[![gds](../../actions/workflows/gds.yaml/badge.svg)](../../actions/workflows/gds.yaml)
[![precheck](../../actions/workflows/precheck.yaml/badge.svg)](../../actions/workflows/precheck.yaml)

# NYDesign CI2511

Private Tiny Tapeout chip for NYDesign submitted on the ci2511 chipignite shuttle.

- Visit https://tinytapeout.com for more information on the project and how to get involved.

To learn about the chip's architecture, please refer to [the multiplexer documentation](https://github.com/TinyTapeout/tt-multiplexer/blob/main/docs/INFO.md).

If you want to build Tiny Tapeout yourself, please refer to [BUILDING.md](BUILDING.md).

## Important: Preconfigured Macros

The `projects.txt` file **must** include the following required preconfigured macros:
- `https://github.com/TinyTapeout/tt-chip-rom`
- `https://github.com/TinyTapeout/ttsky25b-factory-test`

These projects are required system components and must be listed in `projects.txt` even though they have fixed positions defined in `modules.yaml`. See [projects_example.txt](projects_example.txt) for an example.
