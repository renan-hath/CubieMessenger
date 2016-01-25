.class public Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "RecyclingBitmapDrawable.java"


# static fields
.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private mCacheRefCount:I

.field private mDisplayRefCount:I

.field private mHasBeenDisplayed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 31
    iput v0, p0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->mCacheRefCount:I

    .line 32
    iput v0, p0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->mDisplayRefCount:I

    .line 38
    return-void
.end method

.method private declared-synchronized checkState()V
    .locals 4

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->mCacheRefCount:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->mDisplayRefCount:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->mHasBeenDisplayed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->hasValidBitmap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "No longer being used or cached so recycling. %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/Logger;->debugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0}, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_0
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized hasValidBitmap()Z
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 51
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public setIsCached(Z)V
    .locals 1
    .param p1, "isCached"    # Z

    .prologue
    .line 63
    monitor-enter p0

    .line 64
    if-eqz p1, :cond_0

    .line 65
    :try_start_0
    iget v0, p0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->mCacheRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->mCacheRefCount:I

    .line 69
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-direct {p0}, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->checkState()V

    .line 73
    return-void

    .line 67
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->mCacheRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->mCacheRefCount:I

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setIsDisplayed(Z)V
    .locals 1
    .param p1, "isDisplayed"    # Z

    .prologue
    .line 83
    monitor-enter p0

    .line 84
    if-eqz p1, :cond_0

    .line 85
    :try_start_0
    iget v0, p0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->mDisplayRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->mDisplayRefCount:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->mHasBeenDisplayed:Z

    .line 90
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-direct {p0}, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->checkState()V

    .line 94
    return-void

    .line 88
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->mDisplayRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->mDisplayRefCount:I

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
