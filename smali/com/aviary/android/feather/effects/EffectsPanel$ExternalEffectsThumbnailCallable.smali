.class Lcom/aviary/android/feather/effects/EffectsPanel$ExternalEffectsThumbnailCallable;
.super Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;
.source "EffectsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/EffectsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExternalEffectsThumbnailCallable"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/aviary/android/feather/library/services/ImageCacheService;Landroid/graphics/drawable/BitmapDrawable;Landroid/content/res/Resources;I)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "cacheService"    # Lcom/aviary/android/feather/library/services/ImageCacheService;
    .param p3, "folderBackground"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p4, "resources"    # Landroid/content/res/Resources;
    .param p5, "fallbackResId"    # I

    .prologue
    .line 538
    invoke-direct/range {p0 .. p5}, Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;-><init>(Ljava/lang/String;Lcom/aviary/android/feather/library/services/ImageCacheService;Landroid/graphics/drawable/BitmapDrawable;Landroid/content/res/Resources;I)V

    .line 539
    return-void
.end method


# virtual methods
.method generateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel$ExternalEffectsThumbnailCallable;->mFolder:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->flattenDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
