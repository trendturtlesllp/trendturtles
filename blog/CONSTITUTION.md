# TrendTurtles Blog — Constitution

The one file that runs this blog: the prompt, the current status, the rules, and the lessons behind them. Older history is in `git log`.

## The Approach

This is the reason the blog exists. Every other rule serves it.

The blog solves problems people are actually facing in finance, in detail, for the people facing them, with steps they can follow. Nobody has time to read a blog that does not solve their problem, so nothing else is published.

1. **The topic** (gold, for example) is agreed with the author in conversation.
2. **Collect everything real about that topic** from the internet: every problem people report, every opportunity they miss, with its source. This goes into the topic's research file before any post is planned.
3. **Find the pillars in the data.** For each problem ask why it happened to that person. The two or three human reasons that explain most of the list are the pillars, such as "the buyer does not know". They come out of the sorting; nobody, the author included, names them first.
4. **Write each pillar as a series.** The main article opens it, on the human problem itself. Then every specific problem or fix inside it gets its own article, an episode, which zooms in and follows the same shape. Every episode holds tightly to the pillar's theme and shows it from a new angle. Each one informs, gives a solution, and is interesting to read.
5. **Finish one pillar's series before starting the next.** Move to the next topic when all the topic's pillars are done.

So the pyramid is built from the bottom up (problems, then pillars) and written from the top down (main article, then its episodes).

We never pick a topic, a pillar or an angle by thinking one up. It comes from the list.

## The Prompt

Paste this into any chat, including a brand new one with no memory. Nothing else needs to be said.

> You're working on the TrendTurtles blog in this repo. You have no memory of earlier conversations; everything you need is in the repo. Read `blog/CONSTITUTION.md` and `blog/POST_TEMPLATE.md` in full, then the current topic's research file, then run `git log --oneline -10` and `git status`.
>
> Write and publish the next article in the current series. Which one: `[leave blank to follow "Next up", or name an episode from the research file]`.
>
> Follow §2 step by step. Stop once, at step 5, and show me everything that step lists. After I approve, finish everything without asking again unless you are genuinely blocked. End with the filled Publish Gate and the social posts.

## Where things stand

*Update this section every time something is published or decided.*

- **Current topic:** gold.
- **Research file:** `blog/GOLD_RESEARCH.md`, first pass done 2026-10-08, about 60 entries.
- **Pillars** (from the data, accepted by the author on 2026-10-08), written in this order:
  1. The buyer does not know. **Series in progress.**
  2. The buyer trusts the other side without proof. Not started.
  3. The buyer pays first for a promise. Not started; needs more research on fixes first.
- **Series 1 so far:** main article `gold-hallmark-check-india` (live) and one episode, `gold-making-charges-india-real-cost` (live). The remaining episodes are listed in the research file.
- **Next up:** episode 2 of series 1 in the research file ("What digital gold, gold ETFs and bank coins really cost"), then the rest in the listed order, unless the author names another.
- **Schedule:** hallmark social posts are done (2026-10-10). 2026-10-11, write and publish the next article.
- **The two live articles stay as they are** (author's decision, 2026-10-09). We do not go back and rework published posts; what we learn goes into the next ones. Fix a live post only if a fact in it turns out to be wrong. Known gaps, for the record, not a to-do list:
  - `gold-hallmark-check-india` is not in the four-part order.
  - `gold-making-charges-india-real-cost` was never through the Publish Gate. Several of its figures have no source link (the 12–25% ranges, the 2–10% buyback cut, the coin and bar rates), its hallmarking fee disagrees with the BIS FAQ, and its BIS Care link goes to a broker's page. **Do not reuse a figure from it in a new article without sourcing it afresh.**
- **Still to research:** the human impact of these problems (families, weddings, debts). Do it as part of each new article's research.

## 1. What this is

TrendTurtles is a quantitative trading technology company. It does not give investment advice. This repo is its static HTML/CSS website on GitHub Pages (`trendturtles.com`), with no build step.

The blog publishes plain, factual, Ogilvy-style articles on Indian finance and markets, written for ordinary people. Author on every post: **Mayank Gola, TrendTurtles**.

**Files**

- `blog/CONSTITUTION.md`: this file.
- `blog/POST_TEMPLATE.md`: the HTML skeleton for a new post.
- `blog/<TOPIC>_RESEARCH.md`: one per topic. Every problem and opportunity found, with sources, sorted into pillars, with each pillar's list of episodes and a mark on every row a post covers.
- `blog/generate-share-image.ps1`: makes the 1200×630 share card each post needs.
- `blog/blog.css`: blog-only styles, loaded after the root `style.css`.
- `blog/<slug>.html`: the posts, flat, no subfolders. `blog/index.html` is the hub.
- Root pages (`index.html`, `about.html`, `contact.html`, `products-services.html`, `style.css`): do not change their text or design unless the author names the exact change.
- Root infrastructure (`sitemap.xml`, `robots.txt`, `404.html`, `.nojekyll`, favicons): shared by the whole site; update when a post needs it.

**Git:** commit and push every meaningful change before the session ends. The repo is the only backup.

## 2. How a post gets made

1. **Check the research file** for the current topic. If it does not exist or is thin, build it first (§6) and show the author the pillars before going further. That is an extra stop, and it only happens when a topic is new.
2. **Take the next episode** of the current series: the author names it, or "Next up" does. A pillar's main article comes before its episodes. Then deepen it: search complaints, consumer forums, court cases, regulator notices and surveys for that specific problem. A topic ("gold investing") is not a problem. A checklist is not a problem.
3. **State cause and effect in two lines**, and in one more line how this article shows its pillar's theme from a new angle. Example: buyers don't know how to check a hallmark (cause), so they rely on the seller, and some sellers exploit that (effect). The article is built on the cause. Note any opportunity that belongs with this problem.
4. **Write the fact sheet.** One line for every number, date and case the post will use: the claim, the source link, the date on the source page, who the source attributes it to. If a page carries no date, write "undated" and the date you read it. Open every source page and read it. A search-result summary is not a source.
5. **Stop and show the author:** the problem in one sentence, cause and effect, how it fits the pillar's theme, the opportunities it will carry, the fact sheet, 2 to 3 headline options, the outline, the audience segments, and the slug. Wait for approval. The headline is the author's decision; when the author gives exact wording, use it exactly.
6. **Write** the post from `POST_TEMPLATE.md`, in the four-part shape, following §4 and §7.
7. **Run the Publish Gate** (§3), including the fresh reviewer. Fix what it finds.
8. **Publish:** share image, card on `blog/index.html`, Related Reading in both directions, `sitemap.xml`, commit, push to `main`, then confirm the live URL loads. §9 says how to do each of these.
9. **Finish:** mark the rows and the episode as posted in the research file, update "Where things stand" and §10, commit and push again, and give the author the social posts (§8).

If the research file has no real, specific problem left, say so and do not write a generic post to fill the slot.

## 3. Publish Gate

Nothing is pushed until every line is answered, with the evidence. Paste the filled gate into the final message.

1. The problem is an entry in the topic's research file and can be stated in one sentence, with a source. The post follows the four-part shape, and a reader can tell which pillar's theme it belongs to.
2. The fact sheet is complete and every source page was opened. The headline number is the newest available.
3. The headline says what the source measured, is a statement with a number, and uses simple words. `<title>` is 60 characters or fewer.
4. Every term a non-finance reader may not know is explained where it first appears. Sentences are short. The problem, the impact and the solution are each written so the reader sees their own situation, using only real cases and numbers.
5. Each named audience segment gets at least one line written for it.
6. There is at least one comparison table.
7. There is a standalone numbered "what to do" section, and each step says how.
8. Every factual claim is hyperlinked, and every link returns 200.
9. Every item in §7 is done: search phrases placed, the full head (meta description of 150 to 160 characters, canonical, OG, Twitter, share image, JSON-LD that parses, breadcrumb matching the visible one), and the body and site items.
10. One `<h1>`, no skipped heading levels, read time equal to body words ÷ 200.
11. Wired in: card on the blog index, Related Reading both ways, sitemap entry with `lastmod`. The post has its Key Takeaways box, the investment-advice note, and, for an episode, a link to its series' main article.
12. A fresh agent with no context has reviewed the draft against this file and opened the sources itself. Its gaps are fixed. If the fixes changed the headline or any fact, the review was run again.

A "no" is either fixed or reported to the author with the reason. Never call a post checked or verified without this. If the reviewer and the author disagree on the headline, the author decides, and the first paragraph must then give the source's exact question and numbers.

## 4. Writing rules

**Voice**

- Direct and factual. No invented dialogue, no characters, no story framing.
- Lead with the single most interesting true fact. No scene-setting.
- Short sentences, simple words. Prefer two short sentences to one long one. Say "a consumer court in Bangalore", not the forum's full legal name.
- Explain every unfamiliar term where it first appears (hallmark, karat, GST, HUID).
- Never boring: real cases, real numbers, a reason to keep reading.

**Make the reader feel it is about them**

Every part is written so the reader thinks "this is my situation". This applies to the problem, the impact and the solution alike.

- **Write to one person in the moment it happens:** standing at the jeweller's counter with the family waiting, signing the scheme card, handing over a mother's bangles for a loan. Use "you".
- **The problem:** describe it the way it is lived, not the way a regulator files it. "You are shown a stamp you cannot read", not "low hallmark awareness".
- **The impact:** say what it costs in the reader's own terms: the wedding budget, the savings of years, the shame of finding out later, the argument at home. Use the amounts and cases from the sources.
- **The solution:** make each step something the reader can picture doing, with the words to say to the jeweller or the bank. It should leave them feeling able, not scared.
- **Show the reported case behind each point.** Wherever the problem, the impact or the solution is described, attach a real case that a person or family reported, in one or two lines with its year and a link: what happened to them, what it cost, "read the case". Example of the form: "Because the gold was less pure than promised, the marriage ended. Read the case." Keep it short so it does not turn into a story. Its job is to show that these are not small issues and that real people suffer from them. If no reported case can be found and opened, say the point plainly and do not make one up.
- **Stay true.** The feeling comes from real cases and real numbers. Never invent a person, a quote or a scene, and never push the emotion further than the facts go.
- Respect the reader. No clickbait, no talking down.

**Headline (Ogilvy)**

- A statement, not a question and not "N things to check". Model: "At 60 miles an hour the loudest noise in this new Rolls-Royce comes from the electric clock."
- It carries a real number or fact from a source, and it names the cause of the problem.
- It must not claim more than the source measured. Read the survey's actual question, not the press release's summary of it.
- A rupee figure built by adding unrelated numbers is not a fact. Use a percentage or a single sourced figure.

**The shape of every post**

The reader should recognise their own experience and leave knowing which mistake not to make. Four parts, in this order:

1. **The issue**, shown in detail with its sources.
2. **What people go through because of it:** real reported cases, court rulings, money lost. Each one in a line or two, with its link.
3. **The impact:** what it does to the buyer, such as trust given and then broken.
4. **How to avoid it:** numbered steps a reader can follow.

Opportunities (a right the buyer has, a cheaper route, a free check) are not separate posts. They go inside the problem post they belong to, usually in part 4, and they supply the social punch posts (§8).

**Every post must also have**

- A comparison table that makes the point concrete (shop A vs B vs C, buy vs exchange vs scheme). If its numbers are illustrative, say so.
- A numbered "what to do" section a reader could act on without reading the rest. This is part 4.
- A line for each audience segment it names.
- A "Key Takeaways" box near the end.
- A clear tie to its series: an episode says early on how it connects to the pillar's human problem, and links to the main article.
- The one-line "does not provide investment advice" note, linking to `contact.html`.

Each article has to do three things at once: inform, give a solution, and hold the reader's interest. If one is missing, it is not ready.

**Audience**

- Name the 3 to 5 real kinds of people the topic serves before outlining: for gold, a family buying for a wedding, a gift buyer, someone saving monthly, a small investor. Not a generic "investor".
- A trader or institutional angle goes in only if that reader would reach this article through their own searches. Otherwise add it to the research file as its own row.

## 5. Research rules

- Sources, in order of preference: the regulator or government body itself (BIS, RBI, SEBI, AMFI, NSE), court or consumer-forum reports, named surveys, established news. Say who said it when the source is a lender's or brand's blog.
- Give every case its year. An old case presented without a date reads as current.
- Do not present an old figure as today's. If the newest figure is from 2024, say 2024.
- Compare two years only if the question and the sample were the same.
- A number attached to a named company needs one traceable source for that exact figure. A single unverified customer complaint is not enough to name a company.
- Survey caveats belong in the text: who was asked, how many answered, what the question was.

## 6. The research file, pillars and posts

**The research file** (`blog/<TOPIC>_RESEARCH.md`) comes first. Build it by searching the whole topic, not one angle: buying, selling, exchanging, saving, borrowing, investing, tax, online, fraud. `GOLD_RESEARCH.md` is the model to copy. It has one section per pillar, and in each section:

- a table of **problems** and a table of **opportunities**, one row each, with: the entry in one plain sentence, who faces it, the source link with the date on the page, and the slug of the post that covers it (blank until then);
- the **list of episodes** that pillar's series needs, in writing order, with what is done;
- after the pillars: rows that fit no pillar, leads not yet sourced, and pillars that were expected but the data did not support.

- A row whose source page has not been opened is a lead, and says so. It cannot be used in a post until it is opened.
- Reddit, Quora, Amazon and Google Trends block automated access. The author can paste anything from them into chat and it goes in the file.
- The file keeps growing. Add rows whenever research for a post turns up something new.

**Pillars**

- A pillar is a human reason that many rows share: why this keeps happening to people. Name it in plain words from the buyer's side ("the buyer does not know").
- Expect two or three pillars per topic. They come from sorting the rows. Never write pillar names first and fit rows to them, whoever suggests the names.
- File each row under its main reason. A pillar the data does not support is not a pillar; note it in the research file as unsupported and say what research would test it.
- An opportunity is used inside the article about the problem it helps with. One opportunity can serve several articles.

**Articles**

A pillar is written as a series, like a show with episodes.

- **Main article, one per pillar.** It opens the series. It states the human problem with a hard fact, shows what the standard or the regulator says, gives real cases, shows the impact on people's lives, and ends with what to do. It links to every episode.
- **Episodes (cluster articles).** One for each specific problem or fix inside the pillar (what making charges cost, how to check a hallmark). Same four-part shape, zoomed in on one thing, with real dated numbers. Each holds to the pillar's theme and shows it from a different angle; an episode that drifts from the theme belongs in another pillar or nowhere. Refresh the numbers when they drift and update `dateModified`.
- Every article has an impact part: what the problem costs the reader in money, time, proof or trust, using the facts already sourced. Stories of broken marriages, homes sold or deaths go in only when a source reports them, written with care and never for effect. If none is found, the impact part stays with what is known.
- Articles in the same series link to each other in "Related Reading". Leave that section out only when there is nothing to link to.
- Order: a pillar's main article, then its episodes, then the next pillar. A series is finished when its main article and every listed episode are live; every article written from 2026-10-09 on must have passed the Publish Gate. When all pillars are done, agree the next topic with the author.

## 7. Page and SEO rules

No SEO point is too small to skip. The list below is the whole checklist; gate line 9 means every item on it.

**Words people search**

- Before writing, note the main phrase people would type for this problem and two or three variants. Take them from the research: complaint titles, court-report headlines, the questions people ask.
- The main phrase appears in the `<title>`, the `<h1>` or the first paragraph, the slug, the meta description, and at least one `<h2>`. Variants go in other headings and in the text. Only where they read naturally; never stuffed.

**The head**

- `<title>`: 60 characters or fewer, main phrase near the front, unique on the site. The `<h1>` may be longer.
- Meta description: 150 to 160 characters, unique, with the main fact and a reason to click.
- Canonical link, absolute and pointing to the page itself.
- OG tags (title, description, url, type `article`, site name, image with width and height) and Twitter tags (`summary_large_image`, title, description, image).
- `robots` meta as in the template, `lang="en-IN"`, `author` meta, viewport, favicon links.
- JSON-LD: `BlogPosting` (headline, description, dates, author, publisher with logo, image) and `BreadcrumbList` matching the visible breadcrumb. `FAQPage` only for a real Q&A section, with the same text as on the page.

**The body**

- One `<h1>`; headings never skip a level; headings say what the section holds.
- Internal links: to the series' main article, to sibling episodes in Related Reading, and from at least one older post back to the new one. Link text describes the target; never "click here".
- Outbound source links open in a new tab with `rel="noopener noreferrer"`, and are left as normal followed links.
- Any image has descriptive alt text, a descriptive file name, `width` and `height`, and `loading="lazy"`.
- Short paragraphs and lists, so the page reads well on a phone. Wide tables sit inside the scrolling wrapper from the template.
- No inline scripts or styles beyond what the template has, and no large files; the page should stay light.

**The site**

- **Slug:** lowercase, hyphenated, main phrase first, no dates. Choose it after the angle is final, because a slug is permanent once published. GitHub Pages has no redirects.
- Add the post to `sitemap.xml` with today's `lastmod`, and update `lastmod` for `/blog/` and for any post edited.
- Add the card to `blog/index.html`.
- When a published post is edited, update `dateModified`.
- After publishing, confirm the live page returns 200 and shows the new title.
- **Colours:** black text and one blue (`#4c5fd5`) for links and a single accent. Light greys for borders and boxes. Nothing else, and no inline colour styles. `blog.css` overrides the root stylesheet's navy headings and teal bold text on blog pages.
- **Tables:** plain `<table>` markup. Add `class="text-table"` when the cells hold words rather than numbers.
- **Images:** only when one adds real understanding. A picture is copyrighted unless its owner says otherwise; "it doesn't say do not use" is not permission. Use an image only with a stated licence or policy that allows it, and credit the source. BIS allows reuse of its website material with acknowledgement. Do not use a picture that shows an outdated standard. No AI illustrations, no cartoons, no filler stock photos. A table beats a chart image for simple numbers.

## 8. Cadence and social posts

**Cadence:** 2 to 3 posts a week. It is a target, never a reason to skip a step in §2.

**Social posts:** there is no way to post directly, so each publish ends with ready-to-paste text.

- **LinkedIn:** one main post in plain text with no link in the body. The link goes in the first comment, because LinkedIn shows link posts to fewer people.
- **X:** one thread of 4 to 5 tweets. The link goes in the last tweet of the thread.
- **Punch posts:** 2 to 3 short posts for each platform, one fact each, posted one a day on the days after publishing. Never several on the same day. The opportunities in the post make the best punches (for example, "if hallmarked gold is less pure than its stamp, you are owed twice the difference").
- **Language of every social post:** very simple English and very short sentences, one idea per line. Simpler than the article. No long or joined sentences, no formal words ("entitle", "turns out", "in value"). The author treats this as important.
- Every social post leads with a specific number or fact, the same as the article.
- These bring readers and visibility. They are not SEO backlinks.

## 9. How to do the mechanical steps

This is a Windows machine. Use Git Bash for `curl`, `grep` and `git`, and Windows PowerShell for the share-image script.

- **Share image:** the command is in `POST_TEMPLATE.md`. Pass the post's `<h1>` text as the headline and an absolute output path. Name the file `<slug>-share.png` (the two existing posts use slightly shorter names; leave them), and point `og:image`, `twitter:image` and the JSON-LD `image` at it.
- **Check links:** `curl -s -o /dev/null -w '%{http_code}' -L -A "<a browser user-agent>" <url>` for every outbound link. Each must return 200. If a source blocks scripted requests, open it another way and say so in the gate.
- **Check JSON-LD:** in PowerShell, pass each `<script type="application/ld+json">` block to `ConvertFrom-Json`. It must not throw.
- **Count words:** strip the tags from everything inside `<section class="section">` and count. Read time is that number ÷ 200, rounded.
- **Fresh reviewer:** start a new general-purpose agent with no context. Tell it not to edit anything, to read this file and the draft, to open every source itself, and to report what the sources do not support and which gate lines fail.
- **Blog index card:** newest post first. Heading is the post's `<h1>`, or its `<title>` when the `<h1>` is very long. Text is one or two sentences based on the meta description.
- **Sitemap:** `<loc>` and `<lastmod>` only. Add the new post. Set `lastmod` to today for it, for `/blog/`, and for any post you edited.
- **Editing a live post**, even to add a Related Reading link: set its `dateModified` to today.
- **Commit and push** straight to `main`, with a plain one-line message saying what changed.
- **Confirm it is live:** GitHub Pages takes up to two minutes. Request the new URL with `?v=<any number>` added until it returns 200 and shows the new `<h1>`.
- **Old share previews:** X and LinkedIn cache them. Add `?v=2` to the link on X, or use LinkedIn's Post Inspector.
- `robots.txt` blocks crawling of this file, the template and the script. `.nojekyll` makes GitHub Pages serve files as committed. `404.html` handles any missing URL.

## 10. Published posts

Leads and ideas live in the topic's research file, not here.

| Slug | Series and role | Problem it addresses | Headline fact and source | Published |
|---|---|---|---|---|
| `gold-hallmark-check-india` | Gold 1, "the buyer does not know": main article | Buyers don't know how to check a hallmark, so they rely on the seller | LocalCircles, April 2025: only 18% of 29,853 answers said their jewellery had the six-character code | 2026-10-08 |
| `gold-making-charges-india-real-cost` | Gold 1: episode | Making charges and GST are a cost buyers are not shown clearly and never get back on resale | About 16% of a typical bill; a 2018 Bangalore consumer-court case (3–5% promised, 23.5% charged) | 2026-10-06 |

Notes on the hallmark post: the author chose its headline ("82% of Gold Buyers in India Don't Know about Hallmark, "Gold Purity Standards""), so its first paragraph gives the survey's exact question and full breakdown and must keep doing so. It has no in-article image, because no freely usable photo of the current hallmark was found.

## 11. Lessons that became rules

Each of these cost a correction. They are here so the reason behind a rule is not forgotten.

- The biggest one: topics, pillars and angles were being chosen by thinking them up. The list of real problems comes first, and everything else is taken from it.
- Pillar names were thought up three times: by a tidy "who do you trust" scheme, by a first sort into five subject areas, and by the author's own five suggestions. Tested against the rows, two of the author's five had no support. Only the sort by "why did this happen to this person" held.
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
- Do not go back to perfect old posts. Ideas never run out, and polishing what is behind stops what is ahead. Carry the lesson into the next article.
- A link that returns "200" can still fail for a reader: one government news page took up to 40 seconds to load. Time each link, and use the page's own main address, not an AMP or `index.html` copy.
