.class public Lcom/liquable/nemo/message/view/DefaultAvatarThumbnail;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "DefaultAvatarThumbnail.java"


# instance fields
.field private height:I

.field private final resId:I

.field private width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 20
    iput p1, p0, Lcom/liquable/nemo/message/view/DefaultAvatarThumbnail;->resId:I

    .line 22
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 25
    iput p1, p0, Lcom/liquable/nemo/message/view/DefaultAvatarThumbnail;->resId:I

    .line 26
    iput p2, p0, Lcom/liquable/nemo/message/view/DefaultAvatarThumbnail;->width:I

    .line 27
    iput p3, p0, Lcom/liquable/nemo/message/view/DefaultAvatarThumbnail;->height:I

    .line 28
    return-void
.end method

.method private haseCode()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/liquable/nemo/message/view/DefaultAvatarThumbnail;->resId:I

    return v0
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    if-ne p0, p1, :cond_1

    .line 49
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
    check-cast v0, Lcom/liquable/nemo/message/view/DefaultAvatarThumbnail;

    .line 46
    .local v0, "other":Lcom/liquable/nemo/message/view/DefaultAvatarThumbnail;
    iget v3, p0, Lcom/liquable/nemo/message/view/DefaultAvatarThumbnail;->resId:I

    iget v4, v0, Lcom/liquable/nemo/message/view/DefaultAvatarThumbnail;->resId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 47
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 54
    const/16 v0, 0x1f

    .line 55
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 56
    .local v1, "result":I
    invoke-direct {p0}, Lcom/liquable/nemo/message/view/DefaultAvatarThumbnail;->haseCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 57
    return v1
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x32

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/view/DefaultAvatarThumbnail;->resId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/util/Optional;->fromNullable(Ljava/lang/Object;)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    .line 62
    invoke-static {p1, v0, v2, v2, v1}, Lcom/liquable/nemo/util/ImageUtils;->createRoundedBitmap(Landroid/content/Context;Lcom/liquable/nemo/util/Optional;IIF)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 71
    iget v0, p0, Lcom/liquable/nemo/message/view/DefaultAvatarThumbnail;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 72
    iget v0, p0, Lcom/liquable/nemo/message/view/DefaultAvatarThumbnail;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 73
    return-void
.end method
