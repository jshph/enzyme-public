#!/bin/bash
# Vault guide for personal reflection vaults
# Journal, reading highlights, individual sense-making
# Edit the sections below to match your vault

# ============================================
# WHAT THIS VAULT IS FOR (describe freely)
# ============================================

ABOUT="
This is where I process what I read and connect it to my life.
I capture book highlights, write morning pages, and track ideas as they develop.
"

# ============================================
# WHAT'S ALIVE FOR YOU (optional — delete if nothing comes to mind)
# ============================================
# If you're working through something intellectually, mention it here.
# Examples:
#   "I keep returning to questions about how tools shape thought."
#   "I'm trying to develop more strategic thinking about my life."
#   "I notice I avoid committing to long-term plans."
# Leave blank if you just want to describe structure.

WHATS_ALIVE="
"

# ============================================
# FOLDERS
# ============================================

FOLDERS="
Readwise/
Readwise/Books/
Readwise/Articles/
journal/
journal/daily/
inbox/
people/
"

# ============================================
# TAGS
# ============================================

TAGS="
# Ideas and status
#idea #seedling #evergreen #question #unresolved

# Areas
#work #health #creativity

# Sources
#book #article #conversation
"

# ============================================
# LINKS (concept notes that other notes reference)
# ============================================

LINKS="
[[open questions]]
[[things I believe]]
[[books that changed me]]
"

# ============================================
# CAPTURE HABITS (how content arrives)
# ============================================

CAPTURE="
Kindle highlights sync to Readwise/.
Morning pages in journal/daily/.
People I think about get notes in people/.
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
