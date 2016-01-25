.class public Lcom/liquable/nemo/profile/RoundedProfileIcon;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "RoundedProfileIcon.java"


# instance fields
.field private final backgroundResId:I

.field private final height:I

.field private final loadableImage:Lcom/liquable/nemo/util/LoadableImage;

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/util/LoadableImage;III)V
    .locals 0
    .param p1, "loadableImage"    # Lcom/liquable/nemo/util/LoadableImage;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "backgroundResId"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/liquable/nemo/profile/RoundedProfileIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    .line 28
    iput p2, p0, Lcom/liquable/nemo/profile/RoundedProfileIcon;->width:I

    .line 29
    iput p3, p0, Lcom/liquable/nemo/profile/RoundedProfileIcon;->height:I

    .line 30
    iput p4, p0, Lcom/liquable/nemo/profile/RoundedProfileIcon;->backgroundResId:I

    .line 31
    return-void
.end method


# virtual methods
.method public imageMissingResourceId()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    if-ne p0, p1, :cond_1

    .line 57
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
    check-cast v0, Lcom/liquable/nemo/profile/RoundedProfileIcon;

    .line 50
    .local v0, "other":Lcom/liquable/nemo/profile/RoundedProfileIcon;
    iget-object v3, p0, Lcom/liquable/nemo/profile/RoundedProfileIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    if-nez v3, :cond_4

    .line 51
    iget-object v3, v0, Lcom/liquable/nemo/profile/RoundedProfileIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    if-eqz v3, :cond_0

    move v1, v2

    .line 52
    goto :goto_0

    .line 54
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/profile/RoundedProfileIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    iget-object v4, v0, Lcom/liquable/nemo/profile/RoundedProfileIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 55
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 62
    const/16 v0, 0x1f

    .line 63
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 64
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/profile/RoundedProfileIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 65
    return v1

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/profile/RoundedProfileIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/liquable/nemo/profile/RoundedProfileIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    invoke-interface {v1, p1}, Lcom/liquable/nemo/util/LoadableImage;->load(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, "originalBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/liquable/nemo/profile/RoundedProfileIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    invoke-interface {v1}, Lcom/liquable/nemo/util/LoadableImage;->imageMissingResourceId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/profile/RoundedProfileIcon;->loadableImage:Lcom/liquable/nemo/util/LoadableImage;

    .line 75
    invoke-interface {v2}, Lcom/liquable/nemo/util/LoadableImage;->imageMissingResourceId()I

    move-result v2

    .line 74
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    :cond_0
    invoke-static {v0}, Lcom/liquable/nemo/util/Optional;->of(Ljava/lang/Object;)Lcom/liquable/nemo/util/Optional;

    move-result-object v1

    iget v2, p0, Lcom/liquable/nemo/profile/RoundedProfileIcon;->width:I

    iget v3, p0, Lcom/liquable/nemo/profile/RoundedProfileIcon;->height:I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/liquable/nemo/profile/RoundedProfileIcon;->backgroundResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 81
    invoke-static {v1, v2, v3, v4}, Lcom/liquable/nemo/util/ImageUtils;->createRoundedBitmap(Lcom/liquable/nemo/util/Optional;IILandroid/graphics/drawable/Drawable;)Lcom/liquable/nemo/util/Optional;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    :goto_0
    return-object v1

    .line 77
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 90
    iget v0, p0, Lcom/liquable/nemo/profile/RoundedProfileIcon;->width:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 91
    iget v0, p0, Lcom/liquable/nemo/profile/RoundedProfileIcon;->height:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 92
    return-void
.end method
