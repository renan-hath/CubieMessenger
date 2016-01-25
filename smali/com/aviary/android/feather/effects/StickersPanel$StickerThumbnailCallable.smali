.class Lcom/aviary/android/feather/effects/StickersPanel$StickerThumbnailCallable;
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
    name = "StickerThumbnailCallable"
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
.field mFinalSize:I

.field mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;Ljava/lang/String;I)V
    .locals 0
    .param p1, "plugin"    # Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
    .param p2, "srcUrl"    # Ljava/lang/String;
    .param p3, "size"    # I

    .prologue
    .line 1779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1780
    iput-object p1, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerThumbnailCallable;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;

    .line 1781
    iput p3, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerThumbnailCallable;->mFinalSize:I

    .line 1782
    iput-object p2, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerThumbnailCallable;->mUrl:Ljava/lang/String;

    .line 1783
    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1788
    :try_start_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerThumbnailCallable;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerThumbnailCallable;->mUrl:Ljava/lang/String;

    sget-object v3, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->Preview:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    iget v4, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerThumbnailCallable;->mFinalSize:I

    iget v5, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerThumbnailCallable;->mFinalSize:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/aviary/android/feather/library/utils/ImageLoader;->getPluginItemBitmap(Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;Ljava/lang/String;Lcom/aviary/android/feather/library/services/PluginService$StickerType;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1793
    :goto_0
    return-object v1

    .line 1789
    :catch_0
    move-exception v0

    .line 1790
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerThumbnailCallable;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerThumbnailCallable;->mUrl:Ljava/lang/String;

    sget-object v3, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->Small:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    iget v4, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerThumbnailCallable;->mFinalSize:I

    iget v5, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerThumbnailCallable;->mFinalSize:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/aviary/android/feather/library/utils/ImageLoader;->getPluginItemBitmap(Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;Ljava/lang/String;Lcom/aviary/android/feather/library/services/PluginService$StickerType;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 1791
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 1792
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1793
    const/4 v1, 0x0

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
    .line 1773
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel$StickerThumbnailCallable;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
