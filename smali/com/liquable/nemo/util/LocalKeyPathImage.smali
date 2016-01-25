.class public Lcom/liquable/nemo/util/LocalKeyPathImage;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "LocalKeyPathImage.java"


# instance fields
.field private final localKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

.field private final targetHeight:I

.field private final targetWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/storage/LocalKeyPath;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .param p3, "widthInDp"    # I
    .param p4, "heightInDp"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/liquable/nemo/util/LocalKeyPathImage;->localKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    .line 24
    invoke-static {p1, p3}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/util/LocalKeyPathImage;->targetWidth:I

    .line 25
    invoke-static {p1, p4}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/util/LocalKeyPathImage;->targetHeight:I

    .line 26
    return-void
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    if-ne p0, p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v1

    .line 33
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 37
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 39
    check-cast v0, Lcom/liquable/nemo/util/LocalKeyPathImage;

    .line 40
    .local v0, "other":Lcom/liquable/nemo/util/LocalKeyPathImage;
    iget v3, p0, Lcom/liquable/nemo/util/LocalKeyPathImage;->targetHeight:I

    iget v4, v0, Lcom/liquable/nemo/util/LocalKeyPathImage;->targetHeight:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 41
    goto :goto_0

    .line 43
    :cond_4
    iget v3, p0, Lcom/liquable/nemo/util/LocalKeyPathImage;->targetWidth:I

    iget v4, v0, Lcom/liquable/nemo/util/LocalKeyPathImage;->targetWidth:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 44
    goto :goto_0

    .line 46
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/util/LocalKeyPathImage;->localKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    if-nez v3, :cond_6

    .line 47
    iget-object v3, v0, Lcom/liquable/nemo/util/LocalKeyPathImage;->localKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    if-eqz v3, :cond_0

    move v1, v2

    .line 48
    goto :goto_0

    .line 50
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/util/LocalKeyPathImage;->localKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    iget-object v4, v0, Lcom/liquable/nemo/util/LocalKeyPathImage;->localKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 51
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 4

    .prologue
    .line 58
    const/16 v0, 0x1f

    .line 59
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 60
    .local v1, "result":I
    iget v2, p0, Lcom/liquable/nemo/util/LocalKeyPathImage;->targetHeight:I

    add-int/lit8 v1, v2, 0x1f

    .line 61
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/util/LocalKeyPathImage;->targetWidth:I

    add-int v1, v2, v3

    .line 62
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/util/LocalKeyPathImage;->localKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 63
    return v1

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/util/LocalKeyPathImage;->localKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    invoke-virtual {v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    iget-object v2, p0, Lcom/liquable/nemo/util/LocalKeyPathImage;->localKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 69
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    const/4 v2, 0x0

    .line 78
    :goto_0
    return-object v2

    .line 73
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/liquable/nemo/util/LocalKeyPathImage;->targetWidth:I

    iget v5, p0, Lcom/liquable/nemo/util/LocalKeyPathImage;->targetHeight:I

    invoke-static {v2, v3, v4, v5}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Ljava/lang/String;III)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 78
    .local v0, "bitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 83
    iget v0, p0, Lcom/liquable/nemo/util/LocalKeyPathImage;->targetHeight:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 84
    iget v0, p0, Lcom/liquable/nemo/util/LocalKeyPathImage;->targetWidth:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 86
    return-void
.end method
