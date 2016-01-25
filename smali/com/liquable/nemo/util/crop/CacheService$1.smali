.class final Lcom/liquable/nemo/util/crop/CacheService$1;
.super Ljava/lang/Thread;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/crop/CacheService;->buildThumbnailForId(Landroid/content/Context;Lcom/liquable/nemo/util/crop/DiskCache;JJZIIJ)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isVideo:Z

.field final synthetic val$origId:J


# direct methods
.method constructor <init>(ZLandroid/content/Context;J)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/liquable/nemo/util/crop/CacheService$1;->val$isVideo:Z

    iput-object p2, p0, Lcom/liquable/nemo/util/crop/CacheService$1;->val$context:Landroid/content/Context;

    iput-wide p3, p0, Lcom/liquable/nemo/util/crop/CacheService$1;->val$origId:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 90
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/CacheService$1;->val$isVideo:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CacheService$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/util/crop/CacheService$1;->val$origId:J

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Video$Thumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;J)V

    .line 105
    :goto_1
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CacheService$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/util/crop/CacheService$1;->val$origId:J

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    goto :goto_1

    .line 91
    :catch_1
    move-exception v0

    goto :goto_0
.end method
