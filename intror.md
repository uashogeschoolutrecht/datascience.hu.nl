    library(tidyverse)

Introduction course
-------------------

For people new to R and RStudio we host an online course
[here](https://bookdown.org/maddocent/exploratory_data_analysis/)

To practice the code you can access all the scripts
[here](https://github.com/uashogeschoolutrecht/exploratory_data_masterclasses_20)

1.  Go the following url:
    <a href="https://github.com/uashogeschoolutrecht/exploratory_data_masterclasses_20" class="uri">https://github.com/uashogeschoolutrecht/exploratory_data_masterclasses_20</a>
2.  Copy the url address to the clipboard
3.  Start a new RStudio Project `File` -&gt; `New Project`
4.  Select `Version Control` -&gt; `Git`
5.  Paste the url in the `Repository URL` field
6.  click `Create Project` and let the clone finish

**YOU NOW HAVE THE FILES TO START THE FIRST LESSONS**

The accompanying Bookdown Webpages to this course can be found at:

<a href="https://bookdown.org/maddocent/exploratory_data_analysis/" class="uri">https://bookdown.org/maddocent/exploratory_data_analysis/</a>

Packages for this chapter
-------------------------

For the materials in this chapter we need to load the tidyverse package
suite. You will get a warning message stating something about masking of
functions. I will explain this in Chapter @ref(lab3wranglingfunctions)
when we discuss writing our own functions in R.

    library(tidyverse)

Example data
------------

    set.seed(1234)
    normals <- rnorm(n = 1000, mean = 5, sd = 1.3)
    normals_2 <- rnorm(1000, mean = 1.5, sd = 0.2)

    df <- tibble(A = normals,
                 B = normals_2)

    df

    ## # A tibble: 1,000 x 2
    ##        A     B
    ##    <dbl> <dbl>
    ##  1  3.43  1.26
    ##  2  5.36  1.56
    ##  3  6.41  1.19
    ##  4  1.95  1.63
    ##  5  5.56  1.64
    ##  6  5.66  1.12
    ##  7  4.25  1.69
    ##  8  4.29  1.46
    ##  9  4.27  1.37
    ## 10  3.84  1.59
    ## # ... with 990 more rows

    ## change number of observations to 10000 and rerun

### Plot histogram

    df %>% ## pipe `%>%` takes a value an puts it in a function
      ggplot(aes(x = A)) +
      geom_histogram(bins = 70, colour = "red", fill = "red") +
      geom_histogram(aes(x = B), fill = "green")

    ## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.

![](C:/Users/mteunis/workspaces/docs-hpc/intror_files/figure-markdown_strict/unnamed-chunk-5-1.png)

    ## change the `bins` argument to see what happens

### **Discuss with your neighbour:**

-   How would you turn the above plot in a function that takes two
    arguments: `bins` and `df`?
-   Try it out using this backbone:

<!-- -->

    plot_histogram <- function(df, bins){

    ## write plot code here, use the example above

    plot <- df %>% ggplot(....)
    ...
    ...
    ...

    return(plot)

    }

General stuff about R
---------------------

### R is case sensitive

**Important note: R is case-sensitive, meaning that it will matter
whether you use capital or lower case, keep this in mind if you get a
cryptic warning or error!**

### Programming (in R) can be frustrating

-   Writing (R) code can be challenging
-   You will get mind-boggling errors.
-   R is extremely picky about capitals and every opening `(`, `[` or
    `{` must be matched by a closing `)`, `]` or `}`.

Mind that in R `.` is the default decimal placeholder!

### The `{tidyverse}` suite of R packages

List of available CRAN packages
<a href="http://cran.r-project.org/web/packages/available_packages_by_date.html" class="uri">http://cran.r-project.org/web/packages/available_packages_by_date.html</a>

For this course we use the `{tidyverse}` a lot
<img src="C:/Users/mteunis/workspaces/docs-hpc/assets/tidyverse_sticker.png" width="400" />

    # install.packages("tidyverse")
    library(tidyverse)

### `{tidyverse}`

See:
<a href="http://tidyverse.tidyverse.org/" class="uri">http://tidyverse.tidyverse.org/</a>
for more info The `{tidyverse}` package includes (among others):

-   Wrangling: `{dplyr}`, `{tidyr}`
-   Reading data: `{readr}`, `{readxl}`
-   Functional prgramming: `{purrr}`
-   Models: `{broom}`
-   Strings and regular expressions: `{stringr}`
-   Factors: `{forcats}`
-   Time (series): `{lubridate}`

For all full list type `tidyverse_packages()` in the console, try it
now!

### ‘Biological’ Packages

For ‘Biological’ application go to
<a href="http://www.bioconductor.org" class="uri">http://www.bioconductor.org</a>

Installing Bioconductor packages is different from CRAN packages
example: `{affy}`

Each Bioconductor package has a landing page:

<a href="https://www.bioconductor.org/packages/release/bioc/html/affy.html" class="uri">https://www.bioconductor.org/packages/release/bioc/html/affy.html</a>

    ## installing `{affy}` package
    BiocManager::install("affy")
    biocLite("affy")

    ## loading affy package and the vignettes pages of this package
    # library(affy)
    # browseVignettes("affy")

### Vignettes

-   Vignettes are long explanations and demos of a package
-   A vignette contains examples and a workflow that shows how the
    package can be used and which (research) questions can be adressed
    with the functions and datasets in the package
-   It usually is a good place to start for examples
-   It also shows the so-called dependencies of a package
-   It explains which other packages you would need and how the data
    should look to be able to work with the package the vignette belongs
    to

### Getting Help examples

    #install.packages("dplyr")
    library(dplyr)
    library(ggplot2)
    ?dplyr
    ?ggplot2
    ?mean
    ?mean  # goes to the page with functions related to '.mean.'
    apropos("mean") # search on more options of or alternatives for a certain function
    formals(dplyr::filter)

### Examples and demos on functions and packages

    example(mean) # to see a worked example
    demo(graphics) # demonstration of R functions

-   If you’re stuck, try the help (`?` or `??` or `help()`) function.
-   You can get help about any R function by running `?function_name`
    and `?package_name`
-   or `??package_name`, skip down to the examples and look for code
    that matches what you’re trying to do.
-   Another great tool is `Google` or `Stack Overflow`: trying googling
    the error message, as it’s likely someone else has had the same
    problem, and has gotten help online.

Using functions
---------------

### Function arguments

When calling a function you can explicitly `name` an argument by using
`=`

    seed <- c(1:4)
    set.seed(seed = seed) 
    q <- rnorm(n = 10000, mean = 20, sd = 2)
    hist(q)

![](C:/Users/mteunis/workspaces/docs-hpc/intror_files/figure-markdown_strict/unnamed-chunk-11-1.png)

If you ommit naming an argument, the function still works, but the code
is harder to read for a human.

    set.seed(seed)
    qq <- rnorm(10000, 20, 2)
    all(q == qq)

    ## [1] TRUE

****Write code for humans AND computers, be explicit!****

### R is a functional programming language

Functional programming is basically programming by the use of functions.
Many of the functions you will use are pre-exisiting and present either
in the base R installation (R-base) or in add-ons called `packages` in
R-lingo.

Every operation in R is a `function call` with which you execute a
function on zero or more arguments. As an example we look at the
build-in function in R-base called `mean()`. When we want to learn more
about this function and how to use it, we can use the `help()` function
or the `?` which is a short-cut for the `help()` function. Let’s call
`help()` on the `mean()` function.

    help(mean)

Running the above code will yield the following information in the
`Help` pane of the **Navigation** window.

    ## _A_r_i_t_h_m_e_t_i_c _M_e_a_n
    ## 
    ## _D_e_s_c_r_i_p_t_i_o_n:
    ## 
    ##      Generic function for the (trimmed) arithmetic mean.
    ## 
    ## _U_s_a_g_e:
    ## 
    ##      mean(x, ...)
    ##      
    ##      ## Default S3 method:
    ##      mean(x, trim = 0, na.rm = FALSE, ...)
    ##      
    ## _A_r_g_u_m_e_n_t_s:
    ## 
    ##        x: An R object.  Currently there are methods for numeric/logical
    ##           vectors and date, date-time and time interval objects.
    ##           Complex vectors are allowed for 'trim = 0', only.
    ## 
    ##     trim: the fraction (0 to 0.5) of observations to be trimmed from
    ##           each end of 'x' before the mean is computed.  Values of trim
    ##           outside that range are taken as the nearest endpoint.
    ## 
    ##    na.rm: a logical value indicating whether 'NA' values should be
    ##           stripped before the computation proceeds.
    ## 
    ##      ...: further arguments passed to or from other methods.
    ## 
    ## _V_a_l_u_e:
    ## 
    ##      If 'trim' is zero (the default), the arithmetic mean of the values
    ##      in 'x' is computed, as a numeric or complex vector of length one.
    ##      If 'x' is not logical (coerced to numeric), numeric (including
    ##      integer) or complex, 'NA_real_' is returned, with a warning.
    ## 
    ##      If 'trim' is non-zero, a symmetrically trimmed mean is computed
    ##      with a fraction of 'trim' observations deleted from each end
    ##      before the mean is computed.
    ## 
    ## _R_e_f_e_r_e_n_c_e_s:
    ## 
    ##      Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988) _The New S
    ##      Language_.  Wadsworth & Brooks/Cole.
    ## 
    ## _S_e_e _A_l_s_o:
    ## 
    ##      'weighted.mean', 'mean.POSIXct', 'colMeans' for row and column
    ##      means.
    ## 
    ## _E_x_a_m_p_l_e_s:
    ## 
    ##      x <- c(0:10, 50)
    ##      xm <- mean(x)
    ##      c(xm, mean(x, trim = 0.10))
    ## 

If we want to know what the arguments are that can be entered into the
function mean we can review the information in the “Arguments”
paragraph. Looking at this part of the help documentation we see that
`mean()` takes 3 named arguments and an argument called `...` which we
explain in more details in Chapter @ref(wranglingfunctions). The named
arguments that can be entered into `mean()` are:

`x` `trim` and `na.rm`

Let’s look at them in detail.

The description for `x` states that `x` is defined as an R object.
Clearly we do not yet know what kind of R object there are bu from the
description of `x` can make out a few examples: `x` can be a numeric, a
logical, a date, a date-time or time interval object. Later in this
chapter these objects are explained in more detail, but it is rather
intuitive that mean at least can take an object consisting of numbers.
Below we create an object x, containing 10 random numbers that are
sampled from a normal distribution (using a function call to `rnorm()`).

    set.seed(123)
    x <- rnorm(n = 10)
    x

    ##  [1] -0.56047565 -0.23017749  1.55870831  0.07050839  0.12928774  1.71506499  0.46091621
    ##  [8] -1.26506123 -0.68685285 -0.44566197

If we want to apply mean to this vector `x` of 10 numbers we can do so
by calling `mean()` on `x`

    mean(x)

    ## [1] 0.07462564

When we look at the second and third argument we can deduce that the
second argument `trim` takes any value between 0 and 0.5 and that this
argument defines a truncation of the vector `x`, before the mean is
calculated. Here, I show what trim = 0.2 does to our average of `x` The
trimmed mean is calculated on an **ordered** (from smallest to largest
value) vector `x`

    mean(x, trim = 0.1)

    ## [1] 0.03703159

Let’s simulate what trim does to really understand what is going on:

    ## an ordered version of x
    x_ordered <- x[order(x)]

    ## trim = 0.1 means 1 observation of 10 from each side so 2 in total. details on what trim exactly does, see below 
    mean(x_ordered[2:9]) 

    ## [1] 0.03703159

Mind that we use `[2:9]` as the syntax to get the 2nd to the 9th element
of `x`. We will use this syntax frequently.

The last argument of `mean()` is `na.rm`. If we look at the descrition
we can learn that this argument has something to do with misisng values
(`NA`) being present in a vector and how the `mean()` function will deal
with them. Below two NA values are added to our vector x at position 3
and 6.

    x[c(3,6)] = NA
    x

    ##  [1] -0.56047565 -0.23017749          NA  0.07050839  0.12928774          NA  0.46091621
    ##  [8] -1.26506123 -0.68685285 -0.44566197

What happens if we apply `mean()` to our new `x` containing two `NA`
values.

    mean(x)

    ## [1] NA

The answer of R is `NA` which seems cryptic but if we think about it:
what is the mean of 8 numbers and two missing values. I don’t know,
because I don’t know how to calculate the mean of missing values. R does
not either and it let’s us know by saying `NA`. It does not know how to
handle the `NA` values. By setting the `na.rm` option to `TRUE`, the
mean function first removes the `NA` values, before computing the
average.

    mean(x, na.rm = TRUE)

    ## [1] -0.3159396

Finaly, looking at the help documentation. At the bottom the examples
are usually displayed. Here you can see a demo on how to use a function.

The examples for the `mean()` function can easily be copied-and-pasted
for your own use. You will normally look at the examples first, before
diving into the rest of the documentation.

    # Examples from the documentation for the mean() function:

    x <- c(0:10, 50)
    xm <- mean(x)
    c(xm, mean(x, trim = 0.10))

    ## [1] 8.75 5.50

Now that we know how to get help for an R function and how to read the
help documentation, it is time to explore R further.

From the above example we learnt that knowing the type and class of a
dota object is important for using a function on that data object.
Therefore, below we will review some of the the most important data
objects and how they are interrelated. It is important to generally know
about the different data typres and classes. It will save, but not
completely prevent you from making common mistakes and errors in R

R objects
---------

R is also an object oriented language. This means that data-structures
are stored in objects. Objects have a `class` and can consist of one (or
in some classes) more data `types`. Below I will review different object
classes and types. The use of class and type can be confusing. Relevant
for scripting is that you understand the basic differences between
different objects.

R objects can be devided in basically two categories:

1.  Atomic vectors
2.  Lists

In Chapter @ref(lab1aintror) we will mainly look at atomic vectors. In
chapter @ref(lab1brecursivevectors) we will examine lists and
dataframes.

The diagram below also shows us `NULL` which technically is not a
vector, but is an atomic value, usually used as ‘zero-length’ vector.

    DiagrammeR::grViz("
    digraph rmarkdown {
      'Atomic' -> 'Vector'
      'List' -> 'Vector' 
      'NULL'
    }
    ", engine = "circo")

<!--html_preserve-->

<script type="application/json" data-for="htmlwidget-8e1fe96c0688a849169a">{"x":{"diagram":"\ndigraph rmarkdown {\n  \"Atomic\" -> \"Vector\"\n  \"List\" -> \"Vector\" \n  \"NULL\"\n}\n","config":{"engine":"circo","options":null}},"evals":[],"jsHooks":[]}</script>
<!--/html_preserve-->
<p class="caption">
Elementary building blocks in R
</p>

`Atomic vectors` and `Lists` can be subdevided and I will explain below
the most important R objects. The graph below shows the main object
categories, classes and their types. Lists in R are sometimes
collectively called `Recursive vectors` because they are build from
(multiple) atomic vectors.

Below we see the two categories `Atomic` and `Recursive` vectors
subdived.

    DiagrammeR::grViz("
    digraph rmarkdown {
      'Atomic vectors' -> 'Numeric \n (including `Inf`, `-Inf` \n and `NaN`)'
      'NULL'
      'Atomic vectors' -> 'Logical \n (including NA)' 
      'Atomic vectors' -> Character
      'Numeric \n (including `Inf`, `-Inf` \n and `NaN`)' -> Integer
      'Numeric \n (including `Inf`, `-Inf` \n and `NaN`)' -> Double
      'Recursive vectors' -> List
      'List' -> Dataframe
      'Dataframe' -> Tibble 
      'Date' -> 'Double'
      'Date-Time' -> 'Double'
      'Factor' -> 'Integer'
    }
    ", engine = "circo")

<!--html_preserve-->

<script type="application/json" data-for="htmlwidget-bb3486349adfa5d821dc">{"x":{"diagram":"\ndigraph rmarkdown {\n  \"Atomic vectors\" -> \"Numeric \n (including `Inf`, `-Inf` \n and `NaN`)\"\n  \"NULL\"\n  \"Atomic vectors\" -> \"Logical \n (including NA)\" \n  \"Atomic vectors\" -> Character\n  \"Numeric \n (including `Inf`, `-Inf` \n and `NaN`)\" -> Integer\n  \"Numeric \n (including `Inf`, `-Inf` \n and `NaN`)\" -> Double\n  \"Recursive vectors\" -> List\n  \"List\" -> Dataframe\n  \"Dataframe\" -> Tibble \n  \"Date\" -> \"Double\"\n  \"Date-Time\" -> \"Double\"\n  \"Factor\" -> \"Integer\"\n}\n","config":{"engine":"circo","options":null}},"evals":[],"jsHooks":[]}</script>
<!--/html_preserve-->
<p class="caption">
All important R objects in one graph
</p>

Stricking is that a `dataframe` in R is special list. Where R-lists can
contain different types of vectors of different lenghts, dataframes can
contain different types of vectors with **the same** length; A dataframe
is alway rectangular. `Tibble` is just a special dataframe with nice
printing options. Matrices and arrays are build on top of atomic
vectors. We will later see how this works. Dates, Date-Time and Factors
are S3 vectors; a special class of R-objects and named ‘S3’ for
historical reasons.

### Data Types

The most simple objects in R are single values. They can be of different
class and type. Single objects are commonly vectors of length 1,
consisting of one class and holding one type of data.

Values can be of class:

1.  Numeric (can be of type “double” or of type “integer”)
2.  Integer (is of type “integer”)
3.  Logical (is of type “logical”)
4.  Date and Date-Time (a special class “POSIXct” “POSIXt” in which
    dates and date-time information can be stored in R). Working with
    dates in R can be a pain!
5.  Special values are: `NaN` (not a number, but of type ‘numeric’),
    `NA` (R’s indication for a missing value, of type ‘logical’), `Inf`
    or `-Inf` (infinite and it’s negative counterpart, of type
    ‘numeric’), `NULL` (an empty vector/value, is an ‘atomic’)

There are a number of functions that can be used to inspect an object to
learn what the class and type is. Below you will see these functions in
action.

Below you will see the different classes of data objects represented by
a single value, and there respective types.

### Numeric vector

    double_x <- 5.4 # using the `<-` assign function to create an numeric object
    class(double_x) # the class = "nummeric"

    ## [1] "numeric"

    typeof(double_x) # the vector type

    ## [1] "double"

    is.numeric(double_x)

    ## [1] TRUE

### Integer vector

    integer_x <- 5L ## integer vector
    class(integer_x)

    ## [1] "integer"

    typeof(integer_x)

    ## [1] "integer"

    is.numeric(integer_x)

    ## [1] TRUE

    is.double(integer_x)

    ## [1] FALSE

### Logical vector

    logical_x <- c(TRUE, FALSE, NA) ## logical vector
    class(logical_x)

    ## [1] "logical"

    typeof(logical_x)

    ## [1] "logical"

    is.logical(logical_x)

    ## [1] TRUE

### Date and Date-Time

    date_x <- as.POSIXct("02-05-1990",  
                             ## date class
                             tz = "Europe/Amsterdam")
    class(date_x)

    ## [1] "POSIXct" "POSIXt"

    typeof(date_x)

    ## [1] "double"

    is.atomic(date_x)

    ## [1] TRUE

    is.recursive(date_x)

    ## [1] FALSE

    date_time_x <- lubridate::dmy_hms("02-05-1990 22:13:00",  
                                      ## date-time class
                                      tz = "Europe/Amsterdam")
    class(date_time_x)

    ## [1] "POSIXct" "POSIXt"

    typeof(date_time_x)

    ## [1] "double"

    is.recursive(date_time_x)

    ## [1] FALSE

### Character vector

    string_x <- "character" ## character vector
    class(string_x)

    ## [1] "character"

    typeof(string_x)

    ## [1] "character"

    is.numeric(string_x)

    ## [1] FALSE

### Special values

    na_x <- NA ## missing value
    class(na_x)

    ## [1] "logical"

    typeof(na_x)

    ## [1] "logical"

    is.vector(na_x)

    ## [1] TRUE

    null <- NULL ## empty value
    class(null)

    ## [1] "NULL"

    is.atomic(null)

    ## [1] TRUE

    infinite <- Inf ## infinite number
    class(infinite)

    ## [1] "numeric"

    minus_infinite <- -Inf ## minus infinite
    not_a_number <- NaN ## not a number

### Factors

Factors are special R objects to store information on groups or vectors
that contain predefined values. Below we look at an example from the
`forcats` package. If a variable is categorical you should use a factor
in R. Build on top of `factors` are `ordered factors` that are
categorical variables with values that have a certain order.

Let’s assume we have a `month_of_the_year` variable in our data.

**CAN YOU SPOT THE TYPO?**

    months_var <- c("Dec", "Apr", "Jam", "Mar")

Using a character vector to record this variable has two problems: There
are twelve possible months. Nothing is preventing you from making a
typing error. Sorting the variable is not useful.

    months_var

    ## [1] "Dec" "Apr" "Jam" "Mar"

    sort(months_var)

    ## [1] "Apr" "Dec" "Jam" "Mar"

You can solve these problems with a factor. To create a factor, start by
creating a list of the valid levels:

    month_levels <- c(
      "Jan", "Feb", "Mar", "Apr", "May", "Jun", 
      "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
    )

Now you can create a factor:

    months_var_valid <- factor(months_var, levels = month_levels)
    months_var_valid

    ## [1] Dec  Apr  <NA> Mar 
    ## Levels: Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec

    sort(months_var_valid)

    ## [1] Mar Apr Dec
    ## Levels: Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec

And any values not in the set will be silently converted to NA: You will
learn more on factors in Chapter @ref(factors)

Manipulating vectors
--------------------

### Coercion

If we combine values, a vector of length &gt;1 is the result. At the
same time there are rules for which type the final product vector will
be when combining different types of vector (or values). This is called
`coercion` when it happens *implicitely* like when you use `c()`. We
call is `casting` when it happens explicitely when you use a
constructor-function like `as.numeric(x)`

see:
<a href="https://cran.r-project.org/web/packages/vctrs/vignettes/s3-vector.html" class="uri">https://cran.r-project.org/web/packages/vctrs/vignettes/s3-vector.html</a>
and the `{vctrs}` package for more details. This is considered and
advanced topic and will not be dealt with in details in this course.

We will see coercion happen as we examine different types of vectors and
combining them below.

Combining values (or vectors) or `c`reating them from scratch can be
achieved by using the `c()` function. Because combining vactors with
`c()` can give suprising results, in Chapter
@ref(lab3wranglingfunctions) we will also learn about using the
`vec_c()` function from the `{vctrs}` package for creating ‘type-stable’
functions.

### Combining data types

What happens if we combine different types of data in one vector?

    vector <- c(1:10, NA, NA, NA,  3, "Python is great!", "R is greater!")
    vector

    ##  [1] "1"                "2"                "3"                "4"               
    ##  [5] "5"                "6"                "7"                "8"               
    ##  [9] "9"                "10"               NA                 NA                
    ## [13] NA                 "3"                "Python is great!" "R is greater!"

    is.character(vector)

    ## [1] TRUE

### Counting missing values (`NA`)

    vector_with_true_NAs <- c(TRUE, NA, FALSE, NA, FALSE)

    ## how many NA
    is.na(vector_with_true_NAs) 

    ## [1] FALSE  TRUE FALSE  TRUE FALSE

    sum(is.na(vector_with_true_NAs))

    ## [1] 2

### Mathematical operations

    ## Error sum on character
    sum(vector) 

    ## Error in sum(vector): invalid 'type' (character) of argument

You can add/subtract/devide or use other arithmetic functions on numeric
vectors

    a <- c(1,3,5,7,9)
    b <- c(2,4,6,8)

    z1 <- a - b

    ## Warning in a - b: longer object length is not a multiple of shorter object length

    z1

    ## [1] -1 -1 -1 -1  7

    z2 <- b - a

    ## Warning in b - a: longer object length is not a multiple of shorter object length

    z2

    ## [1]  1  1  1  1 -7

    z3 <- a / b

    ## Warning in a/b: longer object length is not a multiple of shorter object length

    z3

    ## [1] 0.5000000 0.7500000 0.8333333 0.8750000 4.5000000

**DISCUSS** Mind the
`Warning message: In a - b : longer object length is not a multiple of shorter object length`.
Discuss with your neighbour what this means. Try experimenting with
increasing or decreasing the number of elements in the vectors above.
What does this warning say about how mathmatical operations work in R?

    z4 <- sum(a)
    z4

    ## [1] 25

    z5 <- max(a) - max(b)
    z5

    ## [1] 1

### Make sequences

    repetitions <- rep("Luke", times = 10)
    saber <- rep("Sword", length.out = 20)
    jedi <- c(repetitions, saber) %>% rep(each = 3)

Indices
-------

An index for a vector indicats the position of the vectors element.
Indices are much-used tools in each programming language. In R we use
two different syntaxes for indices

1.  `[]` For indexing vector elements (this chapter)
2.  `[[]]` for indexing list-elements or dataframes (Chapter
    @ref(lab1crecursivevectors))
3.  `[<rows>, <columns>]` for indexing dataframes (Chapter
    @ref(lab1crecursivevectors))

Below, I show how to use the `[]` index on atomic vectors

We create a vector containing 100 random normals

    set.seed(123)
    hundred <- rnorm(100)
    ## I use the head function to get the first few values
    head(hundred)

    ## [1] -0.56047565 -0.23017749  1.55870831  0.07050839  0.12928774  1.71506499

To get the third and then the first ten elements of the `hundred` vector

    hundred[1]

    ## [1] -0.5604756

    hundred[c(1:10)]

    ##  [1] -0.56047565 -0.23017749  1.55870831  0.07050839  0.12928774  1.71506499  0.46091621
    ##  [8] -1.26506123 -0.68685285 -0.44566197

So you see from this example: we can use a vector to index a vector.
Let’s elaborate on that.

To see what we created we can plot a density polynom (a sort of
histogram displaying a line in stead of bars) using the `ggplot2()`
package. We will use this plotting package extensively in this course.
For now just try to follow what the result of the following code is, we
will get into more details on plotting in Chapter @ref(lab2viz). In
order to work with `{ggplot2}` we need to transform the `hundred` vector
into a dataframe. This is what the `enframe()` function does. The `%>%`
(or the so-called pipe) symbol we saw before in Chapter @ref(edacase)
will be explained in detail in Chapter @ref(lab2viz)

    hundred %>%
      enframe() %>%
      ggplot(aes(x = value)) +
      geom_density()

![](C:/Users/mteunis/workspaces/docs-hpc/intror_files/figure-markdown_strict/unnamed-chunk-41-1.png)

Imagine we want to pull out all numbers from the `hundred` vector that
are larger than 0. To do this we can use the index. First we create a
vector that has two types of values a `TRUE` at the position of the
value in `hundred` that is larger than 0 and a `FALSE` at the positon of
the value in `hundred` that is smaller than 0. Can you estimate how many
values in `hundred` that are smaller than 0?

    logical_smaller_than_zero <- hundred > 0
    logical_smaller_than_zero[c(1:10)]

    ##  [1] FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE

You see here that from the first ten values in `hundred` the 3rd, 4th,
5th, 6th and 7th value are larger than 0. The consecutiveness of this
observation is pure coincidence.

Now we can use our logical index to get all values larger than 0 from
the `hundred` vector

    larger_than_zero_values <- hundred[logical_smaller_than_zero]
    ## again we ask for the first ten elements of our new >0 vector
    larger_than_zero_values[c(1:10)]

    ##  [1] 1.55870831 0.07050839 0.12928774 1.71506499 0.46091621 1.22408180 0.35981383 0.40077145
    ##  [9] 0.11068272 1.78691314

We indeed see that these 10 values are all larger than 0. How can we
check that all values in `larger_than_zero_values` are larger than zero?
By creating different plots. Making plots to check if your code did what
you expected is always a good idea. *You can not make too many plots!*

    larger_than_zero_values %>%
      enframe() %>%
      ggplot(aes(x = value)) +
      geom_density()

![](C:/Users/mteunis/workspaces/docs-hpc/intror_files/figure-markdown_strict/unnamed-chunk-44-1.png)

    ## or a scatter
    larger_than_zero_values %>%
      enframe() %>%
      ggplot(aes(x = value, y = name)) +
      geom_point()

![](C:/Users/mteunis/workspaces/docs-hpc/intror_files/figure-markdown_strict/unnamed-chunk-44-2.png)

Indeed, no point is equal or smaller than zero. There is one bordeline
case. Can you spot it? **DISCUSS with your neighbour if you can locate
it**

We can make it visible by a neat filtering trick:

    df <- larger_than_zero_values %>%
      enframe() 
    ## the `name` variable is equal to the position of the >0 vector  
    df %>%  ggplot(aes(x = value, y = name)) +
      geom_point() +
      ## we add an additional geom_point for the data filtered for name == 40
      geom_point(data = df %>% dplyr::filter(name == 40),
                 aes(x = value, y = name),
                 fill = "red", 
                 size = 4, 
                 shape = 21, 
                 alpha = 0.6)

![](C:/Users/mteunis/workspaces/docs-hpc/intror_files/figure-markdown_strict/unnamed-chunk-45-1.png)

We can pull out this value from the &gt;0 vector by it’s position (40th
element) `larger_than_zero_values`

    ## you see a value that is close to zero, but not equal to zero.
    larger_than_zero_values[40]

    ## [1] 0.005764186

So you see, using the index can be valuable if you want to conditionally
subset a vector or pull out specific elements by their position. You can
also use the index to get opposite values (in this case lower than zero)
or to remove elements from a vector. In the exercises below, I will let
you practice with the index on vectors some more. This trick can also be
used on dataframes and lists. I will show you how to do this in Chapter
@ref(lab1crecursivevectors). The diadvantage is that using indexes on
dataframes can yiled R code that become difficult to read. The
`{tidyverse}` provides tools to make these operations easier to perform
and code much easier to read. This will be illustrated in Chapter
@ref(lab3wranglingfunctions)

EXERCISES
---------

### Packages

    library(tidyverse)

### 1. Creating some vectors

    set.seed(123)
    vec_1 <- rnorm(10)
    vec_2 <- as.integer(vec_1)
    vec_3 <- c(rep(TRUE, 3), c(rep(FALSE, 4)), NA)
    vec_4 <- as.numeric(vec_3)
    vec_5 <- c("Marc", "Ronald", "Maarten")

1.  What does `set.seed(123)` do? Check the documentation!
2.  What does the above `as.integer()` function do?
3.  And `as.numeric()`?
4.  Check the contents of `vec_2`, `vec_3` and `vec_4`
5.  Determine the `class()` of `vec_1` to `vec_5`
6.  What happens to the data type if we combine (using `c()` vec\_1 en
    vec\_2)? Why?
7.  What is the resulting datatype is we combine vec\_4 and vec\_5? Why?

### 2. R as a calculator

R can be used as a “regular” calculator, we will practice this a bit,
just to get familiar with the way R works and displays its information

1.  What is the sum of 3, 12 and 250?
2.  What is the difference between 4902 and 3987?
3.  Calculate 2 to the power of 24
4.  What is 240 divided by 14?
5.  What is the average of 12 and 20?
6.  What is the average of 10.8, 13.7 and 15.9?

### 3. Data types

R has a variety of different data types and structures. Knowing how to
work with them is fundamental to learning and using R. The following
exercises give a basic introduction to creating and manipulating them.
Using the `c()` function here that `creates` vectors is essential.

1.  Create a vector (`vec_8`) consisting of the numbers 10.5, 20.4,
    30.5, 28.9 and 5,4.
2.  Create a vector (`vec_9`) consisting of a decreasing sequence of
    integers from 50 to -10.
3.  Create a vector (`vec_10`) consisting of an increasing sequence of
    even integers from -10 to 50. You can use the `seq()` function here.
4.  Add the number 5 to the tail of `vec_10` , and save the result as a
    new vector (`vec_11`.
5.  Create a vector (`vec_12`) of five hundred alternating zeros and
    ones. Use the function `rep()` here.
6.  Create a vector (`vec_13`) of a hundred, uniformly distributed,
    random values between -1 and +1. (Hint: see the function `runif()` )
    Use `set.seed(123)` to set the random number generator.
7.  Create a vector (`vec_14`) of hundred random normal distributed
    numbers with mean = 2 and standard deviation is 0.3. See `?rnorm()`
    for help.
8.  Create a histogram (use function `hist()`) of vectors `vec_13` and
    `vec_14`. Can you notice something striking?  
9.  Calculate the average of all values in `vec_14`. (Hint: see the
    function `mean()`. what did you expect to be the result? Why is the
    answer not *exactly* equal to `2`  
10. Now replace position 5 in vector `vec_14` with NA, use `vec_14[5]`
    in you call. Confirm your operation on this vector.
11. Calculate the mean of `vec_14` again. (Hint: make sure you deal with
    the missing values!). Look at `?mean()` for the solution.

### 4. Vector indices

In this chapter we saw how to use the `[]` on a vector.

1.  Pull out all values that round down to 1.0 in vector `vec_1` **HINT
    use `as.integer()` than create a logical index, then use the logical
    index to get to your answer**
2.  

### 5. The Matrix

1.  Create a matrix (`matrix_1`) of four columns and three rows with
    increasing integers from 1 to 12, left to right and then top to
    bottom. Use the function `matrix()`. See the help first.
2.  Create a matrix (`matrix_2`) of four columns and three rows, the
    first column only containing the value `1`, the second only `2`, the
    third only `3` and the fourth column only `4`.
3.  Calculate the sum of `matrix_1`. (Hint: see the function `sum()`)

### 6. From vectors to tibbles

Create the following items:

1.  A numerical vector named `numbers` consisting of the following
    numbers: 1.8, 4.5, 10.1, 8.3.
2.  A numerical vector named `prime` consisting of the following
    integers: 1, 3, 5, 7 and 11
3.  A character vector named `crazy` consisting of the following values:
    ‘abc1’, ‘foo2’, ‘bar3’, ‘app5’ and ‘yepp7’
4.  A logical vector named `valid`" consisting of: TRUE, FALSE, FALSE,
    TRUE and FALSE
5.  Try to create a list called `mylist` containing the vectors
    `numbers`, `prime`, `crazy` and `valid`.
6.  Try to create a `tibble` named `mydata` with the function `tibble()`
    from the above four vectors. This will fail, why? .
7.  Fix the error you found by creating an extra `NA` value in one of
    the vectors. Create the dataframe. Also try giving the columns
    different names. (Hint: see the function `names()` and the function
    `tibble()`.
8.  What happens if you try to calculate the sum of `mydata`?
9.  When you look at the structure of the tibble using `str()`, you will
    see that the `crazy` column with the “abc1”, “foo2”, etc values has
    a certain data type. Which data type is “name”? Do you think it is
    the right type? Or do you need to change it? To what other type
    could you change it?
