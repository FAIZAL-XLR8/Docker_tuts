# Dockerfile

FROM node
# → Base image.
# → Provides a Linux userspace/root filesystem containing Node.js, npm,
#   and the libraries/files needed by Node.js.

WORKDIR basic_node_js/backend/
# → Creates this directory inside the image's filesystem (if it doesn't exist)
#   and makes it the current working directory for subsequent instructions.

COPY . .
# → Copies the contents of the Docker build context into the current
#   WORKDIR inside the image.
# → With `docker build .`, the first `.` refers to the build context
#   (usually your current host directory), and the second `.` refers
#   to the current WORKDIR inside the image.

RUN npm ci
# → Executes `npm ci` while BUILDING the image.
# → Installs the dependencies from package-lock.json into node_modules.

CMD ["node", "server.js"]
# → Specifies the default command that will be executed when a
#   CONTAINER is started from this image.