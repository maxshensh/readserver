################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../os/unix/ngx_alloc.c \
../os/unix/ngx_channel.c \
../os/unix/ngx_daemon.c \
../os/unix/ngx_errno.c \
../os/unix/ngx_files.c \
../os/unix/ngx_linux_init.c \
../os/unix/ngx_linux_sendfile_chain.c \
../os/unix/ngx_posix_init.c \
../os/unix/ngx_process.c \
../os/unix/ngx_process_cycle.c \
../os/unix/ngx_readv_chain.c \
../os/unix/ngx_recv.c \
../os/unix/ngx_send.c \
../os/unix/ngx_setproctitle.c \
../os/unix/ngx_shmem.c \
../os/unix/ngx_socket.c \
../os/unix/ngx_time.c \
../os/unix/ngx_udp_recv.c \
../os/unix/ngx_user.c \
../os/unix/ngx_writev_chain.c 

OBJS += \
./os/unix/ngx_alloc.o \
./os/unix/ngx_channel.o \
./os/unix/ngx_daemon.o \
./os/unix/ngx_errno.o \
./os/unix/ngx_files.o \
./os/unix/ngx_linux_init.o \
./os/unix/ngx_linux_sendfile_chain.o \
./os/unix/ngx_posix_init.o \
./os/unix/ngx_process.o \
./os/unix/ngx_process_cycle.o \
./os/unix/ngx_readv_chain.o \
./os/unix/ngx_recv.o \
./os/unix/ngx_send.o \
./os/unix/ngx_setproctitle.o \
./os/unix/ngx_shmem.o \
./os/unix/ngx_socket.o \
./os/unix/ngx_time.o \
./os/unix/ngx_udp_recv.o \
./os/unix/ngx_user.o \
./os/unix/ngx_writev_chain.o 

C_DEPS += \
./os/unix/ngx_alloc.d \
./os/unix/ngx_channel.d \
./os/unix/ngx_daemon.d \
./os/unix/ngx_errno.d \
./os/unix/ngx_files.d \
./os/unix/ngx_linux_init.d \
./os/unix/ngx_linux_sendfile_chain.d \
./os/unix/ngx_posix_init.d \
./os/unix/ngx_process.d \
./os/unix/ngx_process_cycle.d \
./os/unix/ngx_readv_chain.d \
./os/unix/ngx_recv.d \
./os/unix/ngx_send.d \
./os/unix/ngx_setproctitle.d \
./os/unix/ngx_shmem.d \
./os/unix/ngx_socket.d \
./os/unix/ngx_time.d \
./os/unix/ngx_udp_recv.d \
./os/unix/ngx_user.d \
./os/unix/ngx_writev_chain.d 


# Each subdirectory must supply rules for building sources it contributes
os/unix/%.o: ../os/unix/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -I"/home/dev/workspace/nginx/core" -I"/home/dev/workspace/nginx/event" -I"/home/dev/workspace/nginx/event/modules" -I"/home/dev/workspace/nginx/http" -I"/home/dev/workspace/nginx/http/modules" -I"/home/dev/workspace/nginx/mail" -I"/home/dev/workspace/nginx/os" -I"/home/dev/workspace/nginx" -I"/home/dev/workspace/nginx/os/unix" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


