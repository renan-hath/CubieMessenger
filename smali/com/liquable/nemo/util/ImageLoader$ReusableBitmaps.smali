.class Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReusableBitmaps"
.end annotation


# instance fields
.field private final reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final reusableBitmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->reusableBitmaps:Ljava/util/Set;

    .line 135
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/util/ImageLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/util/ImageLoader$1;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/Bitmap;)Z
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 139
    :try_start_0
    iget-object v3, p0, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v4, 0xc8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 140
    .local v1, "locked":Z
    if-nez v1, :cond_0

    .line 141
    # getter for: Lcom/liquable/nemo/util/ImageLoader;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/util/ImageLoader;->access$600()Lcom/liquable/nemo/util/Logger;

    move-result-object v3

    const-string/jumbo v4, "could not add reusable bitmap due to cannot get lock"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v1    # "locked":Z
    :goto_0
    return v2

    .line 145
    .restart local v1    # "locked":Z
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->reusableBitmaps:Ljava/util/Set;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 147
    if-eqz v1, :cond_1

    .line 148
    :try_start_2
    iget-object v4, p0, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    move v2, v3

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 148
    iget-object v4, p0, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 151
    .end local v1    # "locked":Z
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 159
    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x3e8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 160
    .local v1, "locked":Z
    if-nez v1, :cond_1

    .line 161
    # getter for: Lcom/liquable/nemo/util/ImageLoader;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/util/ImageLoader;->access$600()Lcom/liquable/nemo/util/Logger;

    move-result-object v2

    const-string/jumbo v3, "can not clear reusable bitmap due to cannot get lock"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v1    # "locked":Z
    :cond_0
    :goto_0
    return-void

    .line 165
    .restart local v1    # "locked":Z
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->reusableBitmaps:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    if-eqz v1, :cond_0

    .line 168
    :try_start_2
    iget-object v2, p0, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 171
    .end local v1    # "locked":Z
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 167
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "locked":Z
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 168
    :try_start_3
    iget-object v3, p0, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public poll(II)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 178
    :try_start_0
    iget-object v6, p0, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v7, 0xc8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    .line 179
    .local v2, "locked":Z
    if-nez v2, :cond_1

    .line 180
    # getter for: Lcom/liquable/nemo/util/ImageLoader;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/util/ImageLoader;->access$600()Lcom/liquable/nemo/util/Logger;

    move-result-object v6

    const-string/jumbo v7, "can not poll reusable bitmap due to cannot get lock"

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 207
    .end local v2    # "locked":Z
    :cond_0
    :goto_0
    return-object v4

    .line 184
    .restart local v2    # "locked":Z
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->reusableBitmaps:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 186
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 188
    .local v3, "next":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 189
    .local v4, "reusable":Landroid/graphics/Bitmap;
    if-nez v4, :cond_4

    .line 190
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 200
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    .end local v3    # "next":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v4    # "reusable":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_3

    .line 201
    :try_start_2
    iget-object v7, p0, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    throw v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 204
    .end local v2    # "locked":Z
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    move-object v4, v5

    .line 207
    goto :goto_0

    .line 193
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    .restart local v2    # "locked":Z
    .restart local v3    # "next":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v4    # "reusable":Landroid/graphics/Bitmap;
    :cond_4
    :try_start_3
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, p1, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v6, p2, :cond_2

    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    if-eqz v2, :cond_0

    .line 201
    :try_start_4
    iget-object v6, p0, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 200
    .end local v3    # "next":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v4    # "reusable":Landroid/graphics/Bitmap;
    :cond_5
    if-eqz v2, :cond_6

    .line 201
    iget-object v6, p0, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    move-object v4, v5

    goto :goto_0
.end method

.method public size()I
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 216
    :try_start_0
    iget-object v3, p0, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 217
    .local v1, "locked":Z
    if-nez v1, :cond_0

    .line 230
    .end local v1    # "locked":Z
    :goto_0
    return v2

    .line 221
    .restart local v1    # "locked":Z
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->reusableBitmaps:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 223
    if-eqz v1, :cond_1

    .line 224
    :try_start_2
    iget-object v4, p0, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    move v2, v3

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 224
    iget-object v4, p0, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->reentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 227
    .end local v1    # "locked":Z
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
