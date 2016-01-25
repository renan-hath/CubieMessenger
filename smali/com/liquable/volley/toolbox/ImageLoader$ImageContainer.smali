.class public Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageContainer"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCacheKey:Ljava/lang/String;

.field private final mListener:Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;

.field private final mRequestUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/liquable/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/liquable/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/volley/toolbox/ImageLoader;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "requestUrl"    # Ljava/lang/String;
    .param p4, "cacheKey"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/liquable/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p2, p0, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    .line 369
    iput-object p3, p0, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    .line 370
    iput-object p4, p0, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    .line 371
    iput-object p5, p0, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;

    .line 372
    return-void
.end method

.method static synthetic access$600(Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;)Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public cancelRequest()V
    .locals 4

    .prologue
    .line 378
    iget-object v2, p0, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;

    if-nez v2, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v2, p0, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/liquable/volley/toolbox/ImageLoader;

    # getter for: Lcom/liquable/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/liquable/volley/toolbox/ImageLoader;->access$300(Lcom/liquable/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 383
    .local v1, "request":Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;
    if-eqz v1, :cond_2

    .line 384
    invoke-virtual {v1, p0}, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;)Z

    move-result v0

    .line 385
    .local v0, "canceled":Z
    if-eqz v0, :cond_0

    .line 386
    iget-object v2, p0, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/liquable/volley/toolbox/ImageLoader;

    # getter for: Lcom/liquable/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/liquable/volley/toolbox/ImageLoader;->access$300(Lcom/liquable/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 390
    .end local v0    # "canceled":Z
    :cond_2
    iget-object v2, p0, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/liquable/volley/toolbox/ImageLoader;

    # getter for: Lcom/liquable/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/liquable/volley/toolbox/ImageLoader;->access$400(Lcom/liquable/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "request":Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;
    check-cast v1, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 391
    .restart local v1    # "request":Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;
    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {v1, p0}, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;)Z

    .line 393
    # getter for: Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->access$500(Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 394
    iget-object v2, p0, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/liquable/volley/toolbox/ImageLoader;

    # getter for: Lcom/liquable/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/liquable/volley/toolbox/ImageLoader;->access$400(Lcom/liquable/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method
