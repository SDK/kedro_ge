[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/SDK/kedro_ge)

[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/SDK/kedro_ge)

# Data Quality lab              

## Intro

Este lab esta diseñado para servir como metodo de aprendizaje de Kedro + Great expectations

Contiene 2 datasets
* Iris data
* Netflix Tittles


## Iniciar Catalogo de GE 

Inicializemos el ambiente con 

```
great_expectations init
```
![Deberia ser algo asi](./pngs/ge1.png)
In order to get the best out of the template:


Luego debemos confirmar el tipo de dataset, path y nombre que queremos darle.

![Deberia ser algo asi](./pngs/ge2.png)

Confirmemos para hacer el profiling:
```
================================================================================

Would you like to profile new Expectations for a single data asset within your new Datasource? [Y/n]: y

Would you like to:
    1. choose from a list of data assets in this datasource
    2. enter the path of a data file
: 1

Which data would you like to use?
    1. iris (file)
    2. netflix_titles (file)
    Don't see the name of the data asset in the list above? Just type it
: 1

Name the new Expectation Suite [iris.warning]: 

Great Expectations will choose a couple of columns and generate expectations about them
to demonstrate some examples of assertions you can make about your data.

Great Expectations will store these expectations in a new Expectation Suite 'iris.warning' here:

  file:///workspace/kedro_ge/great_expectations/expectations/iris/warning.json

Would you like to proceed? [Y/n]: 

Generating example Expectation Suite...

Done generating example Expectation Suite

================================================================================

Would you like to build Data Docs? [Y/n]: 

The following Data Docs sites will be built:

 - local_site: file:///workspace/kedro_ge/great_expectations/uncommitted/data_docs/local_site/index.html

Would you like to proceed? [Y/n]: 

Building Data Docs...

Done building Data Docs

Would you like to view your new Expectations in Data Docs? This will open a new browser window. [Y/n]: 
```

## Agregar Datasource a GE 

para agregar un nuevo dataset basta que corramos:
```
great_expectations datasource new
```
y volveremos a pasar por el menu para agregar un dataset.














##################
* Don't remove any lines from the `.gitignore` file we provide
* Make sure your results can be reproduced by following a [data engineering convention](https://kedro.readthedocs.io/en/stable/11_faq/01_faq.html#what-is-data-engineering-convention)
* Don't commit data to your repository
* Don't commit any credentials or your local configuration to your repository. Keep all your credentials and local configuration in `conf/local/`

## How to install dependencies

Declare any dependencies in `src/requirements.txt` for `pip` installation and `src/environment.yml` for `conda` installation.

To install them, run:

```
kedro install
```

## How to run Kedro

You can run your Kedro project with:

```
kedro run
```

## How to test your Kedro project

Have a look at the file `src/tests/test_run.py` for instructions on how to write your tests. You can run your tests as follows:

```
kedro test
```

To configure the coverage threshold, look at the `.coveragerc` file.


## Project dependencies

To generate or update the dependency requirements for your project:

```
kedro build-reqs
```

This will copy the contents of `src/requirements.txt` into a new file `src/requirements.in` which will be used as the source for `pip-compile`. You can see the output of the resolution by opening `src/requirements.txt`.

After this, if you'd like to update your project requirements, please update `src/requirements.in` and re-run `kedro build-reqs`.

[Further information about project dependencies](https://kedro.readthedocs.io/en/stable/04_kedro_project_setup/01_dependencies.html#project-specific-dependencies)

## How to work with Kedro and notebooks

> Note: Using `kedro jupyter` or `kedro ipython` to run your notebook provides these variables in scope: `context`, `catalog`, and `startup_error`.

### Jupyter
To use Jupyter notebooks in your Kedro project, you need to install Jupyter:

```
pip install jupyter
```

After installing Jupyter, you can start a local notebook server:

```
kedro jupyter notebook
```

### JupyterLab
To use JupyterLab, you need to install it:

```
pip install jupyterlab
```

You can also start JupyterLab:

```
kedro jupyter lab
```

### IPython
And if you want to run an IPython session:

```
kedro ipython
```

### How to convert notebook cells to nodes in a Kedro project
You can move notebook code over into a Kedro project structure using a mixture of [cell tagging](https://jupyter-notebook.readthedocs.io/en/stable/changelog.html#cell-tags) and Kedro CLI commands.

By adding the `node` tag to a cell and running the command below, the cell's source code will be copied over to a Python file within `src/<package_name>/nodes/`:

```
kedro jupyter convert <filepath_to_my_notebook>
```
> *Note:* The name of the Python file matches the name of the original notebook.

Alternatively, you may want to transform all your notebooks in one go. Run the following command to convert all notebook files found in the project root directory and under any of its sub-folders:

```
kedro jupyter convert --all
```

### How to ignore notebook output cells in `git`
To automatically strip out all output cell contents before committing to `git`, you can run `kedro activate-nbstripout`. This will add a hook in `.git/config` which will run `nbstripout` before anything is committed to `git`.

> *Note:* Your output cells will be retained locally.

## Package your Kedro project

[Further information about building project documentation and packaging your project](https://kedro.readthedocs.io/en/stable/03_tutorial/05_package_a_project.html)