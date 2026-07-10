
all:
	bundle exec jekyll build
	/bin/cp -rf _site/* ../public_html/
	find ../public_html -type d -exec chmod 755 {} \;
	find ../public_html -type f -exec chmod 644 {} \;
	#rm -rf ../public_html
	#cp -r _site ../public_html
	#fs sa /afs/cs.cmu.edu/user/rware wwwsrv:http-ftp l
	#fs sa /afs/cs.cmu.edu/user/rware/www wwwsrv:http-ftp rl
	#cd .. && find www | xargs -I {} fs sa /afs/cs.cmu.edu/user/rware/{} wwwsrv:http-ftp rl

