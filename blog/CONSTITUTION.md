# TrendTurtles Blog — Constitution

The one file that runs this blog: the prompt, the current status, the rules, and the lessons behind them. Older history is in `git log`.

## The Prompt

Paste this into any chat, including a brand new one with no memory. Nothing else needs to be said.

> You're working on the TrendTurtles blog in this repo. You have no memory of earlier conversations; everything you need is in the repo. Read `blog/CONSTITUTION.md` and `blog/POST_TEMPLATE.md` in full, then run `git log --oneline -10` and `git status`.
>
> Write and publish the next post. Topic: `[leave blank to follow "Next up", or name one]`.
>
> Follow §2 step by step. Stop once, at step 5, and show me everything that step lists. After I approve, finish everything without asking again unless you are genuinely blocked. End with the filled Publish Gate and the social posts.

## Where things stand

*Update this section every time something is published or decided.*

- **Live posts (2):** `gold-hallmark-check-india` (pillar) and `gold-making-charges-india-real-cost` (cluster). They link to each other.
- **Next up:** a cluster post on gold savings-scheme failures, under the gold seller pillar (leads in §10; the main case is from 2017, so look for newer ones first). After that, old-gold exchange deductions. The pillar needs 2 to 3 more clusters before a new topic area starts.
- **Open item:** the making-charges cluster was published before the Publish Gate existed and has never been through it. Known gaps: meta description is 166 characters; the 12–25% ranges, the 2–10% buyback cut and the coin and bar rates have no source links; no lines for named audiences; its BIS Care link goes to a broker's explainer, not BIS. Give it its own gate pass as a separate job. Adding a Related Reading link to it does not count as that job.

## 1. What this is

TrendTurtles is a quantitative trading technology company. It does not give investment advice. This repo is its static HTML/CSS website on GitHub Pages (`trendturtles.com`), with no build step.

The blog publishes plain, factual, Ogilvy-style articles on Indian finance and markets, written for ordinary people. Author on every post: **Mayank Gola, TrendTurtles**.

**Files**

- `blog/CONSTITUTION.md`: this file.
- `blog/POST_TEMPLATE.md`: the HTML skeleton for a new post.
- `blog/generate-share-image.ps1`: makes the 1200×630 share card each post needs.
- `blog/blog.css`: blog-only styles, loaded after the root `style.css`.
- `blog/<slug>.html`: the posts, flat, no subfolders. `blog/index.html` is the hub.
- Root pages (`index.html`, `about.html`, `contact.html`, `products-services.html`, `style.css`): do not change their text or design unless the author names the exact change.
- Root infrastructure (`sitemap.xml`, `robots.txt`, `404.html`, `.nojekyll`, favicons): shared by the whole site; update when a post needs it.

**Git:** commit and push every meaningful change before the session ends. The repo is the only backup.

## 2. How a post gets made

1. **Decide pillar or cluster.** Check "Next up" and §6. A cluster needs its pillar to exist first.
2. **Find the real problem.** Search complaints, consumer forums, court cases, regulator notices and surveys until there is a specific problem real people have. A topic ("gold investing") is not a problem. A checklist is not a problem.
3. **State cause and effect in two lines.** Example: buyers don't know how to check a hallmark (cause), so they rely on the seller, and some sellers exploit that (effect). The article is built on the cause.
4. **Write the fact sheet.** One line for every number, date and case the post will use: the claim, the source link, the date on the source page, who the source attributes it to. Open every source page and read it. A search-result summary is not a source.
5. **Stop and show the author:** the problem in one sentence, cause and effect, the fact sheet, 2 to 3 headline options, the outline, the audience segments, and the slug. Wait for approval. The headline is the author's decision; when the author gives exact wording, use it exactly.
6. **Write** the post from `POST_TEMPLATE.md`, following §4 and §7.
7. **Run the Publish Gate** (§3), including the fresh reviewer. Fix what it finds.
8. **Publish:** share image, card on `blog/index.html`, Related Reading in both directions, `sitemap.xml`, commit, push to `main`, then confirm the live URL loads. §9 says how to do each of these.
9. **Finish:** update "Where things stand" and §10, commit and push again, and give the author the social posts (§8).

If research finds no real, specific problem, say so and do not write a generic post to fill the slot.

## 3. Publish Gate

Nothing is pushed until every line is answered, with the evidence. Paste the filled gate into the final message.

1. The problem can be stated in one sentence, with a source.
2. The fact sheet is complete and every source page was opened. The headline number is the newest available.
3. The headline says what the source measured, is a statement with a number, and uses simple words. `<title>` is 60 characters or fewer.
4. Every term a non-finance reader may not know is explained where it first appears. Sentences are short.
5. Each named audience segment gets at least one line written for it.
6. There is at least one comparison table.
7. There is a standalone numbered "what to do" section, and each step says how.
8. Every factual claim is hyperlinked, and every link returns 200.
9. The head is complete: meta description of 150 to 160 characters, canonical, OG, Twitter, share image, JSON-LD that parses, breadcrumb matching the visible one.
10. One `<h1>`, no skipped heading levels, read time equal to body words ÷ 200.
11. Wired in: card on the blog index, Related Reading both ways, sitemap entry with `lastmod`.
12. A fresh agent with no context has reviewed the draft against this file and opened the sources itself. Its gaps are fixed. If the fixes changed the headline or any fact, the review was run again.

A "no" is either fixed or reported to the author with the reason. Never call a post checked or verified without this. If the reviewer and the author disagree on the headline, the author decides, and the first paragraph must then give the source's exact question and numbers.

## 4. Writing rules

**Voice**

- Direct and factual. No invented dialogue, no characters, no story framing.
- Lead with the single most interesting true fact. No scene-setting.
- Short sentences, simple words. Prefer two short sentences to one long one. Say "a consumer court in Bangalore", not the forum's full legal name.
- Explain every unfamiliar term where it first appears (hallmark, karat, GST, HUID).
- Never boring: real cases, real numbers, a reason to keep reading.
- Respect the reader. No clickbait, no talking down.

**Headline (Ogilvy)**

- A statement, not a question and not "N things to check". Model: "At 60 miles an hour the loudest noise in this new Rolls-Royce comes from the electric clock."
- It carries a real number or fact from a source, and it names the cause of the problem.
- It must not claim more than the source measured. Read the survey's actual question, not the press release's summary of it.
- A rupee figure built by adding unrelated numbers is not a fact. Use a percentage or a single sourced figure.

**Every post must have**

- A comparison table that makes the point concrete (shop A vs B vs C, buy vs exchange vs scheme).
- A numbered "what to do" section a reader could act on without reading the rest.
- A line for each audience segment it names.
- A "Key Takeaways" box near the end.
- The one-line "does not provide investment advice" note, linking to `contact.html`.

**Audience**

- Name the 3 to 5 real kinds of people the topic serves before outlining: for gold, a family buying for a wedding, a gift buyer, someone saving monthly, a small investor. Not a generic "investor".
- A trader or institutional angle goes in only if that reader would reach this article through their own searches. Otherwise save the idea as its own post (§10).

## 5. Research rules

- Sources, in order of preference: the regulator or government body itself (BIS, RBI, SEBI, AMFI, NSE), court or consumer-forum reports, named surveys, established news. Say who said it when the source is a lender's or brand's blog.
- Give every case its year. An old case presented without a date reads as current.
- Do not present an old figure as today's. If the newest figure is from 2024, say 2024.
- Compare two years only if the question and the sample were the same.
- A number attached to a named company needs one traceable source for that exact figure. A single unverified customer complaint is not enough to name a company.
- Survey caveats belong in the text: who was asked, how many answered, what the question was.
- Google Trends and Amazon block automated access. If the author has a Trends chart or a review screenshot, they paste it in chat and it is used directly.

## 6. Pillars and clusters

- **A pillar is one type of problem**, not a topic area. A topic area can need several pillars. Gold has three: trusting the seller, trusting the lender, trusting the platform.
- **A cluster is one specific instance** of its pillar's problem, covered in depth with real numbers.
- **Pillars are found bottom-up.** Research the topic area widely, list the real problems, and see which larger problem they share. Never invent a broad topic and hope clusters fit under it.
- A pillar is shorter in scope than a cluster, never thinner. It needs the same sourcing, comparison table and "what to do" section.
- Write a pillar when a problem-type has none. Then give it 3 to 4 clusters before starting a new topic area.
- Cluster posts keep their real, dated numbers and are refreshed when the numbers drift (update `dateModified`). Timeless guidance belongs in the pillar.
- Every post links up to its pillar and across to its sibling posts in "Related Reading". Leave that section out only when there is nothing to link to.

## 7. Page and SEO rules

- `<title>`: 60 characters or fewer, keyword near the front. The `<h1>` may be longer.
- Meta description: 150 to 160 characters.
- Canonical, OG and Twitter tags, `og:image` on every page, `lang="en-IN"`.
- JSON-LD: `BlogPosting` and `BreadcrumbList` on every post; `FAQPage` only for a real Q&A section.
- One `<h1>`; headings never skip a level.
- **Slug:** lowercase, hyphenated, keyword first, no dates. Choose it after the angle is final, because a slug is permanent once published. GitHub Pages has no redirects.
- Outbound source links open in a new tab with `rel="noopener noreferrer"`.
- When a published post is edited, update `dateModified`.
- **Colours:** black text and one blue (`#4c5fd5`) for links and a single accent. Light greys for borders and boxes. Nothing else, and no inline colour styles. `blog.css` overrides the root stylesheet's navy headings and teal bold text on blog pages.
- **Tables:** plain `<table>` markup. Add `class="text-table"` when the cells hold words rather than numbers.
- **Images:** only when one adds real understanding. A picture is copyrighted unless its owner says otherwise; "it doesn't say do not use" is not permission. Use an image only with a stated licence or policy that allows it, and credit the source. BIS allows reuse of its website material with acknowledgement. Do not use a picture that shows an outdated standard. No AI illustrations, no cartoons, no filler stock photos. A table beats a chart image for simple numbers.

## 8. Cadence and social posts

**Cadence:** 2 to 3 posts a week, mostly clusters. It is a target, never a reason to skip a step in §2.

**Social posts:** there is no way to post directly, so each publish ends with ready-to-paste text.

- **LinkedIn:** one main post in plain text with no link in the body. The link goes in the first comment, because LinkedIn shows link posts to fewer people.
- **X:** one thread of 4 to 5 tweets. The link goes in the last tweet of the thread.
- **Punch posts:** 2 to 3 short posts for each platform, one fact each, posted one a day on the days after publishing. Never several on the same day.
- Every social post leads with a specific number or fact, the same as the article.
- These bring readers and visibility. They are not SEO backlinks.

## 9. How to do the mechanical steps

This is a Windows machine. Use Git Bash for `curl`, `grep` and `git`, and Windows PowerShell for the share-image script.

- **Share image:** the command is in `POST_TEMPLATE.md`. Pass the post's `<h1>` text as the headline and an absolute output path. Name the file `<slug>-share.png` (the two existing posts use slightly shorter names; leave them), and point `og:image`, `twitter:image` and the JSON-LD `image` at it.
- **Check links:** `curl -s -o /dev/null -w '%{http_code}' -L -A "<a browser user-agent>" <url>` for every outbound link. Each must return 200. If a source blocks scripted requests, open it another way and say so in the gate.
- **Check JSON-LD:** in PowerShell, pass each `<script type="application/ld+json">` block to `ConvertFrom-Json`. It must not throw.
- **Count words:** strip the tags from everything inside `<section class="section">` and count. Read time is that number ÷ 200, rounded.
- **Fresh reviewer:** start a new general-purpose agent with no context. Tell it not to edit anything, to read this file and the draft, to open every source itself, and to report what the sources do not support and which gate lines fail.
- **Blog index card:** newest post first. Heading is the post's `<h1>`, or its `<title>` when the `<h1>` is very long. Text is the meta description.
- **Sitemap:** `<loc>` and `<lastmod>` only. Add the new post. Set `lastmod` to today for it, for `/blog/`, and for any post you edited.
- **Editing a live post**, even to add a Related Reading link: set its `dateModified` to today.
- **Commit and push** straight to `main`, with a plain one-line message saying what changed.
- **Confirm it is live:** GitHub Pages takes up to two minutes. Request the new URL with `?v=<any number>` added until it returns 200 and shows the new `<h1>`.
- **Old share previews:** X and LinkedIn cache them. Add `?v=2` to the link on X, or use LinkedIn's Post Inspector.
- **Favicon:** already done. It is a serif "TT" in the logo's navy (`#002060`) on white, because `logo.png` is a wide wordmark and cannot be an icon.
- `robots.txt` blocks crawling of this file, the template and the script. `.nojekyll` makes GitHub Pages serve files as committed. `404.html` handles any missing URL, including the hallmark post's first address (`is-your-jeweller-trustworthy-india`).

## 10. Posts and leads

**Published**

| Slug | Type | Problem it addresses | Headline fact and source | Published |
|---|---|---|---|---|
| `gold-making-charges-india-real-cost` | Cluster | Making charges and GST are a cost buyers are not shown clearly and never get back on resale | About 16% of a typical bill; a 2018 Bangalore consumer-court case (3–5% promised, 23.5% charged) | 2026-10-06 |
| `gold-hallmark-check-india` | Pillar: trusting the seller | Buyers don't know how to check a hallmark, so they rely on the seller | LocalCircles, April 2025: only 18% of 29,853 answers said their jewellery had the six-character code | 2026-10-08 |

Notes on the hallmark post: the author chose its headline ("82% of Gold Buyers in India Don't Know about Hallmark, "Gold Purity Standards""), so its first paragraph gives the survey's exact question and full breakdown and must keep doing so. It has no in-article image, because no freely usable photo of the current hallmark was found.

**Gold topic area: the map**

1. **Trusting the seller** (buying, exchanging, savings schemes). Pillar live. Cluster leads:
   - Savings schemes: The News Minute, Nov 2017, reported Nathella Sampathu Chetty admitting it owed ₹75 crore to over 21,000 people. LiveLaw, Dec 2024, explains why schemes stay within 11 to 12 months. Both opened and read.
   - Old-gold exchange: IIFL Finance puts the usual refining charge at 1 to 3%. A stronger, independent source is still needed.
2. **Trusting the lender** (gold loans). No pillar yet. Lead, not yet verified at source: RBI's 2024 findings on valuation and auction irregularities at gold-loan lenders.
3. **Trusting the platform** (digital gold; the end of new Sovereign Gold Bond issues in 2025). No pillar yet. Leads not yet verified at source.

**Other ideas**

- For traders: jewellers stock up 4 to 6 weeks before Dhanteras and the wedding season, which may lead retail demand. Own post, own search intent. Not yet verified at source.

## 11. Lessons that became rules

Each of these cost a correction. They are here so the reason behind a rule is not forgotten.

- The first article was good because the author corrected it four times. Writing a rule down does not make it followed; the Publish Gate does.
- A search summary gave a headline number that turned out to be two years old and not attributed to the regulator. Open the page.
- A survey asked what code buyers' jewellery had. The draft headline said buyers "can't recognise a hallmark". Read the question.
- "27% last year, 11% this year" looked like improvement. The "yes" answer was 65% both years. Check the whole table before describing a trend.
- A pillar was first written as "7 things to check". It solved no problem. Find the problem, then its cause, then write.
- The cause turned out to be buyer unawareness, with seller behaviour as the effect. The first angle had these the wrong way round, and the URL had to be renamed.
- A ₹20,000 "saving" was built by adding two unrelated comparisons. It read as careless, and it was.
- A trader section was nearly added to a consumer checklist. That reader would never search for that page.
- Posts shared on X and LinkedIn showed a broken preview because no page had an `og:image`.
- An image that looks right can teach the wrong thing: the regulator's own ring picture shows the pre-2021 hallmark.
- Keep the process simple. A step nobody runs is worse than no step.
