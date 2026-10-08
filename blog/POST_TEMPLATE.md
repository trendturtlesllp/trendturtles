# Post Template

The HTML skeleton for a new file at `blog/<slug>.html`. All rules live in [`CONSTITUTION.md`](CONSTITUTION.md); this file only holds the markup.

Use it at step 6 of the constitution's §2, after the author has approved the problem, headline, outline and slug. Fill every `[BRACKETED]` placeholder and delete any optional block you do not use.

This file is markdown, so it is never served as a page.

**Share image** (every post needs one, whether or not the article has a picture). Run it from PowerShell with an absolute output path; a relative path fails with a GDI+ error:
```
.\blog\generate-share-image.ps1 -Headline "[the <h1> text]" -OutputPath "E:\Clone\Blog\trendturtles\assets\images\[SLUG]-share.png"
```

**Read time** in the byline is the body's word count ÷ 200, rounded.

```html
<!DOCTYPE html>
<html lang="en-IN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>[TITLE — 60 chars or fewer, primary keyword near the front]</title>
    <meta name="description" content="[META DESCRIPTION — 150-160 chars, unique, states the specific fact/benefit]">
    <meta name="author" content="Mayank Gola">
    <meta name="robots" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1">
    <meta property="og:title" content="[OG TITLE — can match <title>]">
    <meta property="og:description" content="[OG DESCRIPTION — can match meta description]">
    <meta property="og:url" content="https://trendturtles.com/blog/[SLUG].html">
    <meta property="og:type" content="article">
    <meta property="og:site_name" content="TrendTurtles">
    <meta property="og:image" content="https://trendturtles.com/assets/images/[SLUG]-share.png">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="630">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="[OG TITLE]">
    <meta name="twitter:description" content="[OG DESCRIPTION]">
    <meta name="twitter:image" content="https://trendturtles.com/assets/images/[SLUG]-share.png">
    <link rel="canonical" href="https://trendturtles.com/blog/[SLUG].html">
    <link rel="icon" href="/favicon.ico" sizes="any">
    <link rel="icon" href="/favicon-512.png" type="image/png">
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <link rel="stylesheet" href="../style.css">
    <link rel="stylesheet" href="blog.css">
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "BlogPosting",
        "headline": "[HEADLINE — <=110 chars]",
        "description": "[SAME AS META DESCRIPTION]",
        "mainEntityOfPage": "https://trendturtles.com/blog/[SLUG].html",
        "datePublished": "[YYYY-MM-DD]",
        "dateModified": "[YYYY-MM-DD]",
        "inLanguage": "en-IN",
        "image": "https://trendturtles.com/assets/images/[SLUG]-share.png",
        "author": {
            "@type": "Person",
            "name": "Mayank Gola",
            "url": "https://trendturtles.com/about.html"
        },
        "publisher": {
            "@type": "Organization",
            "name": "TrendTurtles",
            "url": "https://trendturtles.com/",
            "logo": {
                "@type": "ImageObject",
                "url": "https://trendturtles.com/favicon-512.png",
                "width": 512,
                "height": 512
            }
        }
    }
    </script>
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "BreadcrumbList",
        "itemListElement": [
            {"@type": "ListItem", "position": 1, "name": "Home", "item": "https://trendturtles.com/"},
            {"@type": "ListItem", "position": 2, "name": "Blog", "item": "https://trendturtles.com/blog/"},
            {"@type": "ListItem", "position": 3, "name": "[POST TITLE, SHORT — same text as the visible breadcrumb]", "item": "https://trendturtles.com/blog/[SLUG].html"}
        ]
    }
    </script>
    <!-- Optional: a third ld+json script, type FAQPage, ONLY if the FAQ
         section below is kept and has genuine Q&As -->
</head>
<body>

<header>
    <div class="logo">
        <a href="../index.html">
            <img src="../logo.png" alt="TrendTurtles Logo">
        </a>
    </div>
    <div class="menu-toggle" id="menu-toggle">☰</div>
    <nav id="nav-menu">
        <a href="../index.html">Home</a>
        <a href="../about.html">About</a>
        <a href="../products-services.html">Products & Services</a>
        <a href="index.html">Blog</a>
        <a href="../contact.html">Contact</a>
    </nav>
</header>

<section class="hero">
    <p class="breadcrumb">
        <a href="../index.html">Home</a> &rsaquo;
        <a href="index.html">Blog</a> &rsaquo;
        <span class="current">[POST TITLE, SHORT]</span>
    </p>
    <h1>[H1 — the headline the author approved, word for word. A statement with a real number.]</h1>
</section>

<section class="section">

    <p class="byline">
        By <strong>Mayank Gola</strong>, TrendTurtles &nbsp;·&nbsp; [X] min read &nbsp;·&nbsp; Published: [Month YYYY]
    </p>

    <!-- PART 1: THE ISSUE, in detail, with its sources -->
    <p>[LEAD PARAGRAPH — the most interesting true fact first, with its source linked. If the fact comes from a survey, give the question asked, how many answered and the full breakdown.]</p>

    <h2>[H2 — the issue, in plain words]</h2>
    <p>[Body copy. Short sentences, short paragraphs. Every factual claim hyperlinked to the source page you opened, with <code>target="_blank" rel="noopener noreferrer"</code>. Every unfamiliar term explained where it first appears.]</p>

    <!-- PART 2: WHAT PEOPLE GO THROUGH — real cases, court rulings, money lost. Give each case its year. -->
    <h2>[H2 — what goes wrong]</h2>
    <p>[...]</p>

    <!-- PART 3: THE IMPACT — what it does to the buyer (for example, trust given and then broken) -->
    <h2>[H2 — the impact]</h2>
    <p>[...]</p>

    <!-- The comparison table and PART 4 (how to avoid it) follow below. Opportunities go in part 4. -->

    <!-- Optional pull-quote for a single striking fact or stat -->
    <!--
    <p class="pull-quote">[ONE STRIKING, VERIFIED FACT OR QUOTE]</p>
    -->

    <!-- REQUIRED: at least one comparison table that makes the point concrete —
         e.g. Option A vs B vs C, Shop 1 vs Shop 2, Before vs After.
         Prefer a plain HTML table over a chart image for simple numeric comparisons
         (lighter, more accessible, no image needed). -->
    <h2>[H2 — the comparison, e.g. "X vs Y vs Z"]</h2>
    <p>[One line framing why this comparison matters]</p>
    <div style="overflow-x: auto;">
    <table>
        <tr><td><strong>[Header]</strong></td><td><strong>[Header]</strong></td></tr>
        <tr><td>[Option]</td><td>[Result]</td></tr>
        <!-- 2-3 rows. No inline colour styles; blog.css styles <table>.
             If the cells hold words rather than numbers, use <table class="text-table">. -->
    </table>
    </div>
    <p>[One line stating the concrete gap in rupees/numbers between options — this is the payoff of the comparison]</p>

    <!-- Optional image — only with a stated licence or policy that allows it (constitution §7) -->
    <!--
    <figure class="chart">
        <img src="../assets/images/[descriptive-filename].png" alt="[Describes what the picture shows]" loading="lazy">
        <figcaption>[What it shows]. Image: [SOURCE, linked]</figcaption>
    </figure>
    -->

    <!-- REQUIRED: standalone solution section — short, numbered, plain action verbs.
         A reader should be able to skip straight here and know exactly what to do. -->
    <h2>What To Do [About X]</h2>
    <p>[One line: how many steps, how long it takes]</p>
    <ol>
        <li><strong>[Action verb + specific instruction]</strong></li>
        <li><strong>[Action verb + specific instruction]</strong></li>
        <li><strong>[Action verb + specific instruction]</strong></li>
    </ol>

    <div class="key-takeaways">
        <h2>Key Takeaways</h2>
        <ul>
            <li>[Takeaway 1]</li>
            <li>[Takeaway 2]</li>
            <li>[Takeaway 3]</li>
        </ul>
    </div>

    <!-- Optional FAQ — only with genuine, non-manufactured Q&As -->
    <!--
    <div class="faq">
        <h2>Frequently Asked Questions</h2>
        <div class="faq-item">
            <h3>[Real question a reader would actually ask]</h3>
            <p>[Direct, plain-language answer]</p>
        </div>
    </div>
    -->

    <!-- Leave this block out only if no other post exists to link to -->
    <div class="related-reading">
        <h2>Related Reading</h2>
        <ul>
            <li><a href="[other-post-slug].html">[Other post title]</a></li>
        </ul>
    </div>

    <p class="disclaimer">
        TrendTurtles develops trading technology and does not provide investment advice. See our <a href="../contact.html">full disclaimer</a>.
    </p>

</section>

<footer>
    <p>© 2017 TrendTurtles. All rights reserved.</p>
</footer>

<script>
    const toggle = document.getElementById("menu-toggle");
    const nav = document.getElementById("nav-menu");
    toggle.addEventListener("click", () => {
        nav.classList.toggle("active");
    });
</script>

</body>
</html>
```

## Before publishing

Run the Publish Gate in `CONSTITUTION.md` §3. There is no separate checklist here, so the two can never disagree.
