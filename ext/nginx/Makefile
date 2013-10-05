ROOT ?= $(shell pwd)

all: vendor/nginx

clean:
	rm -rf $(ROOT)/src
	rm -rf $(ROOT)/vendor

vendor/nginx: src
	cd src/nginx-1.4.1                                    \
	&& ./configure                                        \
	  --prefix=/tmp                                       \
	  --with-pcre=$(ROOT)/src/pcre-8.33                   \
	&& make install

src:
	mkdir -p $(ROOT)/src
	curl -Ls http://sourceforge.net/projects/pcre/files/pcre/8.33/pcre-8.33.tar.gz/download | tar xz -C src
	curl -Ls http://nginx.org/download/nginx-1.4.1.tar.gz | tar xz -C src
