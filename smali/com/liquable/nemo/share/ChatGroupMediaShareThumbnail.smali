.class public Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "ChatGroupMediaShareThumbnail.java"


# instance fields
.field private final defaultImageResId:I

.field private final sideInPx:I

.field private final thumbnailLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/storage/LocalKeyPath;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thumbnailLocalKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .param p3, "defaultImageResId"    # I
    .param p4, "sideInDp"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;->thumbnailLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    .line 25
    iput p3, p0, Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;->defaultImageResId:I

    .line 26
    invoke-static {p1, p4}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;->sideInPx:I

    .line 27
    return-void
.end method


# virtual methods
.method public imageMissingResourceId()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;->defaultImageResId:I

    return v0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    if-ne p0, p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v1

    .line 39
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 40
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 43
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 45
    check-cast v0, Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;

    .line 46
    .local v0, "other":Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;
    iget-object v3, p0, Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;->thumbnailLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    if-nez v3, :cond_4

    .line 47
    iget-object v3, v0, Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;->thumbnailLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    if-eqz v3, :cond_0

    move v1, v2

    .line 48
    goto :goto_0

    .line 50
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;->thumbnailLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    iget-object v4, v0, Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;->thumbnailLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 51
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 58
    const/16 v0, 0x1f

    .line 59
    .local v0, "prime":I
    const/16 v1, 0xb

    .line 60
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;->thumbnailLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 61
    :goto_0
    add-int/lit16 v1, v2, 0x155

    .line 62
    return v1

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;->thumbnailLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    .line 61
    invoke-virtual {v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;->thumbnailLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 68
    .local v0, "thumbnailFile":Ljava/io/File;
    if-nez v0, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 72
    :goto_0
    return-object v1

    :cond_0
    iget v1, p0, Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;->sideInPx:I

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/ImageUtils;->centerCrop(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 77
    iget v0, p0, Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;->sideInPx:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 78
    iget v0, p0, Lcom/liquable/nemo/share/ChatGroupMediaShareThumbnail;->sideInPx:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 79
    return-void
.end method
