#!/bin/bash
# Vault guide for relationship and pipeline tracking
# Investors, partners, clients, CRM-style notes
# Edit the lists below to match your vault

# ============================================
# FOLDERS
# ============================================

FOLDERS="
people/
people/investors/
people/partners/
people/advisors/
meetings/
deals/
intros/
updates/
"

# ============================================
# TAGS
# ============================================

# Relationship types
RELATIONSHIP_TAGS="
#investor
#investor/angel
#investor/vc
#investor/strategic
#partner
#advisor
#customer
#prospect
"

# Pipeline and status
PIPELINE_TAGS="
#stage/cold
#stage/warm
#stage/active
#stage/closing
#stage/closed
#stage/passed
"

# Actions and follow-ups
ACTION_TAGS="
#follow-up
#intro-needed
#waiting-on
#schedule
#sent-deck
#term-sheet
"

# Relationship signals
SIGNAL_TAGS="
#champion
#decision-maker
#blocker
#warm-intro
#cold-outreach
"

# ============================================
# LINKS (key reference notes)
# ============================================

LINKS="
[[pipeline]]
[[target list]]
[[investor update template]]
[[intro request queue]]
[[pass reasons]]
[[closed deals]]
"

# ============================================
# CAPTURE HABITS
# ============================================

CAPTURE="
Each person gets a note in people/.
Meeting notes same day, linked to person.
Deal stages tracked with dated updates.
Intros requested logged in intros/.
Monthly investor updates in updates/.
"

# ============================================
# INTENT - what to surface (optional)
# ============================================

INTENT="
Surface relationships that have gone quiet.
Find patterns in what moves deals forward.
Notice who I haven't followed up with.
Connect people who should know each other.
Identify signals I might be missing.
"

# ============================================
# OUTPUT
# ============================================

cat <<EOF
## Folders
${FOLDERS}

## Tags

### Relationship types
${RELATIONSHIP_TAGS}

### Pipeline and status
${PIPELINE_TAGS}

### Actions and follow-ups
${ACTION_TAGS}

### Relationship signals
${SIGNAL_TAGS}

## Links
${LINKS}

## Capture habits
${CAPTURE}

## What to surface
${INTENT}
EOF
