################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../event/modules/ngx_epoll_module.c 

OBJS += \
./event/modules/ngx_epoll_module.o 

C_DEPS += \
./event/modules/ngx_epoll_module.d 


# Each subdirectory must supply rules for building sources it contributes
event/modules/%.o: ../event/modules/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -I"/home/dev/workspace/nginx/core" -I"/home/dev/workspace/nginx/event" -I"/home/dev/workspace/nginx/event/modules" -I"/home/dev/workspace/nginx/http" -I"/home/dev/workspace/nginx/http/modules" -I"/home/dev/workspace/nginx/mail" -I"/home/dev/workspace/nginx/os" -I"/home/dev/workspace/nginx" -I"/home/dev/workspace/nginx/os/unix" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


