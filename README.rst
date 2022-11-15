Jak pracovat s Dockerem
pip freeze > requirements.txt
docker build -t test .
docker run test -p
docker exec -it [dockerid] bash
Base Skeleton to start your application using Flask-AppBuilder
--------------------------------------------------------------

- Install it::

	pip install flask-appbuilder
	git clone https://github.com/dpgaspar/Flask-AppBuilder-Skeleton.git

- Run it::

    $ export FLASK_APP=app
    # Create an admin user
    $ flask fab create-admin
    # Run dev server
    $ flask run


That's it!!
haha no
haha yes
