.class public Lcom/liquable/nemo/share/PictureMediaThumbnail;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "PictureMediaThumbnail.java"


# instance fields
.field private final id:J

.field private final type:I


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 15
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/liquable/nemo/share/PictureMediaThumbnail;-><init>(JI)V

    .line 16
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "type"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/liquable/nemo/share/PictureMediaThumbnail;->id:J

    .line 20
    iput p3, p0, Lcom/liquable/nemo/share/PictureMediaThumbnail;->type:I

    .line 21
    return-void
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    if-ne p0, p1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v1

    .line 28
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 29
    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 32
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 34
    check-cast v0, Lcom/liquable/nemo/share/PictureMediaThumbnail;

    .line 35
    .local v0, "other":Lcom/liquable/nemo/share/PictureMediaThumbnail;
    iget-wide v3, p0, Lcom/liquable/nemo/share/PictureMediaThumbnail;->id:J

    iget-wide v5, v0, Lcom/liquable/nemo/share/PictureMediaThumbnail;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    .line 36
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 7

    .prologue
    .line 43
    const/16 v0, 0x1f

    .line 44
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 45
    .local v1, "result":I
    iget-wide v2, p0, Lcom/liquable/nemo/share/PictureMediaThumbnail;->id:J

    iget-wide v4, p0, Lcom/liquable/nemo/share/PictureMediaThumbnail;->id:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 46
    return v1
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 58
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-wide v3, p0, Lcom/liquable/nemo/share/PictureMediaThumbnail;->id:J

    iget v5, p0, Lcom/liquable/nemo/share/PictureMediaThumbnail;->type:I

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 60
    :goto_0
    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 0
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 67
    return-void
.end method
