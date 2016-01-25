.class Lcom/liquable/nemo/util/ImageLoader$1;
.super Lcom/liquable/nemo/util/LruCache;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/ImageLoader;-><init>(Landroid/content/Context;Lorg/apache/commons/lang3/math/Fraction;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/LruCache",
        "<",
        "Lcom/liquable/nemo/util/LoadableImage;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/util/ImageLoader;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/ImageLoader;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p2, "maxSize"    # I

    .prologue
    .line 335
    iput-object p1, p0, Lcom/liquable/nemo/util/ImageLoader$1;->this$0:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLcom/liquable/nemo/util/LoadableImage;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2
    .param p1, "evicted"    # Z
    .param p2, "key"    # Lcom/liquable/nemo/util/LoadableImage;
    .param p3, "oldValue"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p4, "newValue"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 342
    const-class v0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    check-cast p3, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;

    .end local p3    # "oldValue":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->setIsCached(Z)V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 349
    .restart local p3    # "oldValue":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 350
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    invoke-interface {p2}, Lcom/liquable/nemo/util/LoadableImage;->getDiskCacheStrategy()Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;->NONE:Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;

    if-eq v0, v1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader$1;->this$0:Lcom/liquable/nemo/util/ImageLoader;

    # getter for: Lcom/liquable/nemo/util/ImageLoader;->reusableBitmaps:Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;
    invoke-static {v0}, Lcom/liquable/nemo/util/ImageLoader;->access$800(Lcom/liquable/nemo/util/ImageLoader;)Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;

    move-result-object v0

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->add(Landroid/graphics/Bitmap;)Z

    goto :goto_0
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 335
    check-cast p2, Lcom/liquable/nemo/util/LoadableImage;

    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    check-cast p4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/util/ImageLoader$1;->entryRemoved(ZLcom/liquable/nemo/util/LoadableImage;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method protected sizeOf(Lcom/liquable/nemo/util/LoadableImage;Landroid/graphics/drawable/BitmapDrawable;)I
    .locals 3
    .param p1, "key"    # Lcom/liquable/nemo/util/LoadableImage;
    .param p2, "bitmapDrawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 362
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 363
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    return v1
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 335
    check-cast p1, Lcom/liquable/nemo/util/LoadableImage;

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/util/ImageLoader$1;->sizeOf(Lcom/liquable/nemo/util/LoadableImage;Landroid/graphics/drawable/BitmapDrawable;)I

    move-result v0

    return v0
.end method
