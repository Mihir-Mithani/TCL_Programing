Just wrapped up a deep dive into TCL scripting — specifically for VLSI/EDA automation. Here's what that actually looked like.

The repo started as a way to follow along with the VLSI Academy playlist on YouTube. Thirty-one topic scripts later, I had the fundamentals down: variables, expr arithmetic, conditionals, loops (for/while/foreach), arrays (both indexed and associative), string ops, lists, file I/O, procs, and exec for shelling out.

Then came the assignments — 68 of them. Each one a small, self-contained problem. The template is literally three lines: author, assignment tag, and then your code. That constraint forces clarity.

The interesting part came after: applying it to real EDA data. I wrote a parser that reads a Liberty (.lib) file and a LEF file in single passes, extracts cell leakage power and physical dimensions, cross-references them, and emits four CSVs — leakage data, cell dimensions, missing cells, and a master combined file. The LEF is 350KB; the .lib is 6.7MB. Single-pass parsing keeps memory flat and runtime reasonable.

Also built a pin-placement script that takes 20 pins and arranges them in a rectangle pattern — bottom edge, left edge, top edge, right edge — logging before/after coordinates. Simple geometry, but the kind of thing that shows up in floorplanning workflows.

TCL gets a bad rap for being "old" or "weird." But in the VLSI toolchain (Synopsys, Cadence, Mentor), it's the glue language. Everything scripts through it. Learning it properly — not just copying snippets — means you can automate the tedious parts of the flow instead of clicking through GUIs.

The repo is public if anyone wants to dig through the examples or the parser:
https://github.com/Mihir-Mithani/tcl

Still on the roadmap: Tk for GUIs, Expect for automation, the C API, and a netlist parser project. But the foundation is solid now.