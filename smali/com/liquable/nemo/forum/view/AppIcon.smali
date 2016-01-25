.class public Lcom/liquable/nemo/forum/view/AppIcon;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "AppIcon.java"


# instance fields
.field private final appInfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/liquable/nemo/forum/view/AppIcon;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 22
    return-void
.end method


# virtual methods
.method public imageMissingResourceId()I
    .locals 1

    .prologue
    .line 26
    const v0, 0x7f0202a8

    return v0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    if-ne p0, p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v1

    .line 34
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 35
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 37
    check-cast v0, Lcom/liquable/nemo/forum/view/AppIcon;

    .line 38
    .local v0, "other":Lcom/liquable/nemo/forum/view/AppIcon;
    iget-object v3, p0, Lcom/liquable/nemo/forum/view/AppIcon;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_3

    .line 39
    iget-object v3, v0, Lcom/liquable/nemo/forum/view/AppIcon;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    move v1, v2

    .line 40
    goto :goto_0

    .line 42
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/forum/view/AppIcon;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Lcom/liquable/nemo/forum/view/AppIcon;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 43
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 50
    const/16 v0, 0x1f

    .line 51
    .local v0, "prime":I
    const/16 v1, 0xb

    .line 52
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/forum/view/AppIcon;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit16 v1, v2, 0x155

    .line 53
    return v1

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/forum/view/AppIcon;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 59
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/liquable/nemo/forum/view/AppIcon;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 61
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v4, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 62
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 65
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 66
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 65
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 69
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 70
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 0
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 77
    return-void
.end method
