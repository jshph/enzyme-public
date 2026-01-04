## What's in this repo

This README explains the concepts. For practical setup, see [vault-guides/](./vault-guides/)—shell script templates to (optionally) help you describe your vault structure before running `enzyme init`.


# Enzyme Slate

A Slate is a structured map of your vault's conceptual topology—which entities carry signal, when you last engaged them, and what questions they raise.

## How it differs from CLAUDE.md

CLAUDE.md is static context. You write it, Claude reads it.

A Slate contains **catalysts**—questions that actively retrieve content from your vault. Not keyword search. Not "find files with this tag." Catalysts surface content that *resonates* with the question, even if the words don't match.

**CLAUDE.md is a map**—it tells Claude where things are.
**A Slate is a compass**—its catalysts point toward content that resonates with the question, surfacing what's latent rather than what's labeled.

A Slate is also computed. It reflects the current state of your vault—you can't hand-write it. It changes as your vault changes.

## Entities as semantic clusters

Every tag, link, and folder pattern in your vault is an **entity**. But entities aren't just labels—they're semantic clusters that gather related content.

When you tag a journal entry and a book highlight with `#travel`, you're not filing them. You're drawing a line between them. Enzyme sees that line—and everything else connected to it.

```
#travel
├── journal entry from a solo trip
├── highlight from a book on wandering
├── note about a conversation with a stranger
└── question you wrote at 2am in a new city
```

That cluster exists whether you remember it or not. Enzyme surfaces it.

**Hierarchical tags create nested clusters.** `#travel/pyrenees` is a subset of `#travel`. Enzyme understands the hierarchy—a catalyst for `#travel` can pull from Pyrenees content; a catalyst for `#travel/pyrenees` stays focused.

**Wikilinks are concept anchors.** A link like `[[open questions]]` isn't a folder—it's a note that other notes reference. Enzyme treats it as an entity, clustering everything that links to it.

**Folders group by structure.** Content in `people/` or `Readwise/Books/` forms its own cluster based on where it lives, not how it's tagged.

**Recency shapes what surfaces.** Within each cluster, Enzyme starts with what you've touched most recently and works backward. A folder like `people/` doesn't surface everyone equally—it surfaces the people you've been thinking about lately.

## Catalysts probe the clusters

For each entity, Enzyme generates **catalysts**—questions tuned to surface what's latent in that cluster.

The same vault, explored through different catalysts, reveals completely different material:

| Catalyst | What surfaces |
|----------|---------------|
| "What kept pulling you forward when something was asking you to stay?" | Meeting notes and journal entries about pace, presence, what someone else helped you see |
| "Rubin wrote 'begin with a question and use it to guide an adventure of discovery'—where did you do this, or fail to?" | Book highlights alongside journal entries about craft, curiosity, getting lost |
| "Le Guin called attention 'not all that different from hunting'—where did the camera make you a tourist instead of a hunter?" | Reflections on capture vs. presence, when documenting replaced noticing |

Catalysts don't search—they *resonate*. Content surfaces not because it contains the right words, but because it speaks to the same question.

## Temporal awareness

Enzyme tracks when you last engaged each entity:

- **Active**: touched recently, high frequency
- **Moderate**: some activity, not urgent
- **Dormant**: haven't engaged in months

A dormant entity isn't dead—it might be the most interesting one. Enzyme can surface questions about threads you've abandoned, patterns you stopped noticing, ideas that went quiet.

## What's in a Slate

A Slate is JSON. It captures what a CLAUDE.md file can't: when you last touched each thread, how active it's been, and—crucially—questions generated from the content itself.

Enzyme doesn't just find `#travel` in your vault. It generates a question that probes what's latent in that cluster. The question becomes the retrieval mechanism. It knows you touched this entity two days ago, that it's active, that you've been thinking about it. A static file can only know what you remembered to write down.

```json
{
  "slate_entities": [
    {
      "entity": "#travel",
      "type": "tag",
      "temporal_metadata": {
        "last_seen": "2026-01-02",
        "activity_trend": "active"
      },
      "catalysts": [
        {
          "text": "What kept pulling you forward when something was asking you to stay?",
          "topic_name": "pace and presence"
        }
      ]
    }
  ],
  "summary": {
    "total_entities": 30,
    "total_catalysts": 281,
    "activity_distribution": { "active": 28, "moderate": 1, "dormant": 1 }
  }
}
```

## Inspecting your Slate

```bash
# See what entities Enzyme found
enzyme slate | jq '.slate_entities[] | .entity'

# Check activity levels
enzyme slate | jq '.slate_entities[] | {entity, activity: .temporal_metadata.activity_trend}'

# Look at catalysts for an entity
enzyme slate | jq '.slate_entities[] | select(.entity | contains("travel")) | .catalysts[].text'

# Find dormant entities
enzyme slate | jq '.slate_entities[] | select(.temporal_metadata.activity_trend == "dormant") | .entity'
```
