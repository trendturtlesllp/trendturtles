# TrendTurtles Blog — Constitution

Single source of truth for this blog rebuild. Refer here before asking me the same question twice.

## Copy-Paste Prompts

Paste one of these into any chat — a brand new one with no prior memory included — and nothing else should need to be said. Each is self-sufficient: it points at this file and `blog/POST_TEMPLATE.md`, which hold every rule, so the prompts themselves stay short instead of duplicating the rulebook (and never go stale when the rulebook changes).

**New cluster (regular) post:**
> You're working on the TrendTurtles blog at this repo. You have no memory of any prior conversation — everything you need is in this repo. First, read `blog/CONSTITUTION.md` in full, start to end, and `blog/POST_TEMPLATE.md` in full. They are the complete, current rulebook — follow every rule in them exactly, including corrections logged in §8/§9, not just a first-pass version of a rule.
>
> Then write and publish one new cluster post. Topic: `[give a topic, or leave blank and find one yourself]`.
>
> Do this in order, without asking me anything unless you're genuinely blocked (can't find a real specific problem, can't verify a core fact):
> 1. Check §5a's theme-depth rule first. If the current theme needs a pillar post before another cluster, tell me that instead of writing a cluster anyway.
> 2. Run the full §5 pipeline end to end: evergreen validation, find the actual specific real searched problem (not a generic topic) via web research, gap-analysis against what's already ranking, name the real-world audience segments (§3a), keyword-mapped outline, Ogilvy-voice draft (§3), light/simple English, mandatory solution section + comparison table, black+blue palette only (§6a), full SEO including JSON-LD (§6), generate its share-card image via `blog/generate-share-image.ps1` with an ABSOLUTE `-OutputPath` (known gotcha, §8).
> 3. Add it to `blog/index.html`'s listing, update the §9 log, commit and push.
> 4. Generate the social copy per §4b: one LinkedIn main post, one X thread (4-5 tweets), and 2-3 standalone punch posts for each platform.
>
> End your final message with the complete, ready-to-copy-paste text for the LinkedIn main post, the numbered X thread, and all punch posts for both platforms — clearly labeled, including which day of the week each punch is meant for per §4b.

**New pillar (evergreen) post:**
> You're working on the TrendTurtles blog at this repo. You have no memory of any prior conversation. First, read `blog/CONSTITUTION.md` in full and `blog/POST_TEMPLATE.md` in full — they are the complete current rulebook.
>
> Write and publish one new pillar post. Theme: `[broad topic]`.
>
> Do this in order:
> 1. Check §9's log for which cluster posts already exist under this theme, to link down to.
> 2. Follow §5a: broad, checklist/principle-style, evergreen — not built around a number that will go stale (§5b) — names real-world audience segments (§3a), links to every existing cluster post under this theme.
> 3. Research real, common checklist items/mistakes for this theme via web search, same rigor as §5 step 2 (real, not generic).
> 4. Draft an outline and show it to me before writing the full post — this is the one checkpoint pillar posts keep, since they're more structural. Everything else, proceed without asking.
> 5. Once I approve the outline: full SEO, black+blue palette, share-image, add to `blog/index.html`, update §9, commit+push.
> 6. Generate social copy per §4b, same as a cluster post.
>
> End your final message with the outline for my review first; once approved and published, follow up with the ready-to-copy-paste LinkedIn/X/punch content.

## 0. Start Here (read this first — for a fresh session with no prior memory)

**What this is**: TrendTurtles is a quantitative trading technology company (prop trading, not public advisory — see disclaimer in §2). This repo is its static HTML/CSS site (GitHub Pages, no build tools, no framework), domain `trendturtles.com`. This file governs a rebuild of `/blog/` from a fictional-dialogue "story" format into direct, factual, Ogilvy-style finance/stock-market content.

**Where things stand** (update this line whenever status changes materially — treat it as the current pointer, not a historical log; full history is in §9 and in `git log`):
> As of 2026-10-06: blog rebuilt flat, 1 cluster post published (`gold-making-charges-india-real-cost.html`), cadence is 2-3 posts/week (§4a), gold theme's pillar post is next (not started yet — theme-depth rule in §4a says pillar before more gold clusters). Site-wide link/heading audit done. Root-page SEO buildout is also now done (meta/canonical/OG/Twitter/JSON-LD on all 6 pages, favicon, sitemap.xml, robots.txt, 404.html, .nojekyll, branded og:image on every page, favicon uses the logo's exact navy on white) — see §8. Content/copy on root pages is still off-limits by default (§1); only the technical/SEO layer was touched.

**File map**:
- `blog/CONSTITUTION.md` (this file) — all rules: scope, voice, SEO checklist, colour palette, pipeline, cadence, log of every post and every decision.
- `blog/POST_TEMPLATE.md` — the literal copy-paste HTML skeleton + checklist for a new post. Markdown, never served as a real page.
- `blog/generate-share-image.ps1` — reusable script, renders the 1200×630 branded og:image/twitter:image card every post needs (see §8).
- `blog/blog.css` — blog-only CSS (loaded after root `../style.css`, overrides a few of its colour choices on blog pages only — see §6a).
- `blog/*.html` (flat, no subfolders) — the actual published posts, plus `blog/index.html` as the hub.
- Root content pages (`index.html`, `about.html`, `contact.html`, `products-services.html`, `style.css`) — off-limits content by default (§1) — edit only on an explicit, specific instruction, logged as an exception in §8.
- Root technical infra (`sitemap.xml`, `robots.txt`, `404.html`, `.nojekyll`, `favicon-512.png`, `apple-touch-icon.png`) — built 2026-10-06, shared by the whole site, not "blog only."

**To continue the work cold**: use the two standing prompts at the very top of this file, under "Copy-Paste Prompts" (one for a regular/cluster post, one for a pillar post). Everything those prompts need to behave correctly — voice, pipeline, SEO checklist, colour rules — is in this file; they don't depend on chat history.

**Git discipline**: every meaningful change in this project should be committed and pushed to `origin main` before the session ends — this file and the published posts are the entire recoverable state if the local machine is lost. If you're picking this up fresh: run `git log --oneline -15` and `git status` first to see exactly what's already live vs. locally uncommitted.

## 1. Scope (current)

- Day-to-day work (new posts, content, voice, pipeline) is confined to `/blog/` only. Root site pages' **content/copy** (`index.html`, `about.html`, `contact.html`, `products-services.html`) stays off-limits by default — edit only on an explicit, specific instruction, and log it as an exception (§8).
- Root **technical/SEO infrastructure** (`sitemap.xml`, `robots.txt`, `404.html`, `.nojekyll`, favicon, meta tags, JSON-LD on root pages) is no longer deferred — built out 2026-10-06 (§8) after a site-wide audit, since it's infrastructure shared by the whole site, not root-page content.
- Flat URL structure: `/blog/<keyword-slug>.html`. No category subfolders.
- Strictly Finance / Stock Market topics, India-focused (SEBI, RBI, NSE, AMFI, exchange filings as primary sources).
- Old "Neo & Teo" story-format posts and cartoon images: delete, don't migrate.

## 2. Voice & Author

- Byline on every post: **Mayank Gola, TrendTurtles**.
- Strict Ogilvy style: no fictional dialogue, no cartoon illustrations, no "story" framing. Direct, factual, benefit-led.
- Every post links to the existing "not investment advice" disclaimer (`contact.html`) — one sentence, bottom of post. (Linking to it is fine without editing the page itself.)

## 3. Ogilvy Principles We Follow

Source: *Confessions of an Advertising Man* / *Ogilvy on Advertising*.

- **Headline does 80% of the work** — 5x more people read the headline than the body. Every headline must contain a specific fact or number, and must not be "blind" (reader should understand the benefit without reading further). Model: *"At 60 miles an hour the loudest noise in this new Rolls-Royce comes from the electric clock"* — specificity over hype.
- **"The consumer is not a moron, she is your wife."** Never condescend, never trick, never clickbait.
- **Long copy sells when the subject needs explaining.** Finance topics qualify — don't artificially shorten, but never pad either.
- **Tell the truth, but make the truth fascinating.** Lead with the single most interesting true fact (news-lead, not scene-setting).
- **Research the product before writing the ad.** Here: pull the real data/numbers before drafting — ties directly into the pipeline's gap-analysis step.
- **No jargon without a plain explanation in the same breath.** People buy what they understand fastest.
- **If an image is used, caption it.** Captions are among the most-read words on a page.

## 3a. Audience & Language Rule

- **Not boring.** Every article must be genuinely engaging — real examples, real numbers, a reason to keep reading. Dry fact-listing is a failure, even if accurate.
- **No heavy financial jargon.** If a technical term is truly unavoidable, explain it in plain words in the same sentence, the moment it appears — never assume prior knowledge.
- **Write for the real person this specific topic actually serves — not a generic "investor."** Before outlining any article, identify the actual real-world segments who have a reason to read it, and keep all of them in mind while writing. Example — an article on gold investing is not just for "investors." It should also speak to: the common buyer purchasing gold for a gift, a family buying for a wedding, a regular retail investor, a woman buying jewellery, and a local gold shop owner/dealer. Each of these reads with a different question in mind; good copy answers more than one of them without turning into separate articles.
- This rule applies to every topic, not just gold — at the outline stage (pipeline step 3), explicitly name the 3-5 real-world reader segments for that topic before writing.
- **Keep sentences short and words simple.** First draft of post #1 read as too heavy/formal — cut subordinate clauses, prefer two short sentences over one long one, avoid formal/legal-sounding phrasing (e.g. say "a consumer court in Bangalore" not "the Additional District Consumer Disputes Redressal Forum") even when citing something formal.
- **Every post must have an explicit, standalone "solution" section** — a short numbered list of exactly what to do, in plain action verbs. Explaining the problem well is not enough; a reader should be able to skip straight to this section and know what to do.
- **Every post must have at least one comparison that makes the abstract concrete** — e.g. "Shop A vs Shop B vs Shop C," "Option 1 vs Option 2," a before/after. A single worked example is good; a comparison across 2-3 real alternatives is what actually makes the point land and is what was missing from the first draft of post #1.

## 4. Competitive Benchmark

Researched traffic leaders, what to take from each:

| Source | Why it works | Lesson for us |
|---|---|---|
| Moneycontrol (154M visits/mo), Economic Times | Data + news velocity | Not our lane — we're evergreen explainer, not news wire |
| Zerodha Varsity | Free, plain-language, no paywall, no ads — 124 countries, huge organic backlinks | Plain language + genuinely free depth beats cleverness |
| Safal Niveshak | "Simplicity & humility," 90k+ loyal readers | Respect the reader's intelligence, stay humble, stay simple |
| Capitalmind, Freefincal | Data-led, India-specific, credible | India-specific primary-source data wins trust |
| Morgan Housel / Collaborative Fund | Behavioral finance told through real psychology + real data, zero fiction | Depth and narrative pull can come from *true* stories/data, not invented dialogue |
| Ben Carlson / A Wealth of Common Sense | Cuts through noise, concise | Brevity where the point is simple; don't pad |
| Nick Maggiulli / Of Dollars and Data | Data-first, approachable analogies | Analogies to explain data, not to replace it |

**Conclusion:** the highest-traffic finance writing is plain-language, free, genuinely educational, heavy on real data — never invented-story fiction. This confirms dropping Neo & Teo for direct Ogilvy-style copy.

## 5. Content Pipeline

Merged from two reference methods (evergreen-book-topic method + local-SEO Claude Code method), stripped of everything not applicable to a content blog:

1. **Evergreen validation** — topic must be a genuine, recurring problem, not a one-off news event.
2. **Find the specific, real, searched problem — not a generic category.** Picking an evergreen *category* (e.g. "gold investing") is not enough and is not a topic by itself. Within that category, search actual complaints, forum threads (Reddit, Quora, consumer-complaint sites), and reviews to find the exact, specific pain point real people are searching about (e.g. not "gold investing" but "gold making charges are too high" — a precise, named, searched problem with real complaint data behind it). The article's headline and angle come from this specific problem, never from a generic "X vs Y comparison" or "beginner's guide" framing picked without this step. This is the "3-star review" step from the source method — do not skip it or substitute it with a generic competitor-content scan.
   - **Google Trends and Amazon both block automated access** (tested 2026-10-06/07: Amazon returns 503, Google Trends returns 429 — confirmed, not assumed). No workaround is worth building; a fragile automation here would violate the "keep it simple" rule more than it would help. If the user happens to have a Trends chart or Amazon/Goodreads review screenshot handy for the topic area, paste/screenshot it in chat — that's the strongest signal available and gets used directly. Otherwise, proceed on web-search-based validation as above.
3. **Keyword-mapped outline** — name the 3-5 real-world reader segments this topic actually serves (see §3a), then build H2/H3 structure targeting the primary keyword + long-tail variants + the specific gap found in step 2, written so it speaks to those segments in plain language.
4. **Draft** — strict Ogilvy voice, simple/short English, short paragraphs, every claim cited and hyperlinked to a primary source.
5. **Self-edit pass** — cut fluff, shorten sentences, remove anything that reads AI-generated or repetitive.
6. **SEO finalize** (post-level only — see §6).
7. **Publish** inside `/blog/`, add to the blog index listing.

## 6. SEO Checklist (per post, post-level only — no root files touched yet)

- `<title>` ~50–60 chars, unique, primary keyword near the front
- `<meta name="description">` ~150–160 chars, unique
- `<link rel="canonical">` — absolute URL
- OG tags (title/description/url/type=article/site_name) + Twitter card
- `<meta name="robots" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1">`
- JSON-LD: `BlogPosting` (headline, description, mainEntityOfPage, datePublished/dateModified, author: Person "Mayank Gola", publisher: Organization "TrendTurtles") + `BreadcrumbList` (must mirror visible breadcrumb exactly) + optional `FAQPage` (only if the post has a genuine Q&A section)
- One `<h1>` per page, no skipped heading levels
- URL slug: lowercase, hyphenated, keyword-first, **no dates baked in** (slugs are permanent — GitHub Pages has no server-side redirects)
- Outbound citations to SEBI/RBI/NSE/AMFI (or the relevant regulator/authority for the topic — e.g. BIS for hallmarking) as normal followed links (`target="_blank" rel="noopener noreferrer"`)
- If a published post is edited later: update `dateModified` and the visible byline date
- **Only attribute a specific number to a specific named company/entity if there's one traceable source for that exact figure.** A vague or AI-summarized claim ("Brand X charges 13-33%") is not citable unless you can point to the actual page it came from. When in doubt, use a verified case (a named, dated, sourced example) instead of a loosely-attributed statistic.
- **No "Related Reading" section until there's actually something to link to.** Don't show a placeholder or empty links block on the first few posts — add the section once a second relevant post exists.

## 4a. Publishing Cadence

**2-3 posts/week** — revised 2026-10-06 (was daily, changed same week once the quality-risk tradeoff below was made explicit). Mostly cluster posts; pillar posts are occasional, scheduled by theme-depth, not by calendar day.

- **The risk noted when daily was tried**: output only works if every post still gets genuine research, gap-analysis, and an Ogilvy-quality editing pass (the gold post took 4 revision rounds to get right). Rushing to hit a quota on finance/YMYL content, if quality slips, reads as a content-farm pattern to Google and to readers — worse than publishing less often. This still applies at 2-3/week: it's a target, not an excuse to skip §5 pipeline steps.
- **If research doesn't turn up a genuinely specific, real, searched problem** (§5 step 2) for a planned post — don't force a generic one out to hit the count. Skip it, pull forward a pillar post, or extend the topic list, rather than lower the bar.

**Theme-depth rule — when to write a pillar vs. a cluster:**
- Cluster is the default. Most weeks, every post is a cluster post.
- Write a **pillar** only when starting a theme that doesn't have one yet — ideally as the 1st or 2nd post of that theme, so later cluster posts have something to link up to (not written retroactively after the theme is already deep).
- A theme counts as having reasonable depth once it has **1 pillar + at least 3-4 cluster posts**. Don't start a new theme before the current one reaches that depth — a half-filled theme (1-2 posts, then abandoned for a new topic) builds weak topical authority; a handful of themes each taken to real depth builds strong authority. This is standard topic-cluster SEO practice, not a TrendTurtles-specific preference.
- Once a theme hits that depth, decide per real signal: keep adding clusters if gap-analysis keeps surfacing genuine new problems in it, or start the next theme's pillar if it's thinning out.
- Rough shape at 2-3/week: a theme (pillar + ~4 clusters) takes about 2 weeks to reach depth, then the next theme starts. **Gold theme status**: 1 cluster live (making charges), pillar still not started — pillar should be next, per this rule, before adding more gold clusters.
- The two standing copy-paste prompts live in one place only — the top of this file, under **"Copy-Paste Prompts"** — so there's a single source of truth. Don't re-add them here.

## 4b. Social Promotion (LinkedIn + X)

No direct posting — no LinkedIn/X connector available. Every publish generates ready-to-paste copy; the user posts it manually. Decided 2026-10-06.

**Per article, generate:**
- 1 LinkedIn main post (native text, no link in the body — LinkedIn's algorithm suppresses reach on posts with outbound links. Put the URL in the first comment instead.)
- 1 X thread, 4-5 tweets, link only in the last tweet
- 2-3 standalone "punch" posts for each platform — short, one specific fact/number from the article each, not generic. Same content idea works for both platforms but write it native to each (LinkedIn: slightly fuller sentences; X: tighter). Link in the first comment (LinkedIn) / in-thread or in a reply (X) — never jammed into the main post text.

**Timing — spread across the week, never stacked same-day** (decided over the "all at once" alternative, to avoid follower fatigue and the platforms' own same-day self-cannibalization of reach): publish-day gets the main post + thread; the 2-3 punches land on the following days, one per day, not bunched. At 2-3 articles/week this gives near-daily presence on both platforms without ever posting more than once a day about the same piece.

**Every post leads with its own specific number/fact** — same Ogilvy rule as the blog itself (§3). Never a generic "new post is live" announcement.

**Expectation check**: this is for referral traffic and brand visibility, not SEO "link building" in the technical sense — social links are typically `nofollow` and don't pass direct ranking equity to Google. Worth doing regardless, just don't conflate it with backlink strategy.

## 5a. Content Architecture — Pillar + Cluster

A single deep-dive post only ranks for the specific query it targets. Someone earlier in their research (e.g. about to buy gold, but doesn't yet know to search "making charges" specifically) won't find it. Fix: build each evergreen theme as a **pillar + cluster**, not isolated one-off posts.

- **Pillar post**: broad, evergreen, matches top-of-funnel searches (e.g. "things to check before buying gold," "gold buying guide India"). Short-ish, scannable, links out to every deep-dive under that theme.
- **Cluster posts**: the specific, narrow, highly-searched problems (e.g. this making-charges post, a future HUID-verification post, a future jewellery-vs-coin post). Each links back up to the pillar, and sideways to sibling cluster posts once they exist (see §6's "Related Reading" rule).
- When starting a new topic area (gold, mutual funds, F&O, whatever comes next), plan the pillar early — it doesn't have to be written first, but it should exist within the first 2-3 posts of that theme, not be an afterthought.
- Do not try to make a single cluster post also rank for the pillar's broad query by stuffing in extra angles — keep each post narrow and specific (§5 step 2), and let the pillar do the broad-query job.

**Gold theme status**: `gold-making-charges-india-real-cost` is cluster post #1. Pillar post ("what to check before buying gold" or similar) is planned, not yet written.

## 5b. Specificity vs. Evergreen — Different Jobs for Different Posts

A cluster post (§5a) earns its value FROM specific, dated numbers — a real worked example, a real rupee figure, a real court case. That specificity is the point, not a flaw to fix. Don't dilute a cluster post into vague generalities to chase "evergreen." Keep the real numbers.

- If a cluster post stays live long enough that its worked example drifts far from current prices, **refresh it** — update `dateModified` and the numbers (existing §6 rule). Don't pre-emptively genericize it to dodge that maintenance.
- Adding a percentage alongside a rupee figure (e.g. "~16% of the bill") is a fine, cheap bonus where it fits naturally — it survives price moves and costs nothing in specificity. But it's a nice-to-have, never a reason to soften or remove a real number.
- **True evergreen content — the kind that shouldn't need refreshing — belongs in the pillar post (§5a), not the cluster post.** Principles, checklists, what-to-watch-for: things that stay true regardless of today's price. That's the right place to optimize for timelessness. A cluster post's job is to be sharply, specifically right about one problem, right now — not to be eternal.

## 6a. Colour Palette

Ogilvy recommends serif type and restraint. Keep it to two colours, full stop:

- **Plain text: black** (`#111`, inherited from the root stylesheet's body colour). Headings, body copy, bold/emphasis — all black. No navy, no teal, no grey-tinted text.
- **Blue, for links and highlights only** (`#4c5fd5` — this is the same blue the root stylesheet already uses for links, reused for consistency rather than introducing a second blue). Use it for: hyperlinks, and sparingly for one deliberate accent per post (e.g. a pull-quote's left border).
- Neutral greys (`#e6e6e6`, `#f9f9f9`) are fine for structural chrome — box backgrounds, hairline borders — since they're not really "colour," just light/dark framing. Don't tint them blue or any other hue.
- **The root `style.css` itself still uses navy headings and a teal `strong` highlight** (`.section h2`, `.section p strong`) — out of scope to edit directly. `blog/blog.css` overrides both of these back to black, scoped to blog pages only, by loading after `style.css` in the `<head>`. Any new blog.css class must follow the same two-colour rule.
- Tables: no inline per-cell styling. `blog.css` styles the bare `<table>` tag generically (black text, black top/bottom border) — just write plain `<table><tr><td>` in post HTML.

## 7. Images

Only when a real chart/data visual adds genuine value — not a standard element of every post. No AI-generated illustration, no cartoon, no filler stock photo. When used: wrap in `<figure>+<figcaption>` citing the data source, write alt text that describes the insight (not keywords), descriptive filename, `loading="lazy"`.

**A plain HTML table beats an image for simple numeric breakdowns** (e.g. a 4-5 row cost breakdown). Tables are more accessible, lighter, and just as readable — don't manufacture a chart image when a table does the job.

## 8. Deferred (not in current scope, was in the original full-site plan)

- ~~Root page SEO, `sitemap.xml`, `robots.txt`, `404.html`, favicon, homepage `Organization`/`WebSite` schema~~ — **done 2026-10-06**, see below.
- Redirect stubs for old category-index URLs — still not done (low priority, no known inbound links to the deleted category-index pages; `404.html` now exists as the minimum safety net).

**Root-page SEO buildout + share-image fix, 2026-10-06** (user confirmed doing this now, after the link/technical audit surfaced it, plus a separate real bug report: article links posted to X/LinkedIn showed a broken-image preview):
- **Root cause of the broken preview**: no page had an `og:image` at all, and the gold post has no in-body image (by design, §7) — social crawlers had nothing to show, hence a broken-image icon. The `POST_TEMPLATE.md` skeleton itself had the bug baked in: a comment saying "og:image only if this post uses a real chart image," which is wrong — `og:image` is a technical requirement for every page's share preview, independent of whether the post body has a content image. Fixed in the template so this can't recur.
- **Fix**: `blog/generate-share-image.ps1` — a reusable script that renders a plain 1200×630 branded card (off-white background, blue top accent bar, TrendTurtles logo, black serif headline text). Not AI art, not a cartoon — same two-colour rule as §6a, just as a social-share asset instead of in-body content. Generates one default card (`assets/images/social-share-default.png`, used by root pages + blog hub) and one per-post card (`assets/images/gold-making-charges-share.png`, used by that post). Every future post generates its own via this script (now step 1 of publishing in `POST_TEMPLATE.md`).
  - **Known gotcha, worth remembering**: the script's `Bitmap.Save()` throws a generic GDI+ error if `-OutputPath` is a relative path — PowerShell's `$PWD` and the .NET process's `Environment.CurrentDirectory` aren't reliably the same thing after `Set-Location`. Always pass an absolute path.
- Added `og:image` + `twitter:image` (+ width/height) and switched `twitter:card` to `summary_large_image` on all 6 live pages, and added `image` to the gold post's `BlogPosting` JSON-LD.
- Generated a square favicon (`favicon-512.png`, `apple-touch-icon.png` at 180×180, and `favicon.ico`). `logo.png` itself is a 355×91 wordmark, not natively square. Went through two corrections before landing on the final version:
  1. First attempt: an invented navy-background/white-text "TT" — wrong, not the user's real brand mark.
  2. Second attempt: the full `logo.png` composited onto a white square — correct brand material, but illegible at true favicon size (16×16/32×32), same problem any full wordmark has when squeezed that small.
  3. **Final, 2026-10-06**: white background, "TT" in the logo's *exact* navy (`#002060`, colour-sampled directly from `logo.png`'s pixels, not guessed), Times New Roman Bold to match the site's serif identity. Real brand colour, serif per Ogilvy (§3), and legible at actual favicon size — the right balance.
- Added `/favicon.ico` specifically (not just the PNG via `<link rel="icon">`) — some browser chrome (address-bar-area site icon, distinct from the tab icon) looks for `/favicon.ico` by convention regardless of `<link>` tags, and showed broken without it. Every page now links both: `<link rel="icon" href="/favicon.ico" sizes="any">` and the PNG as a `type="image/png"` fallback.
- Added full `<meta name="description">`, canonical, OG, Twitter, and `robots` meta to all 4 root pages; `lang="en"` → `lang="en-IN"` site-wide.
- Added `Organization` + `WebSite` JSON-LD (`@graph`) to `index.html` — `Organization.sameAs` links the existing social profiles (LinkedIn/Facebook/Instagram/YouTube, already in use on the blog's `Blog` JSON-LD).
- Added root `/sitemap.xml` (6 URLs, `<loc>`+`<lastmod>` only — no `changefreq`/`priority`, Google ignores both) and `/robots.txt` (allow all, points at the sitemap, disallows the two `.md` reference files and the `.ps1` script from being crawled as if they were content).
- Added `/404.html` (branded, `noindex`) — GitHub Pages serves this natively for any unmatched path.
- Added `/.nojekyll` — **this repo had no `.nojekyll` and no `_config.yml`, so GitHub Pages was running default Jekyll processing on every deploy.** Turned out to be low-risk in practice (`CONSTITUTION.md`/`POST_TEMPLATE.md` have no YAML front matter, so Jekyll was passing them through as raw files rather than converting them to HTML pages — confirmed, not assumed) but there was no reason to leave Jekyll processing enabled for a hand-authored static site that uses none of its features. `.nojekyll` makes GitHub Pages serve every file exactly as committed, with no transformation layer and no surprises later.

Revisit the remaining item (old-URL redirect stubs) if it ever turns out those deleted pages had real inbound links.

**One-off exception, 2026-10-06**: `contact.html` email updated to `trendturtlesllp@gmail.com` on explicit direct instruction. Not a scope change — the blog-folder-only boundary still holds; this was a single, specifically-named edit, not a reopening of root-page work in general.

**Site-wide link/technical audit, 2026-10-06**: user asked to check the whole site (not just `/blog/`) for broken links and technical errors. Fixed, as small targeted bug-fixes (not a reopening of the full root-SEO buildout below):
- `blog/index.html`: added a missing `<h2>Latest Articles</h2>` — page previously jumped `<h1>` straight to `<h3>` (the blog-card title), skipping a heading level.
- 4 root pages (`index.html`, `about.html`, `contact.html`, `products-services.html`): normalized the nav's Blog link from an absolute `/blog/index.html` to a relative `blog/index.html`, matching every other nav link's style.
- `products-services.html`: `<title>` was missing the `" - TrendTurtles"` suffix that every other page uses.
- Deleted 8 orphaned images + `dummy.txt` from `assets/images/` — leftover from the deleted Neo & Teo posts, referenced by nothing. (`indexhero.jpg` at root was left alone at the time — it was intentionally commented out in `index.html`, not orphaned by accident — but later removed anyway, see the 2026-10-06 cleanup entry below.)

**Repo cleanup, 2026-10-06**: removed `README.md` (stale pre-rebuild changelog — `blog/CONSTITUTION.md` is the one file with current, git-tracked project state; no second file to keep in sync) and `indexhero.jpg` (never actually rendered — only existed inside an HTML comment in `index.html`, which was also cleaned up).

**Still deferred, confirmed still deferred after this audit**: the 4 root pages still have no meta description, canonical, Open Graph/Twitter tags, or JSON-LD at all (both blog pages have full coverage). This is a real gap, not a false positive — but it's a buildout (plus `sitemap.xml`, `robots.txt`, favicon, homepage `Organization`/`WebSite` schema — the original full-site plan), not a bug fix, so it wasn't done in this pass without separately confirming.

## 9. Published / Drafted Posts Log

Tracks what exists, so topic selection never accidentally repeats and so this file stays the real source of truth as the blog grows.

| Slug | Specific problem addressed | Audience segments named | Status |
|---|---|---|---|
| `gold-making-charges-india-real-cost` | Gold making charges/wastage are an undisclosed, negotiable cost (12-25%+) plus GST (3%+5%) that's never recovered on resale — illustrated with a verified consumer-court case (Kalyan Jewellers), a worked-example breakdown (₹26,625 lost on a ₹1.68L purchase), a shop-to-shop comparison (₹19,383 gap for the same necklace), a jewellery-vs-coin-vs-bar comparison, and a 4-step "what to do before you pay" section | Wedding/gift buyer, woman buying jewellery, retail investor comparing gold as an asset, (indirectly) honest gold dealers wanting transparency | Drafted 2026-10-06, revised same day (lighter language, added solution + comparison sections, simplified to black+blue palette, reframed the core number as ~16% alongside the rupee figure), reviewed by user, **published 2026-10-06** (added to `blog/index.html` listing, committed and pushed) |
| *(planned)* Gold pillar post — "what to check before buying gold" | Broad, top-of-funnel gold-buying research query, not yet a specific post | Buyer at the very start of research (hasn't yet thought "making charges" specifically) | Not started — see §5a |
