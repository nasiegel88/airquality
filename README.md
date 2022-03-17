# California Wildfire Air quality

In order to recreate this notebook book install clone this repo.
```
git clone git@github.com:nasiegel88/airquality.git
```

Next, create the R environment for the interactive python notebook. Mamba is the fastest way to set up this environment and information on how to get mamba installed can be found [here](https://github.com/mamba-org/mamba). Note the installation assumes conda was previously installed. If conda has not been installed, the installation process is listed [here](https://docs.conda.io/projects/conda/en/latest/user-guide/install/linux.html).
```
mamba env create -n airquality -f env.yml
conda activate airquality
R -e 'IRkernel::installspec()'
```

Launch the notebook!
```
jupyter-notebook
```


## Troubleshooting:

* Issue installing terra
  * Try installing the follow linux dependencies 
```
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update
sudo apt-get install libgdal-dev libgeos-dev libproj-dev 
```
