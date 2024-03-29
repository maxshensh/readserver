
/*
 * Copyright (C) Igor Sysoev
 */


#ifndef _NGX_ARRAY_H_INCLUDED_
#define _NGX_ARRAY_H_INCLUDED_


#include <ngx_config.h>
#include <ngx_core.h>


struct ngx_array_s {
    void        *elts; //首指针
    ngx_uint_t   nelts; //用了的个数
    size_t       size;  //单个单位大小
    ngx_uint_t   nalloc;//n 个数
    ngx_pool_t  *pool; //指向pool
};

//构造一个array
ngx_array_t *ngx_array_create(ngx_pool_t *p, ngx_uint_t n, size_t size);

//销毁一个
void ngx_array_destroy(ngx_array_t *a);
//push 一个数据
void *ngx_array_push(ngx_array_t *a);
//push n个数据
void *ngx_array_push_n(ngx_array_t *a, ngx_uint_t n);


//初始化
static ngx_inline ngx_int_t
ngx_array_init(ngx_array_t *array, ngx_pool_t *pool, ngx_uint_t n, size_t size)
{
    /*
     * set "array->nelts" before "array->elts", otherwise MSVC thinks
     * that "array->nelts" may be used without having been initialized
     */
	//一个array

    array->nelts = 0;    //
    array->size = size;  //
    array->nalloc = n;
    array->pool = pool;
    //
    array->elts = ngx_palloc(pool, n * size);
    if (array->elts == NULL) {
        return NGX_ERROR;
    }

    return NGX_OK;
}


#endif /* _NGX_ARRAY_H_INCLUDED_ */
