.class public Lcom/liquable/nemo/message/view/CustomStickerImage;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "CustomStickerImage.java"


# instance fields
.field private final file:Ljava/io/File;

.field private final widthInPixel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "widthInDp"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/liquable/nemo/message/view/CustomStickerImage;->file:Ljava/io/File;

    .line 24
    invoke-static {p1, p3}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/message/view/CustomStickerImage;->widthInPixel:I

    .line 25
    return-void
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    if-ne p0, p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v1

    .line 32
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 33
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 36
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 38
    check-cast v0, Lcom/liquable/nemo/message/view/CustomStickerImage;

    .line 39
    .local v0, "other":Lcom/liquable/nemo/message/view/CustomStickerImage;
    iget-object v3, p0, Lcom/liquable/nemo/message/view/CustomStickerImage;->file:Ljava/io/File;

    if-nez v3, :cond_4

    .line 40
    iget-object v3, v0, Lcom/liquable/nemo/message/view/CustomStickerImage;->file:Ljava/io/File;

    if-eqz v3, :cond_0

    move v1, v2

    .line 41
    goto :goto_0

    .line 43
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/message/view/CustomStickerImage;->file:Ljava/io/File;

    iget-object v4, v0, Lcom/liquable/nemo/message/view/CustomStickerImage;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 44
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 51
    const/16 v0, 0x1f

    .line 52
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 53
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/message/view/CustomStickerImage;->file:Ljava/io/File;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 54
    return v1

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/message/view/CustomStickerImage;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    iget-object v1, p0, Lcom/liquable/nemo/message/view/CustomStickerImage;->file:Ljava/io/File;

    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 62
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 63
    const/16 v1, 0xf0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 67
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 68
    iget-object v1, p0, Lcom/liquable/nemo/message/view/CustomStickerImage;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 71
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v1

    .line 65
    .restart local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    const/16 v1, 0x140

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_0

    .line 71
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 76
    iget v0, p0, Lcom/liquable/nemo/message/view/CustomStickerImage;->widthInPixel:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 77
    iget v0, p0, Lcom/liquable/nemo/message/view/CustomStickerImage;->widthInPixel:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 78
    return-void
.end method
