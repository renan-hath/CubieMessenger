.class public Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;
.super Ljava/lang/Object;
.source "ImageCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/services/ImageCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileData"
.end annotation


# instance fields
.field public mData:[B

.field public mOffset:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;->mData:[B

    .line 196
    iput p2, p0, Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;->mOffset:I

    .line 197
    return-void
.end method


# virtual methods
.method data()[B
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;->mData:[B

    return-object v0
.end method

.method offset()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;->mOffset:I

    return v0
.end method

.method size()I
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;->mData:[B

    array-length v0, v0

    iget v1, p0, Lcom/aviary/android/feather/library/services/ImageCacheService$FileData;->mOffset:I

    sub-int/2addr v0, v1

    return v0
.end method
