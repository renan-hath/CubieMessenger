.class public Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/utils/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageSizes"
.end annotation


# instance fields
.field bucketSize:Ljava/lang/String;

.field newSize:Ljava/lang/String;

.field originalSize:Ljava/lang/String;

.field realsize:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const-string/jumbo v0, "0px"

    iput-object v0, p0, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->originalSize:Ljava/lang/String;

    .line 286
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->realsize:[I

    .line 287
    return-void

    .line 286
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public computeBucketSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 294
    const-string/jumbo v0, ""

    .line 295
    .local v0, "bucket":Ljava/lang/String;
    const/16 v1, 0xc8

    if-ge p1, v1, :cond_0

    .line 296
    const-string/jumbo v0, "<200px"

    .line 310
    :goto_0
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->setBucketSize(Ljava/lang/String;)V

    .line 311
    return-void

    .line 297
    :cond_0
    const/16 v1, 0x191

    if-ge p1, v1, :cond_1

    .line 298
    const-string/jumbo v0, "201-400px"

    goto :goto_0

    .line 299
    :cond_1
    const/16 v1, 0x259

    if-ge p1, v1, :cond_2

    .line 300
    const-string/jumbo v0, "401-600px"

    goto :goto_0

    .line 301
    :cond_2
    const/16 v1, 0x321

    if-ge p1, v1, :cond_3

    .line 302
    const-string/jumbo v0, "601-800px"

    goto :goto_0

    .line 303
    :cond_3
    const/16 v1, 0x401

    if-ge p1, v1, :cond_4

    .line 304
    const-string/jumbo v0, "801-1024px"

    goto :goto_0

    .line 305
    :cond_4
    const/16 v1, 0x801

    if-ge p1, v1, :cond_5

    .line 306
    const-string/jumbo v0, "1025-2028px"

    goto :goto_0

    .line 308
    :cond_5
    const-string/jumbo v0, ">2048px"

    goto :goto_0
.end method

.method public getBucketSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->bucketSize:Ljava/lang/String;

    return-object v0
.end method

.method public getNewSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->newSize:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->originalSize:Ljava/lang/String;

    return-object v0
.end method

.method public getRealSize()[I
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->realsize:[I

    return-object v0
.end method

.method public setBucketSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketSize"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->bucketSize:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setNewSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "newSize"    # Ljava/lang/String;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->newSize:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setOriginalSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "originalSize"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->originalSize:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setRealSize(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->realsize:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 315
    iget-object v0, p0, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->realsize:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 316
    return-void
.end method
