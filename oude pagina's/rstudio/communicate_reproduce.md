---
layout: default
title: Communicate & reproduce
parent: RStudio
nav_order: 6
output: md_document
always_allow_html: true
---

Intoduction
-----------

When generating Data Science product, whether thse are graphs,
statistical outputs, webpages, interactive visualizations as gifs or
even complete movies or slide-show presentations, it is best to use
literate programming. Literate programming enables the combination
between narratives (normal text), code and the output this code
generates. Depending on the audience the product is meant for, literate
programming scripts can be tuned to display or hide code or other
elements in final end product. For R literate programming is implemented
in the form of an R-flavored version of the markup language called R
Markdown. On this page, the use of R Markdown is illustrated with a few
examples.

Markdown is a plain text format that allows for common typesetting
features including:

-   Text formatting (bold, italic, etc.)
-   Links
-   Tables
-   In-line images

Without the need for spending time typesetting which is tedious and
usually unnecessary. So if we want those kinds of things, we might want
to use Markdown.

RMarkdown allows us to produce an output document (PDF, DOCX, website)
based upon a mix of Markdown and R code. This lets us write analyses in
R as we already do but also write our reports/papers/etc. in R. Instead
of the usual loop:

-   Run analysis
-   Edit/update report
-   Commit changes to Git-repository
-   Push to Github

The loop becomes:

-   Edit RMarkdown doc
-   Commit changes to Git-repository
-   Push to Github

This workflow fits in a ‘continuous integration’ workflow

…

Good resources:
---------------

-   <http://rmarkdown.rstudio.com/>
-   <http://kbroman.org/knitr_knutshell/>

Learning Outcomes
-----------------

-   Gain an awareness of Markdown and RMarkdown
-   Author a simple RMarkdown document in RStudio

RMarkdown Principles:
---------------------

### Chunks

Chunks take options, see:
<a href="https://yihui.name/knitr/options/" class="uri">https://yihui.name/knitr/options/</a>

#### Echo and Include

When writing a report, it’s common to not want the R code to actually
show up in the final document. Use the `echo` chunk option to do this:
![](/assets/unnamed-chunk-2-1.png) or if you want the code to run but
not show anything, use `include`

#### Eval

Sometimes you may just want to show some R code with nice syntax
highlighting but not evaluate it:

    will_it_eval <- "eval?"

#### Cache

If you know a chunk will not need to change as other parts of the
document are knitted, you can cache a chunk that contains a potentially
long-running or slow command or commands:

    library(ggplot2)
    ggplot(mpg, aes(displ, hwy, color = class)) + 
      geom_point() # Some really slow plot

![](/assets/unnamed-chunk-5-1.png)

### Inline expressions in prose

You can include inline r-code in this way:

4

It evaluates to: 2 + 2 = 4

### Plots

Base graphics: Just run `plot(1:10)` ggplot2: Run `ggplot(...))`

Customize output sizing with chunk options: `fig.width`, `fig.height`,
`dpi`, `out.width`

### Tables

If you search around, there are tons of ways to do this. The most basic
way and the way I almost always use is with the `kable` function from
the `knitr` package:

    library(ggplot2)
    data("mpg")
    knitr::kable(head(mpg))

<table>
<thead>
<tr class="header">
<th style="text-align: left;">manufacturer</th>
<th style="text-align: left;">model</th>
<th style="text-align: right;">displ</th>
<th style="text-align: right;">year</th>
<th style="text-align: right;">cyl</th>
<th style="text-align: left;">trans</th>
<th style="text-align: left;">drv</th>
<th style="text-align: right;">cty</th>
<th style="text-align: right;">hwy</th>
<th style="text-align: left;">fl</th>
<th style="text-align: left;">class</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">audi</td>
<td style="text-align: left;">a4</td>
<td style="text-align: right;">1.8</td>
<td style="text-align: right;">1999</td>
<td style="text-align: right;">4</td>
<td style="text-align: left;">auto(l5)</td>
<td style="text-align: left;">f</td>
<td style="text-align: right;">18</td>
<td style="text-align: right;">29</td>
<td style="text-align: left;">p</td>
<td style="text-align: left;">compact</td>
</tr>
<tr class="even">
<td style="text-align: left;">audi</td>
<td style="text-align: left;">a4</td>
<td style="text-align: right;">1.8</td>
<td style="text-align: right;">1999</td>
<td style="text-align: right;">4</td>
<td style="text-align: left;">manual(m5)</td>
<td style="text-align: left;">f</td>
<td style="text-align: right;">21</td>
<td style="text-align: right;">29</td>
<td style="text-align: left;">p</td>
<td style="text-align: left;">compact</td>
</tr>
<tr class="odd">
<td style="text-align: left;">audi</td>
<td style="text-align: left;">a4</td>
<td style="text-align: right;">2.0</td>
<td style="text-align: right;">2008</td>
<td style="text-align: right;">4</td>
<td style="text-align: left;">manual(m6)</td>
<td style="text-align: left;">f</td>
<td style="text-align: right;">20</td>
<td style="text-align: right;">31</td>
<td style="text-align: left;">p</td>
<td style="text-align: left;">compact</td>
</tr>
<tr class="even">
<td style="text-align: left;">audi</td>
<td style="text-align: left;">a4</td>
<td style="text-align: right;">2.0</td>
<td style="text-align: right;">2008</td>
<td style="text-align: right;">4</td>
<td style="text-align: left;">auto(av)</td>
<td style="text-align: left;">f</td>
<td style="text-align: right;">21</td>
<td style="text-align: right;">30</td>
<td style="text-align: left;">p</td>
<td style="text-align: left;">compact</td>
</tr>
<tr class="odd">
<td style="text-align: left;">audi</td>
<td style="text-align: left;">a4</td>
<td style="text-align: right;">2.8</td>
<td style="text-align: right;">1999</td>
<td style="text-align: right;">6</td>
<td style="text-align: left;">auto(l5)</td>
<td style="text-align: left;">f</td>
<td style="text-align: right;">16</td>
<td style="text-align: right;">26</td>
<td style="text-align: left;">p</td>
<td style="text-align: left;">compact</td>
</tr>
<tr class="even">
<td style="text-align: left;">audi</td>
<td style="text-align: left;">a4</td>
<td style="text-align: right;">2.8</td>
<td style="text-align: right;">1999</td>
<td style="text-align: right;">6</td>
<td style="text-align: left;">manual(m5)</td>
<td style="text-align: left;">f</td>
<td style="text-align: right;">18</td>
<td style="text-align: right;">26</td>
<td style="text-align: left;">p</td>
<td style="text-align: left;">compact</td>
</tr>
</tbody>
</table>

or an interactive table

    library(ggplot2)
    data("mpg")
    DT::datatable(head(mpg))

<!--html_preserve-->

<script type="application/json" data-for="htmlwidget-745bb8640a5716286bf7">{"x":{"filter":"none","data":[["1","2","3","4","5","6"],["audi","audi","audi","audi","audi","audi"],["a4","a4","a4","a4","a4","a4"],[1.8,1.8,2,2,2.8,2.8],[1999,1999,2008,2008,1999,1999],[4,4,4,4,6,6],["auto(l5)","manual(m5)","manual(m6)","auto(av)","auto(l5)","manual(m5)"],["f","f","f","f","f","f"],[18,21,20,21,16,18],[29,29,31,30,26,26],["p","p","p","p","p","p"],["compact","compact","compact","compact","compact","compact"]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th> <\/th>\n      <th>manufacturer<\/th>\n      <th>model<\/th>\n      <th>displ<\/th>\n      <th>year<\/th>\n      <th>cyl<\/th>\n      <th>trans<\/th>\n      <th>drv<\/th>\n      <th>cty<\/th>\n      <th>hwy<\/th>\n      <th>fl<\/th>\n      <th>class<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"columnDefs":[{"className":"dt-right","targets":[3,4,5,8,9]},{"orderable":false,"targets":0}],"order":[],"autoWidth":false,"orderClasses":false}},"evals":[],"jsHooks":[]}</script>
<!--/html_preserve-->

<a href="https://rmarkdown.rstudio.com/lesson-7.html" class="uri">https://rmarkdown.rstudio.com/lesson-7.html</a>

Output formats
--------------

RMarkdown documents can be converted into many formats, most often:

-   PDF
-   HTML
-   Microsoft Word
-   ioslides
-   beamer

See more info here:
<a href="http://rmarkdown.rstudio.com/lesson-9.html" class="uri">http://rmarkdown.rstudio.com/lesson-9.html</a>

You can specifically choose which output format to render to with the
RStudio “Knit” button in the toolbar, or with:

    rmarkdown::render(...)

We can control which output format(s) knitting will produce and even
customize the options for each format separately. To customize each
output format, change the YAML frontmatter:

e.g. customize HTML and PDF output

    ---
    title: "My document"
    output:
      html_document:
        toc: true
        toc_float: true
      pdf_document:
        fig_caption: false
    ---

Summary
-------

-   Markdown is a simple plain text format suitable for authoring rich
    documents
-   RMarkdown is a slight extention of the Markdown syntax that lets us
    mix code and prose together
-   RMarkdown is a key part of the R reproducible science scene
-   RStudio is a great way to author RMarkdown documents
-   Later on in this workshop, we’ll see how to deal with citations so
    we can write academic manuscripts
