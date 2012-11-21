################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../http/modules/ngx_http_access_module.c \
../http/modules/ngx_http_auth_basic_module.c \
../http/modules/ngx_http_autoindex_module.c \
../http/modules/ngx_http_browser_module.c \
../http/modules/ngx_http_charset_filter_module.c \
../http/modules/ngx_http_chunked_filter_module.c \
../http/modules/ngx_http_empty_gif_module.c \
../http/modules/ngx_http_fastcgi_module.c \
../http/modules/ngx_http_geo_module.c \
../http/modules/ngx_http_gzip_filter_module.c \
../http/modules/ngx_http_headers_filter_module.c \
../http/modules/ngx_http_index_module.c \
../http/modules/ngx_http_limit_req_module.c \
../http/modules/ngx_http_limit_zone_module.c \
../http/modules/ngx_http_log_module.c \
../http/modules/ngx_http_map_module.c \
../http/modules/ngx_http_memcached_module.c \
../http/modules/ngx_http_not_modified_filter_module.c \
../http/modules/ngx_http_proxy_module.c \
../http/modules/ngx_http_range_filter_module.c \
../http/modules/ngx_http_referer_module.c \
../http/modules/ngx_http_scgi_module.c \
../http/modules/ngx_http_split_clients_module.c \
../http/modules/ngx_http_ssi_filter_module.c \
../http/modules/ngx_http_static_module.c \
../http/modules/ngx_http_upstream_ip_hash_module.c \
../http/modules/ngx_http_userid_filter_module.c \
../http/modules/ngx_http_uwsgi_module.c 

OBJS += \
./http/modules/ngx_http_access_module.o \
./http/modules/ngx_http_auth_basic_module.o \
./http/modules/ngx_http_autoindex_module.o \
./http/modules/ngx_http_browser_module.o \
./http/modules/ngx_http_charset_filter_module.o \
./http/modules/ngx_http_chunked_filter_module.o \
./http/modules/ngx_http_empty_gif_module.o \
./http/modules/ngx_http_fastcgi_module.o \
./http/modules/ngx_http_geo_module.o \
./http/modules/ngx_http_gzip_filter_module.o \
./http/modules/ngx_http_headers_filter_module.o \
./http/modules/ngx_http_index_module.o \
./http/modules/ngx_http_limit_req_module.o \
./http/modules/ngx_http_limit_zone_module.o \
./http/modules/ngx_http_log_module.o \
./http/modules/ngx_http_map_module.o \
./http/modules/ngx_http_memcached_module.o \
./http/modules/ngx_http_not_modified_filter_module.o \
./http/modules/ngx_http_proxy_module.o \
./http/modules/ngx_http_range_filter_module.o \
./http/modules/ngx_http_referer_module.o \
./http/modules/ngx_http_scgi_module.o \
./http/modules/ngx_http_split_clients_module.o \
./http/modules/ngx_http_ssi_filter_module.o \
./http/modules/ngx_http_static_module.o \
./http/modules/ngx_http_upstream_ip_hash_module.o \
./http/modules/ngx_http_userid_filter_module.o \
./http/modules/ngx_http_uwsgi_module.o 

C_DEPS += \
./http/modules/ngx_http_access_module.d \
./http/modules/ngx_http_auth_basic_module.d \
./http/modules/ngx_http_autoindex_module.d \
./http/modules/ngx_http_browser_module.d \
./http/modules/ngx_http_charset_filter_module.d \
./http/modules/ngx_http_chunked_filter_module.d \
./http/modules/ngx_http_empty_gif_module.d \
./http/modules/ngx_http_fastcgi_module.d \
./http/modules/ngx_http_geo_module.d \
./http/modules/ngx_http_gzip_filter_module.d \
./http/modules/ngx_http_headers_filter_module.d \
./http/modules/ngx_http_index_module.d \
./http/modules/ngx_http_limit_req_module.d \
./http/modules/ngx_http_limit_zone_module.d \
./http/modules/ngx_http_log_module.d \
./http/modules/ngx_http_map_module.d \
./http/modules/ngx_http_memcached_module.d \
./http/modules/ngx_http_not_modified_filter_module.d \
./http/modules/ngx_http_proxy_module.d \
./http/modules/ngx_http_range_filter_module.d \
./http/modules/ngx_http_referer_module.d \
./http/modules/ngx_http_scgi_module.d \
./http/modules/ngx_http_split_clients_module.d \
./http/modules/ngx_http_ssi_filter_module.d \
./http/modules/ngx_http_static_module.d \
./http/modules/ngx_http_upstream_ip_hash_module.d \
./http/modules/ngx_http_userid_filter_module.d \
./http/modules/ngx_http_uwsgi_module.d 


# Each subdirectory must supply rules for building sources it contributes
http/modules/%.o: ../http/modules/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -I"/home/dev/workspace/nginx/core" -I"/home/dev/workspace/nginx/event" -I"/home/dev/workspace/nginx/event/modules" -I"/home/dev/workspace/nginx/http" -I"/home/dev/workspace/nginx/http/modules" -I"/home/dev/workspace/nginx/mail" -I"/home/dev/workspace/nginx/os" -I"/home/dev/workspace/nginx" -I"/home/dev/workspace/nginx/os/unix" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


