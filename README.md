docker-weechat-web
==================

Web interface for the [WeeChat](https://weechat.org) IRC client.

![WeeChat Web interface](screenshot.png?raw=true "WeeChat Web interface")

The Web interface is based on [chjj/term.js](https://github.com/chjj/term.js), a terminal written in javascript.

Build and Run
-------------

1. Make sure [Docker](https://www.docker.com) is installed.

2. The image is based on [docker-weechat-otr](https://github.com/fstab/docker-weechat-otr), so build that image first:

   ```bash
   git clone https://github.com/fstab/docker-weechat-otr.git
   cd docker-weechat-otr
   docker build -t="fstab/weechat-otr:v1" .
   cd ..
   ```

3. Build _docker-weechat-web_

   ```bash
   git clone https://github.com/fstab/docker-weechat-web.git
   cd docker-weechat-web
   docker build -t="fstab/weechat-web:v1" .
   ```

4. Run a docker container with the image

   ```bash
   docker run -t -i fstab/weechat-web:v1
   ```

The container exposes the console on port 8080.

For more info on how to configure WeeChat, see [docker-weechat-otr](https://github.com/fstab/docker-weechat-otr).
