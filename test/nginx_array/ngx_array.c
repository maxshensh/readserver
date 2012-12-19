
/*
 * Copyright (C) Igor Sysoev
 */


#include <ngx_config.h>
#include <ngx_core.h>
#include <ngx_array.h>
#include <ngx_palloc.h>


//构造
ngx_array_t *
ngx_array_create(ngx_pool_t *p, ngx_uint_t n, size_t size)
{
    ngx_array_t *a;
    //先构造一个ngx_array_t
    a = ngx_palloc(p, sizeof(ngx_array_t));
    if (a == NULL) {
        return NULL;
    }
    //
    a->elts = ngx_palloc(p, n * size);
    if (a->elts == NULL) { //leak？
        return NULL;
    }

    a->nelts = 0;  //已用0个
    a->size = size;//单位大小为size
    a->nalloc = n;// n个可用
    a->pool = p;

    return a;
}


void
ngx_array_destroy(ngx_array_t *a)
{
    ngx_pool_t  *p;

    p = a->pool;
    // 如果正好是最后一个
    if ((u_char *) a->elts + a->size * a->nalloc == p->d.last) {
        p->d.last -= a->size * a->nalloc;
    }
    //如果？？
    if ((u_char *) a + sizeof(ngx_array_t) == p->d.last) {
        p->d.last = (u_char *) a;
    }
}


void *
ngx_array_push(ngx_array_t *a)
{
    void        *elt, *new;
    size_t       size;
    ngx_pool_t  *p;
    //如果a的 全面用完了
    if (a->nelts == a->nalloc) {

        /* the array is full */
    	//记录已用的size
        size = a->size * a->nalloc;

        //拿出pool
        p = a->pool;

        // 如果a->正好是p的最后的位置，而且还有空间
        if ((u_char *) a->elts + size == p->d.last
            && p->d.last + a->size <= p->d.end)
        {
            /*
             * the array allocation is the last in the pool
             * and there is space for new allocation
             */

            p->d.last += a->size;
            a->nalloc++;

        } else {
            /* allocate a new array */

        	// new 一个 2倍大小的空间
            new = ngx_palloc(p, 2 * size);
            if (new == NULL) {
                return NULL;
            }

            ngx_memcpy(new, a->elts, size);
            a->elts = new;
            a->nalloc *= 2;
        }
    }

    // 返回新地址 首地址 + 已用的偏移量
    elt = (u_char *) a->elts + a->size * a->nelts;
    a->nelts++;

    return elt;
}


void *
ngx_array_push_n(ngx_array_t *a, ngx_uint_t n)
{
    void        *elt, *new;
    size_t       size;
    ngx_uint_t   nalloc;
    ngx_pool_t  *p;

    size = n * a->size;

    //如果没有空间了
    if (a->nelts + n > a->nalloc) {

        /* the array is full */

        p = a->pool;

        //如果还能从 pool里面申请到空间
        if ((u_char *) a->elts + a->size * a->nalloc == p->d.last
            && p->d.last + size <= p->d.end)
        {
            /*
             * the array allocation is the last in the pool
             * and there is space for new allocation
             */

            p->d.last += size;
            a->nalloc += n;

        } else {
            /* allocate a new array */

        	//如果n比 nalloc 大 那么，就返回n
            nalloc = 2 * ((n >= a->nalloc) ? n : a->nalloc);

            new = ngx_palloc(p, nalloc * a->size);
            if (new == NULL) {
                return NULL;
            }

            ngx_memcpy(new, a->elts, a->nelts * a->size);
            a->elts = new;
            a->nalloc = nalloc;
        }
    }

    //返回新地址
    elt = (u_char *) a->elts + a->size * a->nelts;
    a->nelts += n;

    return elt;
}
