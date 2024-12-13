# Lua Nested Table Modification Bug

This repository demonstrates a common error in Lua when recursively traversing and modifying nested tables.  The issue is that modifications made within nested tables may not properly reflect in the original parent table, unless references are correctly handled.

## Problem

The `bug.lua` file contains a function that recursively traverses a nested table.  While it processes the nested tables, changes made to the inner tables will not propagate back to the original table.  This can lead to unexpected behavior and incorrect results.

## Solution

The `bugSolution.lua` file provides a corrected version of the function.  The corrected code demonstrates how to correctly manipulate the nested tables so that changes persist in the original table.   This typically involves careful consideration of whether you are manipulating the nested table via a reference or a copy.