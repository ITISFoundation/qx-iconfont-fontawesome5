# Qooxdoo Integration of the Font Awesome 5 Icons font

> These instructions assume that you are using the new [qooxdoo-compiler](https://github.com/qooxdoo/qooxdoo-compiler)
> for building your application.

## Using the iconfont in your Application

```console
$ qx contrib update
$ qx contrib list
$ qx contrib install ITISFoundation/qx-iconfont-fontawesome5
```

To induce the compiler to copy the font file you can either add a 'dummy' call to:

`iconfont.fontawesome5.Include;`

to your appliaction or you can explicitly include the class in the `compile.json` file.

Your app now knows about all the material icons. To access the icons
use names like:

`@MaterialIcon/sms_failed/40`

The demo app shows a list of all the icons available.

To find the names of the icons, either look at the demo app, or go to https://fontawesome.com/icons


## Running the Demo App

This contrib also comes with a demo application. To make it really simple to test
it comes with 'docker-batteries' included.

The setup is prepared for runnig with docker. You don't
need a local qooxdoo install or anyting to get started. Just install docker
and give this a whirl.

* build the docker image
  ```console
  $ docker-compose build
  ```

* run the demo server
   ```console
   $ docker-compose up
   ```
  Now you can open http://localhost:31754 to see the widgetbrowser. The selectbox in the top right corner lets you select the OSparc theme.

If you want to run a different qx command, you can do this too

```console
$ docker-compose run qx lint
```

Inspect the image interactively

```console
$ docker run --entrypoint /bin/bash -i -t itisfoundation/qx-iconfont-fontawesome5
```
