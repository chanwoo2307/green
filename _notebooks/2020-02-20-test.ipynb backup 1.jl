{
 "cells": [
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "# Fastpages Notebook Blog Post\n",
    "> A tutorial of fastpages for Jupyter notebooks.\n",
    "\n",
    "- toc: true \n",
    "- badges: true\n",
    "- comments: true\n",
    "- categories: [jupyter]\n",
    "- image: images/chart-preview.png"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "# About\n",
    "\n",
    "This notebook is a demonstration of some of capabilities of [fastpages](https://github.com/fastai/fastpages) with notebooks.\n",
    "\n",
    "\n",
    "With `fastpages` you can save your jupyter notebooks into the `_notebooks` folder at the root of your repository, and they will be automatically be converted to Jekyll compliant blog posts!\n"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "## Front Matter\n",
    "\n",
    "The first cell in your Jupyter Notebook or markdown blog post contains front matter. Front matter is metadata that can turn on/off options in your Notebook. It is formatted like this:\n",
    "\n",
    "```\n",
    "# \"My Title\"\n",
    "> \"Awesome summary\"\n",
    "\n",
    "- toc: true\n",
    "- branch: master\n",
    "- badges: true\n",
    "- comments: true\n",
    "- author: Hamel Husain & Jeremy Howard\n",
    "- categories: [fastpages, jupyter]\n",
    "```\n",
    "\n",
    "- Setting `toc: true` will automatically generate a table of contents\n",
    "- Setting `badges: true` will automatically include GitHub and Google Colab links to your notebook.\n",
    "- Setting `comments: true` will enable commenting on your blog post, powered by [utterances](https://github.com/utterance/utterances).\n",
    "\n",
    "The title and description need to be enclosed in double quotes only if they include special characters such as a colon. More details and options for front matter can be viewed on the [front matter section](https://github.com/fastai/fastpages#front-matter-related-options) of the README."
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "## Markdown Shortcuts"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "A `#hide` comment at the top of any code cell will hide **both the input and output** of that cell in your blog post.\n",
    "\n",
    "A `#hide_input` comment at the top of any code cell will **only hide the input** of that cell."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The comment #hide_input was used to hide the code that produced this.\n"
     ]
    }
   ],
   "source": [
    "#hide_input\n",
    "print('The comment #hide_input was used to hide the code that produced this.')"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "put a `#collapse-hide` flag at the top of any cell if you want to **hide** that cell by default, but give the reader the option to show it:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "metadata": {},
   "outputs": [],
   "source": [
    "#collapse-hide\n",
    "import pandas as pd\n",
    "import altair as alt"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "put a `#collapse-show` flag at the top of any cell if you want to **show** that cell by default, but give the reader the option to hide it:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "metadata": {},
   "outputs": [],
   "source": [
    "#collapse-show\n",
    "cars = 'https://vega.github.io/vega-datasets/data/cars.json'\n",
    "movies = 'https://vega.github.io/vega-datasets/data/movies.json'\n",
    "sp500 = 'https://vega.github.io/vega-datasets/data/sp500.csv'\n",
    "stocks = 'https://vega.github.io/vega-datasets/data/stocks.csv'\n",
    "flights = 'https://vega.github.io/vega-datasets/data/flights-5k.json'"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "place a `#collapse-output` flag at the top of any cell if you want to put the output under a collapsable element that is closed by default, but give the reader the option to open it:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The comment #collapse-output was used to collapse the output of this cell by default but you can expand it.\n"
     ]
    }
   ],
   "source": [
    "#collapse-output\n",
    "print('The comment #collapse-output was used to collapse the output of this cell by default but you can expand it.')"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "## Interactive Charts With Altair\n",
    "\n",
    "Charts made with Altair remain interactive.  Example charts taken from [this repo](https://github.com/uwdata/visualization-curriculum), specifically [this notebook](https://github.com/uwdata/visualization-curriculum/blob/master/altair_interaction.ipynb)."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "metadata": {},
   "outputs": [],
   "source": [
    "# hide\n",
    "df = pd.read_json(movies) # load movies data\n",
    "df.columns = [x.replace(' ', '_') for x in df.columns.values]\n",
    "genres = df['Major_Genre'].unique() # get unique field values\n",
    "genres = list(filter(lambda d: d is not None, genres)) # filter out None values\n",
    "genres.sort() # sort alphabetically"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "metadata": {},
   "outputs": [],
   "source": [
    "#hide\n",
    "mpaa = ['G', 'PG', 'PG-13', 'R', 'NC-17', 'Not Rated']"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "### Example 1: DropDown"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "\n",
       "<div id=\"altair-viz-85f6823a5053479994324f0197bbb342\"></div>\n",
       "<script type=\"text/javascript\">\n",
       "  (function(spec, embedOpt){\n",
       "    let outputDiv = document.currentScript.previousElementSibling;\n",
       "    if (outputDiv.id !== \"altair-viz-85f6823a5053479994324f0197bbb342\") {\n",
       "      outputDiv = document.getElementById(\"altair-viz-85f6823a5053479994324f0197bbb342\");\n",
       "    }\n",
       "    const paths = {\n",
       "      \"vega\": \"https://cdn.jsdelivr.net/npm//vega@5?noext\",\n",
       "      \"vega-lib\": \"https://cdn.jsdelivr.net/npm//vega-lib?noext\",\n",
       "      \"vega-lite\": \"https://cdn.jsdelivr.net/npm//vega-lite@4.8.1?noext\",\n",
       "      \"vega-embed\": \"https://cdn.jsdelivr.net/npm//vega-embed@6?noext\",\n",
       "    };\n",
       "\n",
       "    function loadScript(lib) {\n",
       "      return new Promise(function(resolve, reject) {\n",
       "        var s = document.createElement('script');\n",
       "        s.src = paths[lib];\n",
       "        s.async = true;\n",
       "        s.onload = () => resolve(paths[lib]);\n",
       "        s.onerror = () => reject(`Error loading script: ${paths[lib]}`);\n",
       "        document.getElementsByTagName(\"head\")[0].appendChild(s);\n",
       "      });\n",
       "    }\n",
       "\n",
       "    function showError(err) {\n",
       "      outputDiv.innerHTML = `<div class=\"error\" style=\"color:red;\">${err}</div>`;\n",
       "      throw err;\n",
       "    }\n",
       "\n",
       "    function displayChart(vegaEmbed) {\n",
       "      vegaEmbed(outputDiv, spec, embedOpt)\n",
       "        .catch(err => showError(`Javascript Error: ${err.message}<br>This usually means there's a typo in your chart specification. See the javascript console for the full traceback.`));\n",
       "    }\n",
       "\n",
       "    if(typeof define === \"function\" && define.amd) {\n",
       "      requirejs.config({paths});\n",
       "      require([\"vega-embed\"], displayChart, err => showError(`Error loading script: ${err.message}`));\n",
       "    } else if (typeof vegaEmbed === \"function\") {\n",
       "      displayChart(vegaEmbed);\n",
       "    } else {\n",
       "      loadScript(\"vega\")\n",
       "        .then(() => loadScript(\"vega-lite\"))\n",
       "        .then(() => loadScript(\"vega-embed\"))\n",
       "        .catch(showError)\n",
       "        .then(() => displayChart(vegaEmbed));\n",
       "    }\n",
       "</script>"
      ],
      "text/plain": [
       "alt.Chart(...)"
      ]
     },
     "execution_count": 7,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# single-value selection over [Major_Genre, MPAA_Rating] pairs\n",
    "# use specific hard-wired values as the initial selected values\n",
    "selection = alt.selection_single(\n",
    "    name='Select',\n",
    "    fields=['Major_Genre', 'MPAA_Rating'],\n",
    "    init={'Major_Genre': 'Drama', 'MPAA_Rating': 'R'},\n",
    "    bind={'Major_Genre': alt.binding_select(options=genres), 'MPAA_Rating': alt.binding_radio(options=mpaa)}\n",
    ")\n",
    "  \n",
    "# scatter plot, modify opacity based on selection\n",
    "alt.Chart(df).mark_circle().add_selection(\n",
    "    selection\n",
    ").encode(\n",
    "    x='Rotten_Tomatoes_Rating:Q',\n",
    "    y='IMDB_Rating:Q',\n",
    "    tooltip='Title:N',\n",
    "    opacity=alt.condition(selection, alt.value(0.75), alt.value(0.05))\n",
    ")"
   ]
  },
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "### Example 2: Tooltips"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "\n",
       "<div id=\"altair-viz-4143e5264f7f4076ae57d8ae39059768\"></div>\n",
       "<script type=\"text/javascript\">\n",
       "  (function(spec, embedOpt){\n",
       "    let outputDiv = document.currentScript.previousElementSibling;\n",
       "    if (outputDiv.id !== \"altair-viz-4143e5264f7f4076ae57d8ae39059768\") {\n",
       "      outputDiv = document.getElementById(\"altair-viz-4143e5264f7f4076ae57d8ae39059768\");\n",
       "    }\n",
       "    const paths = {\n",
       "      \"vega\": \"https://cdn.jsdelivr.net/npm//vega@5?noext\",\n",
       "      \"vega-lib\": \"https://cdn.jsdelivr.net/npm//vega-lib?noext\",\n",
       "      \"vega-lite\": \"https://cdn.jsdelivr.net/npm//vega-lite@4.8.1?noext\",\n",
       "      \"vega-embed\": \"https://cdn.jsdelivr.net/npm//vega-embed@6?noext\",\n",
       "    };\n",
       "\n",
       "    function loadScript(lib) {\n",
       "      return new Promise(function(resolve, reject) {\n",
       "        var s = document.createElement('script');\n",
       "        s.src = paths[lib];\n",
       "        s.async = true;\n",
       "        s.onload = () => resolve(paths[lib]);\n",
       "        s.onerror = () => reject(`Error loading script: ${paths[lib]}`);\n",
       "        document.getElementsByTagName(\"head\")[0].appendChild(s);\n",
       "      });\n",
       "    }\n",
       "\n",
       "    function showError(err) {\n",
       "      outputDiv.innerHTML = `<div class=\"error\" style=\"color:red;\">${err}</div>`;\n",
       "      throw err;\n",
       "    }\n",
       "\n",
       "    function displayChart(vegaEmbed) {\n",
       "      vegaEmbed(outputDiv, spec, embedOpt)\n",
       "        .catch(err => showError(`Javascript Error: ${err.message}<br>This usually means there's a typo in your chart specification. See the javascript console for the full traceback.`));\n",
       "    }\n",
       "\n",
       "    if(typeof define === \"function\" && define.amd) {\n",
       "      requirejs.config({paths});\n",
       "      require([\"vega-embed\"], displayChart, err => showError(`Error loading script: ${err.message}`));\n",
       "    } else if (typeof vegaEmbed === \"function\") {\n",
       "      displayChart(vegaEmbed);\n",
       "    } else {\n",
       "      loadScript(\"vega\")\n",
       "        .then(() => loadScript(\"vega-lite\"))\n",
       "        .then(() => loadScript(\"vega-embed\"))\n",
       "        .catch(showError)\n",
       "        .then(() => displayChart(vegaEmbed));\n",
       "    }\n",
       "</script>"
      ],
      "text/plain": [
       "alt.Chart(...)"
      ]
     },
     "execution_count": 8,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "alt.Chart(df).mark_circle().add_selection(\n",
    ").encode(\n",
    ").properties(\n",
    ")"
   ]
  {