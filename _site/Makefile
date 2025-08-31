
all:
	bundle exec jekyll build
	rm -rf ../www
	cp -r _site ../www
	fs sa /afs/cs.cmu.edu/user/rware wwwsrv:http-ftp l
	fs sa /afs/cs.cmu.edu/user/rware/www wwwsrv:http-ftp rl 
	cd .. && find www | xargs -I {} fs sa /afs/cs.cmu.edu/user/rware/{} wwwsrv:http-ftp rl

