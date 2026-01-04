#!/bin/bash
# Vault guide for personal reflection vaults
# Journal, reading highlights, individual sense-making
# Edit the lists below to match your vault

# ============================================
# FOLDERS
# ============================================

FOLDERS="
Readwise/
Readwise/Books/
Readwise/Articles/
Readwise/Podcasts/
journal/
journal/daily/
journal/weekly/
inbox/
notes/
people/
"

# ============================================
# TAGS
# ============================================

# Ideas and concepts
IDEA_TAGS="
#idea
#seedling
#evergreen
#thread
#tension
"

# Areas of life
AREA_TAGS="
#work
#travel
#travel/pyrenees
#travel/roadtrips
#health
#creativity
#faith
"

# Actions and status
ACTION_TAGS="
#question
#unresolved
#revisit
#to-develop
#sparked-by
"

# Source types
SOURCE_TAGS="
#book
#article
#podcast
#conversation
#experience
"

# ============================================
# LINKS (concept notes, not folders)
# ============================================

LINKS="
[[open questions]]
[[things I believe]]
[[recurring dreams]]
[[people who shaped me]]
[[books that changed me]]
"

# ============================================
# CAPTURE HABITS
# ============================================

CAPTURE="
Kindle highlights sync to Readwise/.
Article highlights sync to Readwise/Articles/.
Quick thoughts go to inbox/.
Morning pages in journal/daily/.
Weekly review in journal/weekly/.
People I think about get notes in people/.
"

# ============================================
# INTENT - what to surface (optional)
# ============================================

INTENT="
Surface tensions between what I read and what I write.
Find questions that keep appearing across different areas.
Connect highlights to personal experiences.
Notice which people keep showing up in my thinking.
"

# ============================================
# OUTPUT
# ============================================

cat <<EOF
## Folders
${FOLDERS}

## Tags

### Ideas and concepts
${IDEA_TAGS}

### Areas of life
${AREA_TAGS}

### Actions and status
${ACTION_TAGS}

### Source types
${SOURCE_TAGS}

## Links
${LINKS}

## Capture habits
${CAPTURE}

## What to surface
${INTENT}
EOF
