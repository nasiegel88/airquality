```
mamba env create -n airquality -f env.yml
conda activate airquality
R -e 'IRkernel::installspec()'
```

```
jupyter-notebook
```


Troubleshooting:

Issue installing terra
```
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update
sudo apt-get install libgdal-dev libgeos-dev libproj-dev 
```