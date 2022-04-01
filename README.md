# California Wildfire Air quality
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/nasiegel88/airquality/HEAD)

[Air Quality Jupyter Notebook](https://github.com/nasiegel88/airquality/blob/main/airquality.ipynb)

#### The purpose of this repo is to make working with the PWFSLSmoke R package more easy to interact with for people without extensive background in R.

##### I. Run locally
In order to recreate this notebook book install clone this repo.
```
git clone git@github.com:nasiegel88/airquality.git
```

Next, create the R environment for the interactive python notebook. Mamba is the fastest way to set up this environment and information on how to get mamba installed can be found [here](https://github.com/mamba-org/mamba). Note the installation assumes conda was previously installed. If conda has not been installed, the installation process is listed [here](https://docs.conda.io/projects/conda/en/latest/user-guide/install/linux.html).
```
mamba env create -n airquality -f environment.yml
conda activate airquality
R -e 'IRkernel::installspec()'
```

Launch the notebook!
```
jupyter-notebook
```

##### II. Using Binder
[Binder](https://mybinder.readthedocs.io/en/latest/introduction.html) is a service that allows users to turn GitHub repos into interactive notebooks. This workflow can be used in binder by clicking on the binder link on the top of the page. Once there, all of the software needed will be installed. Note, PWFSLSmoke has a lot of dependencies so it will take a few minutes to install everything. Also, since not all packages are available in conda, additional packages will also have to be installed after launching the python notebook.

Load additional packages.
```
source('00-R/main.R')
```
## Using PWFSLSmoke
The [PWFSLSmoke](https://mazamascience.github.io/PWFSLSmoke/) R package is being developed for PWFSL to help modelers and scientists more easily work with PM2.5 data from monitoring locations across North America.

Once the notebook is launched various parameters can be input such as criteria for what AQI monitors to include in a query. The California Air Resource Board(CARB) has a [website](https://ww2.arb.ca.gov/applications/quality-assurance-air-monitoring-site-search-1) where users can enter either a CARB site number or a AQS number to record PM2.5 emission in a given area or areas.

<img src="https://i.imgur.com/LYLXzS2.png" alt="drawing" width="400"/>


## Troubleshooting:

* Issue installing terra
  * Try installing the following Linux dependencies 
```
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update
sudo apt-get install libgdal-dev libgeos-dev libproj-dev 
```

## To-do
- [ ] Calculate PM 2.5 concentration from air quality index
- [ ] Concentration of PM 2.5 exposure during wildfire
