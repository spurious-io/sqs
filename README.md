# Spurious SQS

 * Source: https://github.com/stevenjack/docker-fake-sqs
 * Website: https://github.com/stevenjack/docker-fake-sqs

This creates a [Docker](http://docker.io) container for running the [fake-sqs](https://github.com/iain/fake_sqs) gem.


## Installation

Clone this repo and run: `docker build -t <yourname>/spurious-sqs .`, this should build
the required container for running a fake sqs endpoint within Docker.


## Usage

The easiest way to use this container is to use the public image from the docker index:

`docker run -d -p 4568:4568 smaj/spurious-sqs`

This is will damonize the container than expose the endpoint to your local machine (Or VM if you're running on OSX).

### Database location

By default the database file is stored in `/var/data/fake_sqs`, if you'd like to get hold of this just mount it when you run the container:


`docker run -d -p 4568:4568 -v /host/dir:/var/data/fake_sqs smaj/spurious-sqs`



If you've built the image locally then you can run the resulting image fairly easily with: `docker run -t -i <yourname>/spurious-sqs`


## Contributing

If you want to add functionality to this project, pull requests are welcome.

 * Create a branch based off master and do all of your changes with in it.
 * If it you have to pause to add a 'and' anywhere in the title, it should be two pull requests.
 * Make commits of logical units and describe them properly
 * Check for unnecessary whitespace with git diff --check before committing.
 * If possible, submit tests to your patch / new feature so it can be tested easily.
 * Assure nothing is broken by running all the test
 * Please ensure that it complies with coding standards.

**Please raise any issues with this project as a GitHub issue.**


## Credits

 * [@stevenjack85](https://twitter.com/stevenjack85)

It is free software and may be redistributed under the terms specified in the
[LICENCE](https://github.com/stevenjack/spurious/tree/master/LICENCE) file.
