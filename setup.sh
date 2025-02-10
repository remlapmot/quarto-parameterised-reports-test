uv venv --python 3.13
uv pip install nbstata jupyterlab_stata_highlight2
julia --project=@quarto -e 'import Pkg; Pkg.add("QuartoNotebookRunner")'
