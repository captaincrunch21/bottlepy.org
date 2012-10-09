.PHONY: docs server bootstrap

docs:
	./build_docs.sh master docs/dev
	./build_docs.sh release-0.11 docs/0.11
	./build_docs.sh release-0.10 docs/0.10
	./build_docs.sh release-0.9 docs/0.9
	cd docs; ln -fs 0.11 stable

bootstrap:
	wget -O /tmp/bootstrap.zip http://twitter.github.com/bootstrap/assets/bootstrap.zip
	unzip -d static/ /tmp/bootstrap.zip

server:
	./server restart
