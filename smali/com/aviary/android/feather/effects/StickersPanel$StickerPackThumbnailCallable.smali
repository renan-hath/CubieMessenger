.class Lcom/aviary/android/feather/effects/StickersPanel$StickerPackThumbnailCallable;
.super Ljava/lang/Object;
.source "StickersPanel.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/StickersPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StickerPackThumbnailCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mFolder:Landroid/graphics/drawable/BitmapDrawable;

.field mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .param p1, "plugin"    # Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
    .param p2, "drawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 1592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1593
    iput-object p1, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPackThumbnailCallable;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;

    .line 1594
    iput-object p2, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPackThumbnailCallable;->mFolder:Landroid/graphics/drawable/BitmapDrawable;

    .line 1595
    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1599
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPackThumbnailCallable;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getPackageIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1600
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1601
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPackThumbnailCallable;->mFolder:Landroid/graphics/drawable/BitmapDrawable;

    const v2, 0x3fd9999a    # 1.7f

    const v3, 0x3d4ccccd    # 0.05f

    invoke-static {v1, v0, v2, v3}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->flattenDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1603
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPackThumbnailCallable;->mFolder:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1587
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel$StickerPackThumbnailCallable;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
