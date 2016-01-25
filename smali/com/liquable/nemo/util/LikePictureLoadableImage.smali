.class public Lcom/liquable/nemo/util/LikePictureLoadableImage;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "LikePictureLoadableImage.java"


# instance fields
.field private image:Lcom/liquable/nemo/util/CenterCropLoadableImage;

.field private final message:Lcom/liquable/nemo/message/model/LikePictureMessage;

.field protected final widthInDp:I


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/message/model/LikePictureMessage;I)V
    .locals 0
    .param p1, "message"    # Lcom/liquable/nemo/message/model/LikePictureMessage;
    .param p2, "widthInDp"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/liquable/nemo/util/LikePictureLoadableImage;->message:Lcom/liquable/nemo/message/model/LikePictureMessage;

    .line 21
    iput p2, p0, Lcom/liquable/nemo/util/LikePictureLoadableImage;->widthInDp:I

    .line 22
    return-void
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    if-ne p0, p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v1

    .line 29
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 30
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 33
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 35
    check-cast v0, Lcom/liquable/nemo/util/LikePictureLoadableImage;

    .line 36
    .local v0, "other":Lcom/liquable/nemo/util/LikePictureLoadableImage;
    iget-object v3, p0, Lcom/liquable/nemo/util/LikePictureLoadableImage;->message:Lcom/liquable/nemo/message/model/LikePictureMessage;

    if-nez v3, :cond_4

    .line 37
    iget-object v3, v0, Lcom/liquable/nemo/util/LikePictureLoadableImage;->message:Lcom/liquable/nemo/message/model/LikePictureMessage;

    if-eqz v3, :cond_5

    move v1, v2

    .line 38
    goto :goto_0

    .line 40
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/util/LikePictureLoadableImage;->message:Lcom/liquable/nemo/message/model/LikePictureMessage;

    iget-object v4, v0, Lcom/liquable/nemo/util/LikePictureLoadableImage;->message:Lcom/liquable/nemo/message/model/LikePictureMessage;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/message/model/LikePictureMessage;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 41
    goto :goto_0

    .line 43
    :cond_5
    iget v3, p0, Lcom/liquable/nemo/util/LikePictureLoadableImage;->widthInDp:I

    iget v4, v0, Lcom/liquable/nemo/util/LikePictureLoadableImage;->widthInDp:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 44
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 4

    .prologue
    .line 51
    const/16 v0, 0x1f

    .line 52
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 53
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/util/LikePictureLoadableImage;->message:Lcom/liquable/nemo/message/model/LikePictureMessage;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 54
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/util/LikePictureLoadableImage;->widthInDp:I

    add-int v1, v2, v3

    .line 55
    return v1

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/util/LikePictureLoadableImage;->message:Lcom/liquable/nemo/message/model/LikePictureMessage;

    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/LikePictureMessage;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v4, p0, Lcom/liquable/nemo/util/LikePictureLoadableImage;->image:Lcom/liquable/nemo/util/CenterCropLoadableImage;

    if-eqz v4, :cond_1

    .line 61
    iget-object v3, p0, Lcom/liquable/nemo/util/LikePictureLoadableImage;->image:Lcom/liquable/nemo/util/CenterCropLoadableImage;

    invoke-virtual {v3, p1}, Lcom/liquable/nemo/util/CenterCropLoadableImage;->load(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 78
    :cond_0
    :goto_0
    return-object v3

    .line 64
    :cond_1
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v5, p0, Lcom/liquable/nemo/util/LikePictureLoadableImage;->message:Lcom/liquable/nemo/message/model/LikePictureMessage;

    invoke-virtual {v5}, Lcom/liquable/nemo/message/model/LikePictureMessage;->getLikedMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/message/model/PictureMessage;

    .line 65
    .local v2, "picMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/PictureMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 69
    .local v0, "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    if-eqz v0, :cond_0

    .line 72
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 73
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    new-instance v3, Lcom/liquable/nemo/util/CenterCropLoadableImage;

    iget v4, p0, Lcom/liquable/nemo/util/LikePictureLoadableImage;->widthInDp:I

    invoke-direct {v3, v1, v4}, Lcom/liquable/nemo/util/CenterCropLoadableImage;-><init>(Ljava/io/File;I)V

    iput-object v3, p0, Lcom/liquable/nemo/util/LikePictureLoadableImage;->image:Lcom/liquable/nemo/util/CenterCropLoadableImage;

    .line 78
    iget-object v3, p0, Lcom/liquable/nemo/util/LikePictureLoadableImage;->image:Lcom/liquable/nemo/util/CenterCropLoadableImage;

    invoke-virtual {v3, p1}, Lcom/liquable/nemo/util/CenterCropLoadableImage;->load(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 2
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 83
    iget v1, p0, Lcom/liquable/nemo/util/LikePictureLoadableImage;->widthInDp:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 84
    .local v0, "minWidth":I
    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 85
    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 86
    return-void
.end method
