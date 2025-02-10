uv python install 3.13 --preview
uv venv --python 3.13

source .venv/bin/activate

# For nbstata example
# In Stata: python set exec ~/.local/bin/python3, perm
uv pip install nbstata jupyterlab_stata_highlight2

# For Julia example
# Not used: julia --project=@quarto -e 'import Pkg; Pkg.add("QuartoNotebookRunner")'
# Install IJulia
# https://github.com/JuliaLang/IJulia.jl
