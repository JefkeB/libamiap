to create the docker container
>docker image build . -t buildroot

view the docker image
>docker image ls


run in the project directory
> make O=$PWD -C path/to/buildroot
