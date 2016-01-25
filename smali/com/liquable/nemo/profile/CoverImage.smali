.class public Lcom/liquable/nemo/profile/CoverImage;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "CoverImage.java"


# static fields
.field public static final HEIGHT_OF_COVER:I = 0x280

.field public static final WIDTH_OF_COVER:I = 0x280


# instance fields
.field private final targetHeight:I

.field private final targetWidth:I

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/liquable/nemo/profile/CoverImage;->uid:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 34
    .local v0, "widthPixel":I
    iput v0, p0, Lcom/liquable/nemo/profile/CoverImage;->targetWidth:I

    .line 35
    iget v1, p0, Lcom/liquable/nemo/profile/CoverImage;->targetWidth:I

    iput v1, p0, Lcom/liquable/nemo/profile/CoverImage;->targetHeight:I

    .line 36
    return-void
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    if-ne p0, p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v1

    .line 43
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 44
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 47
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 49
    check-cast v0, Lcom/liquable/nemo/profile/CoverImage;

    .line 50
    .local v0, "other":Lcom/liquable/nemo/profile/CoverImage;
    iget v3, p0, Lcom/liquable/nemo/profile/CoverImage;->targetHeight:I

    iget v4, v0, Lcom/liquable/nemo/profile/CoverImage;->targetHeight:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 51
    goto :goto_0

    .line 53
    :cond_4
    iget v3, p0, Lcom/liquable/nemo/profile/CoverImage;->targetWidth:I

    iget v4, v0, Lcom/liquable/nemo/profile/CoverImage;->targetWidth:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 54
    goto :goto_0

    .line 56
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/profile/CoverImage;->uid:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 57
    iget-object v3, v0, Lcom/liquable/nemo/profile/CoverImage;->uid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/profile/CoverImage;->uid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/profile/CoverImage;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 61
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 4

    .prologue
    .line 68
    const/16 v0, 0x1f

    .line 69
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 70
    .local v1, "result":I
    iget v2, p0, Lcom/liquable/nemo/profile/CoverImage;->targetHeight:I

    add-int/lit8 v1, v2, 0x1f

    .line 71
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/profile/CoverImage;->targetWidth:I

    add-int v1, v2, v3

    .line 72
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/profile/CoverImage;->uid:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 73
    return v1

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/profile/CoverImage;->uid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    iget-object v3, p0, Lcom/liquable/nemo/profile/CoverImage;->uid:Ljava/lang/String;

    invoke-static {v3}, Lcom/liquable/nemo/friend/model/Account;->createCoverLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    .line 79
    .local v2, "coverLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v1

    .line 80
    .local v1, "coverFile":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v4, p0, Lcom/liquable/nemo/profile/CoverImage;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/friend/model/FriendManager;->downloadCoverIfRequired(Ljava/lang/String;)V

    .line 82
    const/4 v3, 0x0

    .line 94
    :goto_0
    return-object v3

    .line 84
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/liquable/nemo/profile/CoverImage;->targetWidth:I

    iget v6, p0, Lcom/liquable/nemo/profile/CoverImage;->targetHeight:I

    invoke-static {v3, v4, v5, v6}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Ljava/lang/String;III)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 90
    .local v0, "coverBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    sub-long/2addr v3, v5

    invoke-static {v1, v3, v4}, Lorg/apache/commons/io/FileUtils;->isFileOlder(Ljava/io/File;J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v4, p0, Lcom/liquable/nemo/profile/CoverImage;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/friend/model/FriendManager;->downloadCoverIfRequired(Ljava/lang/String;)V

    .line 94
    :cond_1
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 99
    iget v0, p0, Lcom/liquable/nemo/profile/CoverImage;->targetHeight:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 100
    iget v0, p0, Lcom/liquable/nemo/profile/CoverImage;->targetWidth:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 102
    return-void
.end method
