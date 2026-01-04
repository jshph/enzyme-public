#!/bin/bash
# Vault guide for community-curated content
# Shared knowledge, collective sense-making, curated sources
# Edit the lists below to match your vault

# ============================================
# FOLDERS
# ============================================

FOLDERS="
sources/
sources/books/
sources/papers/
sources/talks/
clips/
discussions/
members/
themes/
archive/
"

# ============================================
# TAGS
# ============================================

# Themes and domains
THEME_TAGS="
#theme/technology
#theme/culture
#theme/economics
#theme/ecology
#theme/governance
"

# Source and provenance
SOURCE_TAGS="
#source
#primary
#secondary
#clip
#quote
#transcript
"

# Curation status
STATUS_TAGS="
#canonical
#contested
#emerging
#deprecated
#needs-review
"

# Contribution tracking
CONTRIBUTOR_TAGS="
#contributor
#guest
#founding-member
#perspective
"

# ============================================
# LINKS (shared reference notes)
# ============================================

LINKS="
[[reading list]]
[[active debates]]
[[key voices]]
[[glossary]]
[[origin story]]
[[open questions]]
"

# ============================================
# CAPTURE HABITS
# ============================================

CAPTURE="
Clips and quotes saved to clips/ with source link.
Full sources archived in sources/.
Member profiles in members/.
Recurring themes get their own note in themes/.
Discussions captured with date and participants.
"

# ============================================
# INTENT - what to surface (optional)
# ============================================

INTENT="
Surface tensions between different voices on the same theme.
Find where consensus is forming vs. still contested.
Notice which contributors keep returning to which themes.
Connect new sources to existing debates.
"

# ============================================
# OUTPUT
# ============================================

cat <<EOF
## Folders
${FOLDERS}

## Tags

### Themes and domains
${THEME_TAGS}

### Source and provenance
${SOURCE_TAGS}

### Curation status
${STATUS_TAGS}

### Contribution tracking
${CONTRIBUTOR_TAGS}

## Links
${LINKS}

## Capture habits
${CAPTURE}

## What to surface
${INTENT}
EOF
