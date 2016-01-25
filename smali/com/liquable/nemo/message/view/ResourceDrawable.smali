.class public Lcom/liquable/nemo/message/view/ResourceDrawable;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "ResourceDrawable.java"


# instance fields
.field private heightInDp:I

.field private final resId:I

.field private widthInDp:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 17
    iput p1, p0, Lcom/liquable/nemo/message/view/ResourceDrawable;->resId:I

    .line 19
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "widthInDp"    # I
    .param p3, "heightInDp"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 22
    iput p1, p0, Lcom/liquable/nemo/message/view/ResourceDrawable;->resId:I

    .line 23
    iput p2, p0, Lcom/liquable/nemo/message/view/ResourceDrawable;->widthInDp:I

    .line 24
    iput p3, p0, Lcom/liquable/nemo/message/view/ResourceDrawable;->heightInDp:I

    .line 25
    return-void
.end method

.method private haseCode()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/liquable/nemo/message/view/ResourceDrawable;->resId:I

    return v0
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    if-ne p0, p1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v1

    .line 37
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 41
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 43
    check-cast v0, Lcom/liquable/nemo/message/view/ResourceDrawable;

    .line 44
    .local v0, "other":Lcom/liquable/nemo/message/view/ResourceDrawable;
    iget v3, p0, Lcom/liquable/nemo/message/view/ResourceDrawable;->resId:I

    iget v4, v0, Lcom/liquable/nemo/message/view/ResourceDrawable;->resId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 45
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 52
    const/16 v0, 0x1f

    .line 53
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 54
    .local v1, "result":I
    invoke-direct {p0}, Lcom/liquable/nemo/message/view/ResourceDrawable;->haseCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 55
    return v1
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/view/ResourceDrawable;->resId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 65
    iget v0, p0, Lcom/liquable/nemo/message/view/ResourceDrawable;->heightInDp:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 66
    iget v0, p0, Lcom/liquable/nemo/message/view/ResourceDrawable;->widthInDp:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 67
    return-void
.end method
