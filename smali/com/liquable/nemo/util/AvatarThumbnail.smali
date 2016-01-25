.class public Lcom/liquable/nemo/util/AvatarThumbnail;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "AvatarThumbnail.java"


# static fields
.field public static final AVATAR_CORNER_RADIUS:F = 10.0f

.field public static final AVATAR_HEIGHT:I = 0x32

.field public static final AVATAR_WIDTH:I = 0x32


# instance fields
.field private final file:Ljava/io/File;

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/liquable/nemo/util/AvatarThumbnail;->file:Ljava/io/File;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/io/File;II)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/liquable/nemo/util/AvatarThumbnail;->file:Ljava/io/File;

    .line 27
    iput p2, p0, Lcom/liquable/nemo/util/AvatarThumbnail;->width:I

    .line 28
    iput p3, p0, Lcom/liquable/nemo/util/AvatarThumbnail;->height:I

    .line 29
    return-void
.end method

.method private haseCode()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/util/AvatarThumbnail;->file:Ljava/io/File;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/AvatarThumbnail;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-ne p0, p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 44
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 48
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 50
    check-cast v0, Lcom/liquable/nemo/util/AvatarThumbnail;

    .line 51
    .local v0, "other":Lcom/liquable/nemo/util/AvatarThumbnail;
    iget-object v3, p0, Lcom/liquable/nemo/util/AvatarThumbnail;->file:Ljava/io/File;

    if-nez v3, :cond_4

    .line 52
    iget-object v3, v0, Lcom/liquable/nemo/util/AvatarThumbnail;->file:Ljava/io/File;

    if-eqz v3, :cond_0

    move v1, v2

    .line 53
    goto :goto_0

    .line 55
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/util/AvatarThumbnail;->file:Ljava/io/File;

    iget-object v4, v0, Lcom/liquable/nemo/util/AvatarThumbnail;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 56
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 63
    const/16 v0, 0x1f

    .line 64
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 65
    .local v1, "result":I
    invoke-direct {p0}, Lcom/liquable/nemo/util/AvatarThumbnail;->haseCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 66
    return v1
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x32

    .line 71
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 72
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v2, 0xa0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 74
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 76
    iget-object v2, p0, Lcom/liquable/nemo/util/AvatarThumbnail;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    .local v0, "decodedBitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/liquable/nemo/util/Optional;->fromNullable(Ljava/lang/Object;)Lcom/liquable/nemo/util/Optional;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    .line 77
    invoke-static {p1, v2, v4, v4, v3}, Lcom/liquable/nemo/util/ImageUtils;->createRoundedBitmap(Landroid/content/Context;Lcom/liquable/nemo/util/Optional;IIF)Lcom/liquable/nemo/util/Optional;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    return-object v2
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 86
    iget v0, p0, Lcom/liquable/nemo/util/AvatarThumbnail;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 87
    iget v0, p0, Lcom/liquable/nemo/util/AvatarThumbnail;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 88
    return-void
.end method
