# Why This?

I was attempting to run MATLAB on Arch Linux but encountered missing library issues. While I found [this repository](https://github.com/chriswifn/Install-Matlab-on-Arch-Linux), it appears outdated. Observing that MATLAB runs smoothly on Ubuntu 24.04 within a virtual machine, I decided to create a Docker container based on Ubuntu 24.04, incorporating X server passthrough and MATLAB installation. This setup allows me to operate MATLAB seamlessly on my Arch Linux system.

# How to Install

1. Execute `build.sh` to construct the Docker image. This process installs all necessary GUI libraries required for MATLAB to function.

2. After building the image, run it using the `run.sh` script. Ensure MATLAB is installed. This script sets all environment variables needed for X server passthrough.

   During MATLAB installation:

   - Run `xhost +` to allow GUI applications to be forwarded from the container to the host.
   - Set the installation path to `/ciao/matlab_install` (or any preferred directory).
   - Specify the binary path as `/ciao/matlab_bin`.

# How to Run

Once installation is complete, you can run MATLAB by executing the `matlab` binary located in your chosen directory. Login credentials are stored in `/root/.matlab`, which is mapped to a local folder in this directory, eliminating the need to log in each time.

# Future Improvements

I aim to refine the Dockerfile to include only the essential GUI libraries. Although I attempted the following command:

```bash
RUN apt-get update && apt-get install -y libgtk2.0-0 libnss3-dev libatk-bridge2.0-dev libdrm-dev libgbm-dev libasound-dev libgl-dev
```

these libraries are insufficient for running the installed version of MATLAB. For a comprehensive list of required dependencies, refer to the [MathWorks Linux System Requirements](https://www.mathworks.com/support/requirements/matlab-linux.html).
