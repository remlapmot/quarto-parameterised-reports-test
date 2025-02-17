quarto render discussion-12026-reply.qmd

quarto render nbstata-example.qmd --execute

quarto render julia-example.qmd --execute

quarto render julia-example-2.qmd --execute

# quarto render _stata-code-test.qmd --execute
quarto render embed-doc-test.qmd
cp embed-doc-test.html docs/index.html

quarto render _stata-code-test-2.qmd --execute
quarto render nbstata-include.qmd

quarto render contents-test.qmd
quarto render contents-test-2.qmd

quarto render nbstata-example-2.qmd --execute

HIDE_ANSWERS_STATA=1 quarto render nbstata-example-3.qmd
HIDE_ANSWERS_STATA=0 quarto render nbstata-example-3.qmd -o nbstata-example-3-false.html

# use .env
quarto render julia-example-3.qmd
# HIDE_ANSWERS_JULIA=true quarto render julia-example-3.qmd
# HIDE_ANSWERS_JULIA=false quarto render julia-example-3.qmd -o julia-example-3-false.html

quarto render python-example-2.qmd -P hide_answers:True
quarto render python-example-2.qmd -P hide_answers:False -o python-example-2-false.html

# Use .env file
# quarto render python-example-3.qmd --execute-daemon-restart --execute
quarto render python-example-3.qmd --no-cache
HIDE_ANSWERS_PYTHON=True quarto render python-example-3.qmd --no-cache
HIDE_ANSWERS_PYTHON=False quarto render python-example-3.qmd -o python-example-3-false.html --no-cache

HIDE_ANSWERS_PYTHON=True python3 -c "import os; print(os.getenv('HIDE_ANSWERS_PYTHON'))"
HIDE_ANSWERS_PYTHON=False python3 -c "import os; print(os.getenv('HIDE_ANSWERS_PYTHON'))"

HIDE_ANSWERS_JULIA=true julia -e 'println(ENV["HIDE_ANSWERS_JULIA"])'
HIDE_ANSWERS_JULIA=false julia -e 'println(ENV["HIDE_ANSWERS_JULIA"])'
