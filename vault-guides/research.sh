#!/bin/bash
# Vault guide for research and academic vaults
# Literature review, thesis work, research notes
# Edit the sections below to match your vault

# ============================================
# WHAT THIS VAULT IS FOR (describe freely)
# ============================================

ABOUT="
This is where I organize my research and academic thinking.
I track papers, develop arguments, and connect ideas across sources.
"

# ============================================
# WHAT'S ALIVE FOR YOU (optional — delete if nothing comes to mind)
# ============================================
# If you're working through something intellectually, mention it here.
# Examples:
#   "I'm trying to find the gap in the literature that my work addresses."
#   "I keep circling back to a tension between two frameworks I admire."
#   "I notice I avoid engaging with critiques of my core assumptions."
# Leave blank if you just want to describe structure.

WHATS_ALIVE="
"

# ============================================
# FOLDERS
# ============================================

FOLDERS="
literature/
literature/papers/
literature/books/
notes/
notes/concepts/
notes/methods/
projects/
drafts/
"

# ============================================
# TAGS
# ============================================

TAGS="
# Reading status
#to-read #reading #read #to-revisit

# Source types
#paper #book #chapter #thesis #preprint

# Research phases
#literature-review #data-collection #analysis #writing

# Annotation
#key-finding #methodology #quote #critique #gap
"

# ============================================
# LINKS (key reference notes)
# ============================================

LINKS="
[[research questions]]
[[key authors]]
[[theoretical framework]]
[[methods notes]]
[[argument outline]]
"

# ============================================
# CAPTURE HABITS
# ============================================

CAPTURE="
Paper notes in literature/papers/ with citation key.
Concept definitions in notes/concepts/.
Each project gets a folder in projects/.
Drafts evolve in drafts/ with dated versions.
"

# ============================================
# OUTPUT
# ============================================

cat <<EOF
## About this vault
${ABOUT}
EOF

# Only include "What's alive" section if it has content
if [ -n "$(echo "${WHATS_ALIVE}" | tr -d '[:space:]')" ]; then
cat <<EOF

## What's alive for me
${WHATS_ALIVE}
EOF
fi

cat <<EOF

## Structure

### Folders
${FOLDERS}

### Tags
${TAGS}

### Links
${LINKS}

### Capture habits
${CAPTURE}
EOF
