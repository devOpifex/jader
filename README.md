<!-- badges: start -->
<!-- badges: end -->

# pugger

Use the [pug](https://github.com/pugjs/pug)
templating engine with [ambiorix](https://ambiorix.dev).

## Installation

``` r
# install.packages("remotes")
remotes::install_github("devOpifex/pugger")
```

## Use

Set the custom template with `app$engine()`
:warning: on older versions of ambiorix one had to use the `use`
method.

## Example

Render the following `test.pug` file.

```jade
!!! 5
html(lang="en")
  head
    title= pageTitle
    :javascript
      | if (foo) {
      |    bar()
      | }
  body
    h1 Jade - node template engine
    #container
      - if (iUseJader)
         Vape juice are amazing
      - else
         Get on it!
         Get on it!
         Get on it!
         Get on it!
```

With the following app.

``` r
library(ambiorix)

app <- Ambiorix$new()

# on older versions of ambiorix
# app$use(jader::jader())
app$engine(jader::jader())

app$get("/", \(req, res) {
  res$render(
    "test.jade",
    list(
      iUseJader = TRUE
    )
  )
})

app$start()
```

__Outside of Ambiorix__

Just use `renderer`.

```r
pugger::renderer(
  "test.pug",
  list(de
    iUsePugger = TRUE
  )
)
```
