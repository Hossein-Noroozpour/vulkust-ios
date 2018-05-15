#ifndef vulkust_h
#define vulkust_h

void * vulkust_allocate(void);
void vulkust_deallocate(void* ctx);
void vulkust_set_view(void* ctx, void* view);
void vulkust_render(void* ctx);

#endif
