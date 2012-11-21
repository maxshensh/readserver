################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../misc/ngx_google_perftools_module.c 

OBJS += \
./misc/ngx_google_perftools_module.o 

C_DEPS += \
./misc/ngx_google_perftools_module.d 


# Each subdirectory must supply rules for building sources it contributes
misc/%.o: ../misc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I"/home/aaa/workspace/nginx/core" -I"/home/aaa/workspace/nginx/http/modules" -I"/home/aaa/workspace/nginx" -I"/home/aaa/workspace/nginx/event" -I"/home/aaa/workspace/nginx/http" -I"/home/aaa/workspace/nginx/mail" -I"/home/aaa/workspace/nginx/misc" -I"/home/aaa/workspace/nginx/os" -I"/home/aaa/workspace/nginx/os/unix" -I"/home/aaa/workspace/nginx/event/modules" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


