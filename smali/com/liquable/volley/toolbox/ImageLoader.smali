.class public Lcom/liquable/volley/toolbox/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;,
        Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;,
        Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;,
        Lcom/liquable/volley/toolbox/ImageLoader$ImageCache;
    }
.end annotation


# instance fields
.field private mBatchResponseDelayMs:I

.field private final mBatchedResponses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache:Lcom/liquable/volley/toolbox/ImageLoader$ImageCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mInFlightRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/liquable/volley/toolbox/ImageLoader$ImageCache;)V
    .locals 2
    .param p1, "queue"    # Lcom/android/volley/RequestQueue;
    .param p2, "imageCache"    # Lcom/liquable/volley/toolbox/ImageLoader$ImageCache;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/16 v0, 0x64

    iput v0, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mHandler:Landroid/os/Handler;

    .line 89
    iput-object p1, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 90
    iput-object p2, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mCache:Lcom/liquable/volley/toolbox/ImageLoader$ImageCache;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/volley/toolbox/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/volley/toolbox/ImageLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/liquable/volley/toolbox/ImageLoader;->onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/volley/toolbox/ImageLoader;Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/volley/toolbox/ImageLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/liquable/volley/toolbox/ImageLoader;->onGetImageError(Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/toolbox/ImageLoader;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/toolbox/ImageLoader;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$802(Lcom/liquable/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/volley/toolbox/ImageLoader;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private batchResponse(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;)V
    .locals 4
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 500
    new-instance v0, Lcom/liquable/volley/toolbox/ImageLoader$4;

    invoke-direct {v0, p0}, Lcom/liquable/volley/toolbox/ImageLoader$4;-><init>(Lcom/liquable/volley/toolbox/ImageLoader;)V

    iput-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    .line 525
    iget-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 527
    :cond_0
    return-void
.end method

.method private createImageRequest(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;Z)Lcom/android/volley/Request;
    .locals 7
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "decodeConfig"    # Landroid/graphics/Bitmap$Config;
    .param p6, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .param p7, "cropMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Z)",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 267
    .local p2, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Landroid/graphics/Bitmap;>;"
    if-eqz p7, :cond_0

    .line 268
    new-instance v0, Lcom/liquable/volley/toolbox/CropImageRequest;

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/liquable/volley/toolbox/CropImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    .line 275
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/volley/toolbox/ImageRequest;

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0
.end method

.method private static getCacheKey(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "cropMode"    # Z

    .prologue
    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "#W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 548
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#H"

    .line 549
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 550
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#C"

    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 552
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 553
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImageListener(Landroid/widget/ImageView;II)Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "defaultImageResId"    # I
    .param p2, "errorImageResId"    # I

    .prologue
    .line 108
    new-instance v0, Lcom/liquable/volley/toolbox/ImageLoader$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/liquable/volley/toolbox/ImageLoader$1;-><init>(ILandroid/widget/ImageView;I)V

    return-object v0
.end method

.method private onGetImageError(Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 328
    iget-object v1, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 331
    .local v0, "request":Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;
    invoke-virtual {v0, p2}, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->setError(Lcom/android/volley/VolleyError;)V

    .line 333
    if-eqz v0, :cond_0

    .line 335
    invoke-direct {p0, p1, v0}, Lcom/liquable/volley/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;)V

    .line 337
    :cond_0
    return-void
.end method

.method private onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/graphics/Bitmap;

    .prologue
    .line 305
    iget-object v1, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mCache:Lcom/liquable/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v1, p1, p2}, Lcom/liquable/volley/toolbox/ImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 308
    iget-object v1, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 310
    .local v0, "request":Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;
    if-eqz v0, :cond_0

    .line 312
    # setter for: Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p2}, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->access$202(Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 315
    invoke-direct {p0, p1, v0}, Lcom/liquable/volley/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;)V

    .line 317
    :cond_0
    return-void
.end method

.method private throwIfNotOnMainThread()V
    .locals 2

    .prologue
    .line 530
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 531
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;)Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;
    .locals 6
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;

    .prologue
    const/4 v3, 0x0

    .line 187
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;IIZ)Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;IIZ)Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;
    .locals 22
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "imageListener"    # Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "cropMode"    # Z

    .prologue
    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/liquable/volley/toolbox/ImageLoader;->throwIfNotOnMainThread()V

    .line 215
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/liquable/volley/toolbox/ImageLoader;->getCacheKey(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v11

    .line 218
    .local v11, "cacheKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/volley/toolbox/ImageLoader;->mCache:Lcom/liquable/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v5, v11}, Lcom/liquable/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 219
    .local v6, "cachedBitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 221
    new-instance v4, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/liquable/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;)V

    .line 222
    .local v4, "container":Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;Z)V

    move-object v7, v4

    .line 257
    .end local v4    # "container":Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;
    :goto_0
    return-object v7

    .line 227
    :cond_0
    new-instance v7, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v9, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p2

    invoke-direct/range {v7 .. v12}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/liquable/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;)V

    .line 230
    .local v7, "imageContainer":Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v5}, Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 233
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 234
    .local v21, "request":Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;
    if-eqz v21, :cond_1

    .line 236
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->addContainer(Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;)V

    goto :goto_0

    .line 243
    :cond_1
    new-instance v14, Lcom/liquable/volley/toolbox/ImageLoader$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11}, Lcom/liquable/volley/toolbox/ImageLoader$2;-><init>(Lcom/liquable/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v18, Lcom/liquable/volley/toolbox/ImageLoader$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/liquable/volley/toolbox/ImageLoader$3;-><init>(Lcom/liquable/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v19, p5

    invoke-direct/range {v12 .. v19}, Lcom/liquable/volley/toolbox/ImageLoader;->createImageRequest(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;Z)Lcom/android/volley/Request;

    move-result-object v20

    .line 255
    .local v20, "newRequest":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/volley/toolbox/ImageLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 256
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/liquable/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    new-instance v8, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v1, v7}, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;-><init>(Lcom/liquable/volley/toolbox/ImageLoader;Lcom/android/volley/Request;Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v5, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public isCached(Ljava/lang/String;IIZ)Z
    .locals 2
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "cropMode"    # Z

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/liquable/volley/toolbox/ImageLoader;->throwIfNotOnMainThread()V

    .line 170
    invoke-static {p1, p2, p3, p4}, Lcom/liquable/volley/toolbox/ImageLoader;->getCacheKey(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mCache:Lcom/liquable/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v1, v0}, Lcom/liquable/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBatchedResponseDelay(I)V
    .locals 0
    .param p1, "newBatchedResponseDelayMs"    # I

    .prologue
    .line 292
    iput p1, p0, Lcom/liquable/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    .line 293
    return-void
.end method
