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
