.class Lcom/liquable/volley/toolbox/ImageLoader$4;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/volley/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/volley/toolbox/ImageLoader;


# direct methods
.method constructor <init>(Lcom/liquable/volley/toolbox/ImageLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/volley/toolbox/ImageLoader;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/liquable/volley/toolbox/ImageLoader$4;->this$0:Lcom/liquable/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 503
    iget-object v2, p0, Lcom/liquable/volley/toolbox/ImageLoader$4;->this$0:Lcom/liquable/volley/toolbox/ImageLoader;

    # getter for: Lcom/liquable/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/liquable/volley/toolbox/ImageLoader;->access$400(Lcom/liquable/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 504
    .local v0, "bir":Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;
    # getter for: Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->access$500(Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    .line 508
    .local v1, "container":Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;
    # getter for: Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;
    invoke-static {v1}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->access$600(Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;)Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 511
    invoke-virtual {v0}, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->getError()Lcom/android/volley/VolleyError;

    move-result-object v4

    if-nez v4, :cond_2

    .line 512
    # getter for: Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->access$200(Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;

    move-result-object v4

    # setter for: Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v4}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->access$702(Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 513
    # getter for: Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;
    invoke-static {v1}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->access$600(Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;)Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;Z)V

    goto :goto_0

    .line 515
    :cond_2
    # getter for: Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;
    invoke-static {v1}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->access$600(Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;)Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    invoke-virtual {v0}, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->getError()Lcom/android/volley/VolleyError;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 519
    .end local v0    # "bir":Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;
    .end local v1    # "container":Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;
    :cond_3
    iget-object v2, p0, Lcom/liquable/volley/toolbox/ImageLoader$4;->this$0:Lcom/liquable/volley/toolbox/ImageLoader;

    # getter for: Lcom/liquable/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/liquable/volley/toolbox/ImageLoader;->access$400(Lcom/liquable/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 520
    iget-object v2, p0, Lcom/liquable/volley/toolbox/ImageLoader$4;->this$0:Lcom/liquable/volley/toolbox/ImageLoader;

    const/4 v3, 0x0

    # setter for: Lcom/liquable/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lcom/liquable/volley/toolbox/ImageLoader;->access$802(Lcom/liquable/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 521
    return-void
.end method
