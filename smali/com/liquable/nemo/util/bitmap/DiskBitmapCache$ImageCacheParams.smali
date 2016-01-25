.class public Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;
.super Ljava/lang/Object;
.source "DiskBitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCacheParams"
.end annotation


# instance fields
.field public diskCacheDir:Ljava/io/File;

.field public diskCacheEnabled:Z

.field public diskCacheSize:I

.field public initDiskCacheOnCreate:Z

.field public memCacheSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCacheDirectoryName"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/16 v1, 0x1400

    iput v1, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;->memCacheSize:I

    .line 61
    const/high16 v1, 0xa00000

    iput v1, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;->diskCacheSize:I

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;->diskCacheEnabled:Z

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;->initDiskCacheOnCreate:Z

    .line 79
    :try_start_0
    invoke-static {p1, p2}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public setMemCacheSizePercent(F)V
    .locals 2
    .param p1, "percent"    # F

    .prologue
    .line 102
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;->memCacheSize:I

    .line 106
    return-void
.end method
