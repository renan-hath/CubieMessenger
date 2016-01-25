.class public Lcom/aviary/android/feather/async_tasks/AsyncImageManager;
.super Ljava/lang/Object;
.source "AsyncImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Thumb;,
        Lcom/aviary/android/feather/async_tasks/AsyncImageManager$CustomTag;,
        Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyHandler;,
        Lcom/aviary/android/feather/async_tasks/AsyncImageManager$OnImageLoadListener;,
        Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyRunnable;,
        Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;
    }
.end annotation


# instance fields
.field private logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

.field private mBitmapCache:Lcom/aviary/android/feather/utils/SimpleBitmapCache;

.field mExecutor1:Ljava/util/concurrent/ExecutorService;

.field mExecutor2:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$OnImageLoadListener;

.field private volatile mStopped:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mStopped:Ljava/lang/Boolean;

    .line 55
    const-string/jumbo v0, "AsyncImageManager"

    sget-object v1, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory;->getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    .line 60
    new-instance v0, Lcom/aviary/android/feather/library/threading/PriorityThreadFactory;

    const-string/jumbo v1, "async-image-high"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/library/threading/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mExecutor1:Ljava/util/concurrent/ExecutorService;

    .line 61
    const/4 v0, 0x1

    new-instance v1, Lcom/aviary/android/feather/library/threading/PriorityThreadFactory;

    const-string/jumbo v2, "async-image-low"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3}, Lcom/aviary/android/feather/library/threading/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mExecutor2:Ljava/util/concurrent/ExecutorService;

    .line 63
    new-instance v0, Lcom/aviary/android/feather/utils/SimpleBitmapCache;

    invoke-direct {v0}, Lcom/aviary/android/feather/utils/SimpleBitmapCache;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mBitmapCache:Lcom/aviary/android/feather/utils/SimpleBitmapCache;

    .line 64
    new-instance v0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyHandler;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyHandler;-><init>(Lcom/aviary/android/feather/async_tasks/AsyncImageManager;)V

    iput-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mHandler:Landroid/os/Handler;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mListener:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$OnImageLoadListener;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/async_tasks/AsyncImageManager;)Lcom/aviary/android/feather/async_tasks/AsyncImageManager$OnImageLoadListener;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mListener:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$OnImageLoadListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/async_tasks/AsyncImageManager;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mStopped:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/ImageView;)Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyRunnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ImageView;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->getBitmapTask(Landroid/widget/ImageView;)Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyRunnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/aviary/android/feather/async_tasks/AsyncImageManager;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/aviary/android/feather/async_tasks/AsyncImageManager;)Lcom/aviary/android/feather/utils/SimpleBitmapCache;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mBitmapCache:Lcom/aviary/android/feather/utils/SimpleBitmapCache;

    return-object v0
.end method

.method static synthetic access$500(Lcom/aviary/android/feather/async_tasks/AsyncImageManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getBitmapTask(Landroid/widget/ImageView;)Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyRunnable;
    .locals 3
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 235
    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 237
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$CustomTag;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 238
    check-cast v0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$CustomTag;

    .line 239
    .local v0, "runnableTag":Lcom/aviary/android/feather/async_tasks/AsyncImageManager$CustomTag;
    invoke-virtual {v0}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$CustomTag;->getDownloaderTask()Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyRunnable;

    move-result-object v2

    .line 242
    .end local v0    # "runnableTag":Lcom/aviary/android/feather/async_tasks/AsyncImageManager$CustomTag;
    .end local v1    # "tag":Ljava/lang/Object;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mBitmapCache:Lcom/aviary/android/feather/utils/SimpleBitmapCache;

    invoke-virtual {v0}, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->clearCache()V

    .line 252
    return-void
.end method

.method public execute(Ljava/util/concurrent/Callable;Ljava/lang/String;Landroid/widget/ImageView;ILcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;)V
    .locals 6
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/widget/ImageView;
    .param p4, "tag"    # I
    .param p5, "priority"    # Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            "I",
            "Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "executor":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mStopped:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mBitmapCache:Lcom/aviary/android/feather/utils/SimpleBitmapCache;

    invoke-virtual {v1}, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->resetPurgeTimer()V

    .line 155
    new-instance v0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;-><init>(Lcom/aviary/android/feather/async_tasks/AsyncImageManager;Landroid/widget/ImageView;Ljava/lang/String;ILjava/util/concurrent/Callable;)V

    .line 210
    .local v0, "task":Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyRunnable;
    new-instance v1, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$CustomTag;

    invoke-direct {v1, v0}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$CustomTag;-><init>(Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyRunnable;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 212
    sget-object v1, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;->HIGH:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

    if-ne p5, v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mExecutor1:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mExecutor2:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setOnLoadCompleteListener(Lcom/aviary/android/feather/async_tasks/AsyncImageManager$OnImageLoadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/async_tasks/AsyncImageManager$OnImageLoadListener;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mListener:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$OnImageLoadListener;

    .line 70
    return-void
.end method

.method public shutDownNow()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mStopped:Ljava/lang/Boolean;

    .line 115
    iget-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mExecutor1:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 116
    iget-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mExecutor2:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mHandler:Landroid/os/Handler;

    .line 119
    invoke-virtual {p0}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->clearCache()V

    .line 120
    return-void
.end method
