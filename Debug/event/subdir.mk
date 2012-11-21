################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../event/ngx_event.c \
../event/ngx_event_accept.c \
../event/ngx_event_busy_lock.c \
../event/ngx_event_connect.c \
../event/ngx_event_mutex.c \
../event/ngx_event_pipe.c \
../event/ngx_event_posted.c \
../event/ngx_event_timer.c 

OBJS += \
./event/ngx_event.o \
./event/ngx_event_accept.o \
./event/ngx_event_busy_lock.o \
./event/ngx_event_connect.o \
./event/ngx_event_mutex.o \
./event/ngx_event_pipe.o \
./event/ngx_event_posted.o \
./event/ngx_event_timer.o 

C_DEPS += \
./event/ngx_event.d \
./event/ngx_event_accept.d \
./event/ngx_event_busy_lock.d \
./event/ngx_event_connect.d \
./event/ngx_event_mutex.d \
./event/ngx_event_pipe.d \
./event/ngx_event_posted.d \
./event/ngx_event_timer.d 


# Each subdirectory must supply rules for building sources it contributes
event/%.o: ../event/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -I"/home/dev/workspace/nginx/core" -I"/home/dev/workspace/nginx/event" -I"/home/dev/workspace/nginx/event/modules" -I"/home/dev/workspace/nginx/http" -I"/home/dev/workspace/nginx/http/modules" -I"/home/dev/workspace/nginx/mail" -I"/home/dev/workspace/nginx/os" -I"/home/dev/workspace/nginx" -I"/home/dev/workspace/nginx/os/unix" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


