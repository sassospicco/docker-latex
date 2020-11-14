# docker-latex

A simple, pre-packaged Docker image to render LaTeX files into PDFs.
Especially useful in automation pipelies.

## Get the image
```docker pull ghcr.io/sassospicco/docker-latex:latest```

## Process your LaTeX file(s)
```docker run -v /path/to/your/latex/project:/latex ghcr.io/sassospicco/docker-latex:latest```

Your source files should all be in ```/path/to/your/latex/project```.

The default entry-point should be called ```main.tex```. If this is not the case, run instead:\
```docker run -v /path/to/your/latex/project:/latex ghcr.io/sassospicco/docker-latex:latest -c "cd /latex && latexmk -pdf filename.tex"```
