#!/bin/bash
# Build all required Spigot versions for Modernized TamableFoxes
# Run this from the project root directory
# Each line maps to one NMS module in the project.
#
# NMS Module   → BuildTools --rev  → Spigot artifact
# 1_20_R1      → 1.20.1           → 1.20.1-R0.1-SNAPSHOT
# 1_20_R2      → 1.20.2           → 1.20.2-R0.1-SNAPSHOT
# 1_20_R3      → 1.20.4           → 1.20.4-R0.1-SNAPSHOT
# 1_20_R4      → 1.20.6           → 1.20.6-R0.1-SNAPSHOT
# 1_21_R1      → 1.21             → 1.21.1-R0.1-SNAPSHOT
# 1_21_R2      → 1.21.3           → 1.21.3-R0.1-SNAPSHOT
# 1_21_R3      → 1.21.4           → 1.21.4-R0.1-SNAPSHOT
# 1_21_R4      → 1.21.5           → 1.21.5-R0.1-SNAPSHOT
# 1_21_R5      → 1.21.6           → 1.21.6/1.21.7-R0.1-SNAPSHOT
# 1_21_R6      → 1.21.7           → 1.21.7-R0.1-SNAPSHOT
# 1_21_R7      → 1.21.9           → 1.21.8/1.21.9/1.21.10-R0.1-SNAPSHOT
# 1_21_R8      → 1.21.11          → 1.21.10/1.21.11-R0.1-SNAPSHOT
# 26_1_R1      → 26.1             → 26.1.2-R0.1-SNAPSHOT
# 26_2_R1      → 26.2             → 26.2-R0.1-SNAPSHOT

JAVA21="/usr/lib/jvm/java-21-openjdk-amd64/bin/java"
JAVA25="/usr/lib/jvm/java-25-openjdk-amd64/bin/java"

set -e

echo "=== Building 1.20.x versions ==="
$JAVA21 -jar ./BuildTools.jar --rev 1.20.1 --remapped
$JAVA21 -jar ./BuildTools.jar --rev 1.20.2 --remapped
$JAVA21 -jar ./BuildTools.jar --rev 1.20.4 --remapped
$JAVA21 -jar ./BuildTools.jar --rev 1.20.6 --remapped

echo "=== Building 1.21.x versions ==="
$JAVA21 -jar ./BuildTools.jar --rev 1.21 --remapped
$JAVA21 -jar ./BuildTools.jar --rev 1.21.3 --remapped
$JAVA21 -jar ./BuildTools.jar --rev 1.21.4 --remapped
$JAVA21 -jar ./BuildTools.jar --rev 1.21.5 --remapped
$JAVA21 -jar ./BuildTools.jar --rev 1.21.6 --remapped
$JAVA21 -jar ./BuildTools.jar --rev 1.21.7 --remapped
$JAVA21 -jar ./BuildTools.jar --rev 1.21.9 --remapped
$JAVA21 -jar ./BuildTools.jar --rev 1.21.11 --remapped

echo "=== Building 26.x versions ==="
$JAVA25 -jar ./BuildTools.jar --rev 26.1 --remapped
$JAVA25 -jar ./BuildTools.jar --rev 26.2 --remapped

echo "=== All Spigot versions built successfully ==="
