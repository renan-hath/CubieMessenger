.class public final Lcom/liquable/nemo/util/crop/ResourceTexture;
.super Lcom/liquable/nemo/util/crop/Texture;
.source "ResourceTexture.java"


# instance fields
.field private final mResourceId:I

.field private final mScaled:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "resourceId"    # I
    .param p2, "scaled"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/Texture;-><init>()V

    .line 28
    iput p1, p0, Lcom/liquable/nemo/util/crop/ResourceTexture;->mResourceId:I

    .line 29
    iput-boolean p2, p0, Lcom/liquable/nemo/util/crop/ResourceTexture;->mScaled:Z

    .line 30
    return-void
.end method


# virtual methods
.method public isCached()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method protected load(Lcom/liquable/nemo/util/crop/RenderView;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "view"    # Lcom/liquable/nemo/util/crop/RenderView;

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-boolean v3, p0, Lcom/liquable/nemo/util/crop/ResourceTexture;->mScaled:Z

    if-eqz v3, :cond_1

    .line 42
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 43
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 44
    invoke-virtual {p1}, Lcom/liquable/nemo/util/crop/RenderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/liquable/nemo/util/crop/ResourceTexture;->mResourceId:I

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/util/crop/RenderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/liquable/nemo/util/crop/ResourceTexture;->mResourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 47
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 49
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 50
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 51
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 54
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v3

    goto :goto_0

    .line 52
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v3

    .line 54
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 55
    :catch_2
    move-exception v3

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v3

    .line 54
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 57
    :goto_1
    throw v3

    .line 55
    :catch_3
    move-exception v4

    goto :goto_1
.end method
