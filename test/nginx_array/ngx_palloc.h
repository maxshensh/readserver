
/*
 * Copyright (C) Igor Sysoev
 */


#ifndef _NGX_PALLOC_H_INCLUDED_
#define _NGX_PALLOC_H_INCLUDED_


#include <ngx_config.h>
#include <ngx_core.h>

#define ngx_chain_t int
#define ngx_log_t   int

/*
 * NGX_MAX_ALLOC_FROM_POOL should be (ngx_pagesize - 1), i.e. 4095 on x86.
 * On Windows NT it decreases a number of locked pages in a kernel.
 */

#define ngx_pagesize getpagesize()(4*1024)
// 最大可以alloc 的大小 4k-1
#define NGX_MAX_ALLOC_FROM_POOL  (ngx_pagesize - 1)

// pool的大小
#define NGX_DEFAULT_POOL_SIZE    (16 * 1024)
//以16字节为大小对齐
#define NGX_POOL_ALIGNMENT       16


#define NGX_MIN_POOL_SIZE                                                     \
    ngx_align((sizeof(ngx_pool_t) + 2 * sizeof(ngx_pool_large_t)),            \
              NGX_POOL_ALIGNMENT)
// 池大小  以 ngx_poll_t + 2 个 ngx large 长度


//清理poll 的函数指针
typedef void (*ngx_pool_cleanup_pt)(void *data);

//清理pool 结构
typedef struct ngx_pool_cleanup_s  ngx_pool_cleanup_t;



struct ngx_pool_cleanup_s {
    ngx_pool_cleanup_pt   handler; //处理函数指针
    void                 *data; //数据
    ngx_pool_cleanup_t   *next;// 链表 指向下一个
};


typedef struct ngx_pool_large_s  ngx_pool_large_t;

struct ngx_pool_large_s {
    ngx_pool_large_t     *next; //指向下一个
    void                 *alloc; //？？
};


typedef struct {   //池数据结构
    u_char               *last; // 最后一个
    u_char               *end;  // 结尾
    ngx_pool_t           *next; //下一个
    ngx_uint_t            failed;// 失败次数
} ngx_pool_data_t;


struct ngx_pool_s {          //pool 头
    ngx_pool_data_t       d; // 池数据
    size_t                max; //最大数
    ngx_pool_t           *current; //当前
    ngx_chain_t          *chain; // 链？？
    ngx_pool_large_t     *large; //large
    ngx_pool_cleanup_t   *cleanup; //清理
    ngx_log_t            *log; //日志
};


typedef struct {
    ngx_fd_t              fd; // 文件
    u_char               *name;//名称
    ngx_log_t            *log;//日志
} ngx_pool_cleanup_file_t;


void *ngx_alloc(size_t size, ngx_log_t *log);
void *ngx_calloc(size_t size, ngx_log_t *log);

ngx_pool_t *ngx_create_pool(size_t size, ngx_log_t *log);
void ngx_destroy_pool(ngx_pool_t *pool);
void ngx_reset_pool(ngx_pool_t *pool);

//void *ngx_palloc(ngx_pool_t *pool, size_t size);

void *ngx_pnalloc(ngx_pool_t *pool, size_t size);
void *ngx_pcalloc(ngx_pool_t *pool, size_t size);
void *ngx_pmemalign(ngx_pool_t *pool, size_t size, size_t alignment);
ngx_int_t ngx_pfree(ngx_pool_t *pool, void *p);


ngx_pool_cleanup_t *ngx_pool_cleanup_add(ngx_pool_t *p, size_t size);
void ngx_pool_run_cleanup_file(ngx_pool_t *p, ngx_fd_t fd);
void ngx_pool_cleanup_file(void *data);
void ngx_pool_delete_file(void *data);


#endif /* _NGX_PALLOC_H_INCLUDED_ */
