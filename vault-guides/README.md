# Vault Guides

A vault guide tells Enzyme about your vault. It's **optional**—Enzyme intelligently detects your vault's structure—but a vault guide helps you shape what matters.

## Two Kinds of Information

A vault guide can contain two types of information:

### 1. Structure (folders, tags, links)

This tells Enzyme *where to look* and *how content clusters*:

```
## Folders
Readwise/
journal/daily/
people/

## Tags
#idea #question #unresolved

## Links
[[open questions]]
[[things I believe]]
```

Enzyme uses this to select which entities get catalyst questions generated for them.

### 2. What You're Thinking About (optional)

This is different. If you're working through something intellectually—a tension, a question, an aspiration—you can mention it. Enzyme will use this to calibrate the *angle* of its questions.

**You don't have to articulate tensions.** If you just describe your vault structure, that's fine. The catalyst questions will still be good—they surface what's in your notes.

**But if something is alive for you**, mentioning it helps. Some examples:

```
I keep circling back to the tension between building in public
and protecting ideas until they're ready.

I'm trying to develop more strategic thinking about my life decisions.

I notice I keep avoiding questions about long-term commitment.

I want to think more like an ecologist—noticing systems, not just parts.
```

These aren't required. Write whatever feels true about your vault and your thinking. The system will detect whether there's intellectual signal worth using.

## What to Write

Write whatever comes naturally. There's no wrong format. Some people describe their folder structure. Others describe what they're wrestling with. Most people do both.

**Examples of what people write:**

> "This is where I process what I read and connect it to my work."

> "I use tags for status: #question, #developing, #evergreen. Readwise highlights sync to Readwise/. Morning pages go in journal/daily/."

> "I'm trying to understand why I resist long-term planning even though I know it helps."

> "Book notes and project planning. I tag sources with #book, #article, #conversation."

> "I keep returning to questions about how the tools I use shape what thoughts feel possible."

All of these are valid. The system adapts to what you provide.

## Using the Templates

Each script outputs a starting template. Run it, edit to match your vault, done.

```bash
./personal.sh       # Individual reflection — journal, reading, personal notes
./community.sh      # Curated content — shared knowledge, collective sense-making
./business-crm.sh   # Relationships — pipeline, investors, CRM-style tracking
```

## Structure Reference

If you want to include structure, here's what Enzyme recognizes:

**Tags** — including hierarchies
```
#travel
#travel/pyrenees
#question
```

**Wikilinks** — concept notes that other notes reference
```
[[open questions]]
[[things I believe]]
```

**Folders** — where content lives
```
Readwise/Books/
journal/daily/
people/
```

**Capture habits** — how content arrives
```
Kindle highlights sync to Readwise/.
Each person gets a note in people/.
```

## Customizing

Edit the scripts to match your vault. The output is just text—copy it, modify it, use what's useful.
