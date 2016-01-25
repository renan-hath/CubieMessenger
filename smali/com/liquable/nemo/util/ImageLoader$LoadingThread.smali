.class Lcom/liquable/nemo/util/ImageLoader$LoadingThread;
.super Landroid/os/HandlerThread;
.source "ImageLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingThread"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private loaderThreadHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/liquable/nemo/util/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/util/ImageLoader;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;->this$0:Lcom/liquable/nemo/util/ImageLoader;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LoadingThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 55
    iput-object p2, p0, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;->context:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private loadImages()V
    .locals 8

    .prologue
    .line 66
    iget-object v5, p0, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;->this$0:Lcom/liquable/nemo/util/ImageLoader;

    # getter for: Lcom/liquable/nemo/util/ImageLoader;->loadingTasks:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v5}, Lcom/liquable/nemo/util/ImageLoader;->access$100(Lcom/liquable/nemo/util/ImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 67
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;>;"
    iget-object v5, p0, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;->this$0:Lcom/liquable/nemo/util/ImageLoader;

    # getter for: Lcom/liquable/nemo/util/ImageLoader;->paused:Z
    invoke-static {v5}, Lcom/liquable/nemo/util/ImageLoader;->access$200(Lcom/liquable/nemo/util/ImageLoader;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 94
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;>;"
    :cond_1
    return-void

    .line 71
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/util/LoadableImage;

    .line 72
    .local v3, "loadableImage":Lcom/liquable/nemo/util/LoadableImage;
    iget-object v5, p0, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;->this$0:Lcom/liquable/nemo/util/ImageLoader;

    # getter for: Lcom/liquable/nemo/util/ImageLoader;->bitmapDrawableCaches:Lcom/liquable/nemo/util/LruCache;
    invoke-static {v5}, Lcom/liquable/nemo/util/ImageLoader;->access$300(Lcom/liquable/nemo/util/ImageLoader;)Lcom/liquable/nemo/util/LruCache;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/liquable/nemo/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 73
    .local v4, "memCached":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v4, :cond_0

    .line 77
    invoke-interface {v3}, Lcom/liquable/nemo/util/LoadableImage;->getDiskCacheStrategy()Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;

    move-result-object v5

    sget-object v7, Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;->NONE:Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;

    if-eq v5, v7, :cond_3

    .line 78
    iget-object v5, p0, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;->this$0:Lcom/liquable/nemo/util/ImageLoader;

    # getter for: Lcom/liquable/nemo/util/ImageLoader;->diskBitmapCache:Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;
    invoke-static {v5}, Lcom/liquable/nemo/util/ImageLoader;->access$400(Lcom/liquable/nemo/util/ImageLoader;)Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;

    move-result-object v5

    invoke-interface {v3}, Lcom/liquable/nemo/util/LoadableImage;->getDiskCacheStrategy()Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->getBitmapFromDiskCache(Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 79
    .local v1, "diskCachedBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 80
    iget-object v7, p0, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;->this$0:Lcom/liquable/nemo/util/ImageLoader;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    # invokes: Lcom/liquable/nemo/util/ImageLoader;->addIntoMemoryCache(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;Landroid/graphics/Bitmap;)V
    invoke-static {v7, v5, v3, v1}, Lcom/liquable/nemo/util/ImageLoader;->access$500(Lcom/liquable/nemo/util/ImageLoader;Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 85
    .end local v1    # "diskCachedBitmap":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v5, p0, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;->context:Landroid/content/Context;

    invoke-interface {v3, v5}, Lcom/liquable/nemo/util/LoadableImage;->load(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    .local v0, "bitmapOrNull":Landroid/graphics/Bitmap;
    invoke-interface {v3}, Lcom/liquable/nemo/util/LoadableImage;->isLoading()Z

    move-result v5

    if-nez v5, :cond_0

    .line 87
    iget-object v7, p0, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;->this$0:Lcom/liquable/nemo/util/ImageLoader;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    # invokes: Lcom/liquable/nemo/util/ImageLoader;->addIntoMemoryCache(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;Landroid/graphics/Bitmap;)V
    invoke-static {v7, v5, v3, v0}, Lcom/liquable/nemo/util/ImageLoader;->access$500(Lcom/liquable/nemo/util/ImageLoader;Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;Landroid/graphics/Bitmap;)V

    .line 89
    invoke-interface {v3}, Lcom/liquable/nemo/util/LoadableImage;->getDiskCacheStrategy()Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;

    move-result-object v5

    sget-object v7, Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;->NONE:Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;

    if-eq v5, v7, :cond_0

    if-eqz v0, :cond_0

    .line 90
    iget-object v5, p0, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;->this$0:Lcom/liquable/nemo/util/ImageLoader;

    # getter for: Lcom/liquable/nemo/util/ImageLoader;->diskBitmapCache:Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;
    invoke-static {v5}, Lcom/liquable/nemo/util/ImageLoader;->access$400(Lcom/liquable/nemo/util/ImageLoader;)Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;

    move-result-object v5

    invoke-interface {v3}, Lcom/liquable/nemo/util/LoadableImage;->getDiskCacheStrategy()Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;

    move-result-object v7

    invoke-virtual {v5, v7, v0}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->addBitmapToCache(Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;->loadImages()V

    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;->this$0:Lcom/liquable/nemo/util/ImageLoader;

    # getter for: Lcom/liquable/nemo/util/ImageLoader;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/liquable/nemo/util/ImageLoader;->access$000(Lcom/liquable/nemo/util/ImageLoader;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public requestLoading()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;->loaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;->loaderThreadHandler:Landroid/os/Handler;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;->loaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 101
    return-void
.end method
