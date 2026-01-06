#!/bin/bash
# Vault guide for community-curated content
# Shared knowledge, collective sense-making, curated sources
# Edit the sections below to match your vault

# ============================================
# WHAT THIS VAULT IS FOR (describe freely)
# ============================================

ABOUT="
This is a shared vault for our community's collective thinking.
We curate sources, track debates, and build shared understanding.
"

# ============================================
# WHAT'S ALIVE FOR YOU (optional — delete if nothing comes to mind)
# ============================================
# If you're working through something intellectually, mention it here.
# Examples:
#   "We keep returning to the tension between depth and accessibility."
#   "I'm trying to understand what makes certain sources become canonical vs. forgotten."
#   "There's something about how disagreement works here that I can't quite name."
# Leave blank if you just want to describe structure.

WHATS_ALIVE="
"

# ============================================
# FOLDERS
# ============================================

FOLDERS="
sources/
sources/books/
sources/papers/
clips/
discussions/
members/
themes/
"

# ============================================
# TAGS
# ============================================

TAGS="
# Themes
#theme/technology #theme/culture #theme/ecology

# Source types
#source #primary #clip #quote

# Curation status
#canonical #contested #emerging #needs-review
"

# ============================================
# LINKS (shared reference notes)
# ============================================

LINKS="
[[reading list]]
[[active debates]]
[[key voices]]
[[open questions]]
"

# ============================================
# CAPTURE HABITS
# ============================================

CAPTURE="
Clips saved to clips/ with source link.
Full sources archived in sources/.
Recurring themes get their own note in themes/.
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

## What's alive for us
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
