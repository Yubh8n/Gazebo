Installation guide:
```
git submodule init
git submodule update --recursive
```

```
./PX4-Autopilot/Tools/setup/ubuntu.sh
```

```
./build_PX4
```

```
Depending on your ros version, insert the correct version in the following line
sudo apt-get install ros-noetic-mavros ros-noetic-mavros-extras
```

```
wget https://raw.githubusercontent.com/mavlink/mavros/master/mavros/scripts/install_geographiclib_datasets.sh
sudo bash ./install_geographiclib_datasets.sh
```
