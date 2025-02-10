https://nrennie.rbind.io/blog/r-tutorial-worksheets-quarto/


I also needed this.

I have been using inline code expressions to write [Quarto's conditional content](https://quarto.org/docs/authoring/conditional.html) syntax around sections of Quarto code you want to include/exclude. E.g.

````qmd
---
format: html
---

```{python}
#| include: false
from IPython.display import Markdown
```

```{python}
hide_some_things = True
```

`{python} Markdown("::: {.content-hidden}") if hide_some_things else None`

```{python}
print("Hidden")
```

`{python} Markdown(":::") if hide_some_things else None`

```{python}
print("Shown")
```
````

I agree it will be great when this is solved in Quarto.
