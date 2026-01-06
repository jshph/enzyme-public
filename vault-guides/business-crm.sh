#!/bin/bash
# Vault guide for relationship and pipeline tracking
# Investors, partners, clients, CRM-style notes
# Edit the sections below to match your vault

# ============================================
# WHAT THIS VAULT IS FOR (describe freely)
# ============================================

ABOUT="
This is where I track relationships and manage pipeline.
I keep notes on investors, partners, and key contacts.
"

# ============================================
# WHAT'S ALIVE FOR YOU (optional — delete if nothing comes to mind)
# ============================================
# If you're working through something intellectually, mention it here.
# Examples:
#   "I'm trying to figure out what moves deals forward vs. just generates activity."
#   "I keep avoiding certain follow-ups and I'm not sure why."
#   "I want to get better at knowing when to push vs. when to let things breathe."
# Leave blank if you just want to describe structure.

WHATS_ALIVE="
"

# ============================================
# FOLDERS
# ============================================

FOLDERS="
people/
people/investors/
people/partners/
meetings/
deals/
"

# ============================================
# TAGS
# ============================================

TAGS="
# Relationship types
#investor #partner #advisor #customer #prospect

# Pipeline stages
#stage/cold #stage/warm #stage/active #stage/closing

# Actions
#follow-up #waiting-on #sent-deck
"

# ============================================
# LINKS (key reference notes)
# ============================================

LINKS="
[[pipeline]]
[[target list]]
[[pass reasons]]
"

# ============================================
# CAPTURE HABITS
# ============================================

CAPTURE="
Each person gets a note in people/.
Meeting notes same day, linked to person.
Deal stages tracked with dated updates.
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
