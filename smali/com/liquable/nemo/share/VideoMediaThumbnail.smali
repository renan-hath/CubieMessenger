.class public Lcom/liquable/nemo/share/VideoMediaThumbnail;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "VideoMediaThumbnail.java"


# instance fields
.field private final id:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/liquable/nemo/share/VideoMediaThumbnail;->id:J

    .line 15
    return-void
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    if-ne p0, p1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v1

    .line 22
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 23
    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 26
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 28
    check-cast v0, Lcom/liquable/nemo/share/VideoMediaThumbnail;

    .line 29
    .local v0, "other":Lcom/liquable/nemo/share/VideoMediaThumbnail;
    iget-wide v3, p0, Lcom/liquable/nemo/share/VideoMediaThumbnail;->id:J

    iget-wide v5, v0, Lcom/liquable/nemo/share/VideoMediaThumbnail;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    .line 30
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 7

    .prologue
    .line 37
    const/16 v0, 0x1f

    .line 38
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 39
    .local v1, "result":I
    iget-wide v2, p0, Lcom/liquable/nemo/share/VideoMediaThumbnail;->id:J

    iget-wide v4, p0, Lcom/liquable/nemo/share/VideoMediaThumbnail;->id:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 40
    return v1
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/share/VideoMediaThumbnail;->id:J

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 0
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 54
    return-void
.end method
