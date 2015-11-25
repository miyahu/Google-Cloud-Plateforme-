# Personnal French Google Compute Engine and Google storage documentation 

## official (and English) documentation

[https://cloud.google.com/compute/docs/](https://cloud.google.com/compute/docs/)

## Converting markdown

Markdown ressources :

    [markdown syntax link](https://daringfireball.net/projects/markdown/syntax)

You can use pandoc for converting md to html like

    pandoc -s instance_groups.md -c assets/css-ss.css --toc -o instance_groups.html

For formation or manager presentation you can use 
    
    pandoc -s *.md -t dzslides --self-contained -o presentation.html

pandocme.sh is a minimalist wrapper for mass conversion like :

    for i in *.md ; do
        if bash pandocme.sh $i ; then
            echo "$i converted with success !"
        else
            echo "Hum ... there a problem with ${i}, check please!"
        fi
    done
