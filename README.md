# Uncommon Assembly Code Errors
This repository demonstrates common subtle errors that can occur in assembly language programming, focusing on buffer overflows, alignment issues, and array indexing problems.  The `bug.asm` file contains code with these potential issues. The `bugSolution.asm` shows corrected versions with mitigation strategies.

**Key Issues Addressed:**

* **Buffer Overflow:**  Accessing memory beyond allocated bounds.
* **Alignment Issues:**  Accessing data at unaligned addresses.
* **Incorrect Indexing:** Using out-of-bounds array indices.

**Mitigation Strategies:**

* **Bounds Checking:** Verifying that array indices are within valid ranges.
* **Alignment Considerations:**  Ensuring data is accessed at correct memory alignments.
* **Careful Register Initialization:** Properly initializing registers before use. 
* **Robust Error Handling:** Implementing mechanisms to handle potential exceptions (e.g., using conditional jumps based on potential error flags).

This example highlights the importance of meticulous programming and thorough testing when working directly with memory in assembly language.