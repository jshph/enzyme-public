# Vault Guides

A vault guide tells Enzyme which entities to pay attention to. It's **optional**—Enzyme intelligently detects what kind of thinking your vault contains—but a vault guide lets you shape how content clusters.

## Why structure matters

Enzyme treats your tags, links, and folders as **semantic clusters**. The structure you provide determines how content groups together—and how catalysts probe it.

**Hierarchical tags create nested meaning.**

```
#travel
#travel/pyrenees
#travel/roadtrips
#travel/pilgrimages
```

Content tagged `#travel/pyrenees` belongs to both the Pyrenees cluster *and* the broader travel cluster. A catalyst for `#travel` can pull from all of them. A catalyst for `#travel/pyrenees` stays focused.

**Tag clusters serve different purposes.**

```
# Ideas and concepts     → what you're thinking about
#idea #seedling #thread

# Areas of life          → where the thinking lives
#work #health #faith

# Actions and status     → what needs attention
#question #revisit #unresolved

# Sources                → where it came from
#book #conversation #experience
```

Enzyme sees these clusters and generates catalysts accordingly. An entity like `#question` gathers every unresolved thing across your vault—catalysts probe that collection, not individual notes.

**Wikilinks anchor concepts.**

```
[[open questions]]
[[things I believe]]
[[people who shaped me]]
```

These aren't folders. They're notes that other notes reference. Enzyme treats them as entities, clustering everything that links to them.

**Folders group by location.**

```
people/
people/investors/
people/advisors/
Readwise/Books/
journal/daily/
```

Content in `people/investors/` forms its own cluster. Nested folders create nested clusters. A note in `people/investors/` might also be tagged `#warm` and link to `[[pipeline]]`—it belongs to multiple clusters at once.

**Recency matters.** Within each cluster, Enzyme prioritizes what you've touched recently. A `people/` folder surfaces the people you've been thinking about lately, not everyone equally. Same for tags—recent mentions surface first.

## Using These Templates

Each script outputs a vault guide you can optionally pass to `enzyme init`. Run the script, edit the lists to match your vault, done.

```bash
./personal.sh       # Individual reflection — journal, reading, personal notes
./community.sh      # Curated content — shared knowledge, collective sense-making
./business-crm.sh   # Relationships — pipeline, investors, CRM-style tracking
```

## What Goes in a Vault Guide

**Folders** — where content lives, including nesting

```
Readwise/
Readwise/Books/
journal/
journal/daily/
people/
```

**Tags** — organized by purpose, including hierarchies

```
# Ideas
#idea #seedling #thread

# Areas
#work #travel #travel/pyrenees

# Actions
#question #revisit #blocked
```

**Links** — concept notes that other notes reference

```
[[open questions]]
[[weekly review]]
[[books that changed me]]
```

**Capture habits** — how content arrives

```
Kindle highlights sync to Readwise/.
Morning pages in journal/daily/.
Each person gets a note in people/.
```

**Intent (optional)** — what you want to surface

```
Surface tensions between what I read and what I write.
Notice which people keep showing up in my thinking.
Find questions that keep appearing across different areas.
```

The entity lists tell Enzyme *what clusters exist*. The intent (if provided) helps tune *what to look for* within them.

## Customizing the Scripts

Edit the tag and folder variables to match your vault. The output is just text—copy it, modify it, use what's useful.
