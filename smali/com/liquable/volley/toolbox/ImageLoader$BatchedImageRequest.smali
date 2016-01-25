.class Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchedImageRequest"
.end annotation


# instance fields
.field private final mContainers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mError:Lcom/android/volley/VolleyError;

.field private final mRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private mResponseBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/liquable/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/liquable/volley/toolbox/ImageLoader;Lcom/android/volley/Request;Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1
    .param p3, "container"    # Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 440
    .local p2, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    iput-object p1, p0, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->this$0:Lcom/liquable/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    .line 441
    iput-object p2, p0, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/android/volley/Request;

    .line 442
    iget-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 443
    return-void
.end method

.method static synthetic access$200(Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public addContainer(Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 465
    return-void
.end method

.method public getError()Lcom/android/volley/VolleyError;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public removeContainerAndCancelIfNecessary(Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;)Z
    .locals 1
    .param p1, "container"    # Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 477
    iget-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V

    .line 479
    const/4 v0, 0x1

    .line 481
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setError(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/liquable/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/android/volley/VolleyError;

    .line 450
    return-void
.end method
