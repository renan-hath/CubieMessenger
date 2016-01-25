.class public Lcom/liquable/nemo/message/view/LocationImage;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "LocationImage.java"


# instance fields
.field private isLoading:Z

.field private final mapFile:Ljava/io/File;

.field private final targetHeight:I

.field private final targetWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mapFile"    # Ljava/io/File;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/liquable/nemo/message/view/LocationImage;->mapFile:Ljava/io/File;

    .line 27
    invoke-static {p1}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 28
    .local v0, "screenWidth":I
    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x5

    const/16 v2, 0x280

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/liquable/nemo/message/view/LocationImage;->targetWidth:I

    .line 29
    iget v1, p0, Lcom/liquable/nemo/message/view/LocationImage;->targetWidth:I

    mul-int/lit16 v1, v1, 0x1e0

    div-int/lit16 v1, v1, 0x280

    iput v1, p0, Lcom/liquable/nemo/message/view/LocationImage;->targetHeight:I

    .line 30
    return-void
.end method


# virtual methods
.method public isLoading()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/liquable/nemo/message/view/LocationImage;->isLoading:Z

    return v0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    if-ne p0, p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 42
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 46
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 48
    check-cast v0, Lcom/liquable/nemo/message/view/LocationImage;

    .line 49
    .local v0, "other":Lcom/liquable/nemo/message/view/LocationImage;
    iget-object v3, p0, Lcom/liquable/nemo/message/view/LocationImage;->mapFile:Ljava/io/File;

    if-nez v3, :cond_4

    .line 50
    iget-object v3, v0, Lcom/liquable/nemo/message/view/LocationImage;->mapFile:Ljava/io/File;

    if-eqz v3, :cond_0

    move v1, v2

    .line 51
    goto :goto_0

    .line 53
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/message/view/LocationImage;->mapFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 54
    iget-object v3, v0, Lcom/liquable/nemo/message/view/LocationImage;->mapFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 55
    goto :goto_0

    .line 57
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/message/view/LocationImage;->mapFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v5, v0, Lcom/liquable/nemo/message/view/LocationImage;->mapFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/message/view/LocationImage;->mapFile:Ljava/io/File;

    iget-object v4, v0, Lcom/liquable/nemo/message/view/LocationImage;->mapFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 60
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 67
    const/16 v0, 0x1f

    .line 68
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 69
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/message/view/LocationImage;->mapFile:Ljava/io/File;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 70
    return v1

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/message/view/LocationImage;->mapFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v1, p0, Lcom/liquable/nemo/message/view/LocationImage;->mapFile:Ljava/io/File;

    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/liquable/nemo/message/view/LocationImage;->isLoading:Z

    .line 76
    iget-boolean v1, p0, Lcom/liquable/nemo/message/view/LocationImage;->isLoading:Z

    if-eqz v1, :cond_1

    move-object v1, v2

    .line 85
    :goto_1
    return-object v1

    .line 75
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/message/view/LocationImage;->mapFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    .local v0, "decodeFile":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    move-object v1, v2

    .line 82
    goto :goto_1

    .line 85
    :cond_2
    iget v1, p0, Lcom/liquable/nemo/message/view/LocationImage;->targetWidth:I

    rsub-int v1, v1, 0x280

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/liquable/nemo/message/view/LocationImage;->targetHeight:I

    rsub-int v2, v2, 0x1e0

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/liquable/nemo/message/view/LocationImage;->targetWidth:I

    iget v4, p0, Lcom/liquable/nemo/message/view/LocationImage;->targetHeight:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 94
    iget v0, p0, Lcom/liquable/nemo/message/view/LocationImage;->targetHeight:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 95
    iget v0, p0, Lcom/liquable/nemo/message/view/LocationImage;->targetWidth:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 96
    return-void
.end method

.method public showLoadingAnimation()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method
