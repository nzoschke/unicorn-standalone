ROOT ?= $(shell pwd)

all: vendor/nginx

clean:
	rm -rf $(ROOT)/src
	rm -rf $(ROOT)/vendor

vendor/luajit: src
	cd src/LuaJIT-2.0.2 																		\
	&& make PREFIX=$(ROOT)/vendor/luajit 										\
	&& make install PREFIX=$(ROOT)/vendor/luajit

vendor/nginx: vendor/luajit
	cd src/nginx-1.4.1 																			\
    && export 																						\
    	LUAJIT_LIB=$(ROOT)/vendor/luajit/lib 								\
    	LUAJIT_INC=$(ROOT)/vendor/luajit/include/luajit-2.0 \
    && ./configure 																				\
    	--prefix=$(ROOT)/vendor/nginx 											\
    	--add-module=$(ROOT)/src/ngx_devel_kit-0.2.18 			\
    	--add-module=$(ROOT)/src/lua-nginx-module-0.8.3 		\
    	--with-pcre=$(ROOT)/src/pcre-8.33										\
    && make install

src:
	mkdir -p $(ROOT)/src
	curl -Ls http://luajit.org/download/LuaJIT-2.0.2.tar.gz | tar xz -C src
	curl -Ls http://sourceforge.net/projects/pcre/files/pcre/8.33/pcre-8.33.tar.gz/download | tar xz -C src
	curl -Ls http://nginx.org/download/nginx-1.4.1.tar.gz | tar xz -C src
	curl -Ls https://github.com/simpl/ngx_devel_kit/archive/v0.2.18.tar.gz | tar xz -C src
	curl -Ls https://github.com/chaoslawful/lua-nginx-module/archive/v0.8.3.tar.gz | tar xz -C src