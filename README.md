# Example code for Quarto tutorial worksheets for several engines: knitr, jupyter: python3, jupyter: nbstata, and engine: julia

Demo repo for my blog post on tutorial Quarto documents

<https://remlapmot.github.io/post/2025/quarto-conditional-content/>

TODO: ~Check that from Quarto version 1.7.23 it should be possible to suppress the `tags: [parameters]` cell.~ This is the case for the `jupyter: python3` engine (need to specify `#| include: false` as usual).

To recreate the Python virtual environment and render the output run

```sh
uv sync
source .venv/bin/activate
python -m nbstata.install
./render.sh
deactivate
```
