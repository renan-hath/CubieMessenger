.class Lcom/aviary/android/feather/effects/EffectsPanel$EffectsListAdapter;
.super Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;
.source "EffectsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/EffectsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EffectsListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/effects/EffectsPanel;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/EffectsPanel;Landroid/content/Context;IIIILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/EffectsPanel;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "mainResId"    # I
    .param p4, "moreResId"    # I
    .param p5, "externalResId"    # I
    .param p6, "dividerResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII",
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p7, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;>;"
    iput-object p1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsListAdapter;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    .line 414
    invoke-direct/range {p0 .. p7}, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;-><init>(Lcom/aviary/android/feather/effects/BordersPanel;Landroid/content/Context;IIIILjava/util/List;)V

    .line 415
    return-void
.end method


# virtual methods
.method protected createContentCallable(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;ILjava/lang/String;)Ljava/util/concurrent/Callable;
    .locals 8
    .param p1, "item"    # Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    .param p2, "position"    # I
    .param p3, "effectName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    new-instance v0, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsListAdapter;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    invoke-virtual {p1, p2}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->getItemIdAt(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsListAdapter;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-object v5, v4, Lcom/aviary/android/feather/effects/EffectsPanel;->mThumbBitmap:Landroid/graphics/Bitmap;

    iget v4, p1, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mStatus:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    iget-object v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsListAdapter;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-object v7, v4, Lcom/aviary/android/feather/effects/EffectsPanel;->updateArrowBitmap:Landroid/graphics/Bitmap;

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;-><init>(Lcom/aviary/android/feather/effects/EffectsPanel;JLjava/lang/String;Landroid/graphics/Bitmap;ZLandroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected createExternalContentCallable(Ljava/lang/String;)Ljava/util/concurrent/Callable;
    .locals 6
    .param p1, "iconUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    new-instance v0, Lcom/aviary/android/feather/effects/EffectsPanel$ExternalEffectsThumbnailCallable;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsListAdapter;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    iget-object v2, v1, Lcom/aviary/android/feather/effects/EffectsPanel;->mCacheService:Lcom/aviary/android/feather/library/services/ImageCacheService;

    iget-object v3, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsListAdapter;->mExternalFolderIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsListAdapter;->this$0:Lcom/aviary/android/feather/effects/EffectsPanel;

    .line 422
    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/EffectsPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/aviary/android/feather/R$drawable;->aviary_ic_na:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/aviary/android/feather/effects/EffectsPanel$ExternalEffectsThumbnailCallable;-><init>(Ljava/lang/String;Lcom/aviary/android/feather/library/services/ImageCacheService;Landroid/graphics/drawable/BitmapDrawable;Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method protected getExternalBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 433
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$drawable;->aviary_effects_pack_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method
