
rule all: 
    input:
        "rulegraph.svg",
        "output/plot.png"

rule rulegraph:
    input: 
        "Snakefile"
    output:
        "rulegraph.svg"
    shell:
        "snakemake --rulegraph | dot -Tsvg > {output}"

rule gen_data: 
    input:
        "src/gen_data.py"
    output: 
        "data/data.csv"
    shell:
        "{input} {output}"

rule plot: 
    input:
        "src/plot_data.R",
        "data/data.csv"
    output:
        "output/plot.png"
    shell:
        "{input} {output}"
