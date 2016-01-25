.class public Lcom/liquable/nemo/util/PhotoThumbnail;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "PhotoThumbnail.java"


# static fields
.field private static final UNKNOWN_SIZE:I = -0x1


# instance fields
.field protected final file:Ljava/io/File;

.field protected final heightInDp:I

.field protected final widthInDp:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v0, -0x1

    .line 20
    invoke-direct {p0, p1, v0, v0}, Lcom/liquable/nemo/util/PhotoThumbnail;-><init>(Ljava/io/File;II)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/io/File;II)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "widthInDp"    # I
    .param p3, "heightInDp"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->file:Ljava/io/File;

    .line 25
    iput p2, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->widthInDp:I

    .line 26
    iput p3, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->heightInDp:I

    .line 27
    return-void
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    if-ne p0, p1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v1

    .line 34
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 38
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 40
    check-cast v0, Lcom/liquable/nemo/util/PhotoThumbnail;

    .line 41
    .local v0, "other":Lcom/liquable/nemo/util/PhotoThumbnail;
    iget-object v3, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->file:Ljava/io/File;

    if-nez v3, :cond_4

    .line 42
    iget-object v3, v0, Lcom/liquable/nemo/util/PhotoThumbnail;->file:Ljava/io/File;

    if-eqz v3, :cond_5

    move v1, v2

    .line 43
    goto :goto_0

    .line 45
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->file:Ljava/io/File;

    iget-object v4, v0, Lcom/liquable/nemo/util/PhotoThumbnail;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 46
    goto :goto_0

    .line 48
    :cond_5
    iget v3, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->heightInDp:I

    iget v4, v0, Lcom/liquable/nemo/util/PhotoThumbnail;->heightInDp:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 49
    goto :goto_0

    .line 51
    :cond_6
    iget v3, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->widthInDp:I

    iget v4, v0, Lcom/liquable/nemo/util/PhotoThumbnail;->widthInDp:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 52
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 4

    .prologue
    .line 59
    const/16 v0, 0x1f

    .line 60
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 61
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->file:Ljava/io/File;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 62
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->heightInDp:I

    add-int v1, v2, v3

    .line 63
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->widthInDp:I

    add-int v1, v2, v3

    .line 64
    return v1

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 71
    .local v1, "density":F
    iget-object v2, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, "decodeBitmap":Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->widthInDp:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->heightInDp:I

    if-ne v2, v3, :cond_1

    .line 76
    .end local v0    # "decodeBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "decodeBitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->widthInDp:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iget v3, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->heightInDp:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 2
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 84
    iget v0, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->heightInDp:I

    if-eq v0, v1, :cond_0

    .line 85
    iget v0, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->heightInDp:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 87
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->widthInDp:I

    if-eq v0, v1, :cond_1

    .line 88
    iget v0, p0, Lcom/liquable/nemo/util/PhotoThumbnail;->widthInDp:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 90
    :cond_1
    return-void
.end method
