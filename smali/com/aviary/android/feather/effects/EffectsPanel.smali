.class public Lcom/aviary/android/feather/effects/EffectsPanel;
.super Lcom/aviary/android/feather/effects/BordersPanel;
.source "EffectsPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/effects/EffectsPanel$ExternalEffectsThumbnailCallable;,
        Lcom/aviary/android/feather/effects/EffectsPanel$FilterThumbnailCallable;,
        Lcom/aviary/android/feather/effects/EffectsPanel$EffectsListAdapter;,
        Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;
    }
.end annotation


# instance fields
.field mGLRendererListener:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;

.field private mOpenGlEnabled:Z

.field private mOpenGlView:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

.field private mSmallPreview:Landroid/graphics/Bitmap;

.field private mThumbPadding:I

.field private mThumbRoundedCorners:I

.field private mThumbStrokeColor:I

.field private mThumbStrokeWidth:I


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V
    .locals 1
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/effects/BordersPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;I)V

    .line 306
    new-instance v0, Lcom/aviary/android/feather/effects/EffectsPanel$3;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/effects/EffectsPanel$3;-><init>(Lcom/aviary/android/feather/effects/EffectsPanel;)V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mGLRendererListener:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;

    .line 71
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/effects/EffectsPanel;->checkOpenGL(Lcom/aviary/android/feather/library/services/IAviaryController;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/effects/EffectsPanel;)Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/EffectsPanel;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlView:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/effects/EffectsPanel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/EffectsPanel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/effects/EffectsPanel;->renderFirstTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/aviary/android/feather/effects/EffectsPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/EffectsPanel;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/aviary/android/feather/effects/EffectsPanel;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/EffectsPanel;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mSmallPreview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/aviary/android/feather/effects/EffectsPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/EffectsPanel;

    .prologue
    .line 51
    iget v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mThumbPadding:I

    return v0
.end method

.method static synthetic access$600(Lcom/aviary/android/feather/effects/EffectsPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/EffectsPanel;

    .prologue
    .line 51
    iget v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mThumbRoundedCorners:I

    return v0
.end method

.method static synthetic access$700(Lcom/aviary/android/feather/effects/EffectsPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/EffectsPanel;

    .prologue
    .line 51
    iget v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mThumbStrokeColor:I

    return v0
.end method

.method static synthetic access$800(Lcom/aviary/android/feather/effects/EffectsPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/EffectsPanel;

    .prologue
    .line 51
    iget v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mThumbStrokeWidth:I

    return v0
.end method

.method private checkOpenGL(Lcom/aviary/android/feather/library/services/IAviaryController;)V
    .locals 4
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    invoke-interface {p1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aviary/android/feather/headless/gl/GLUtils;->getGlEsEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/EffectsPanel;->getPluginType()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 236
    invoke-interface {p1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aviary/android/feather/headless/gl/GLUtils;->getGlEsVersion(Landroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlEnabled:Z

    .line 240
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 236
    goto :goto_0

    .line 238
    :cond_1
    iput-boolean v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlEnabled:Z

    goto :goto_1
.end method

.method private renderFirstTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 295
    new-instance v0, Lcom/aviary/android/feather/effects/EffectsPanel$2;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/effects/EffectsPanel$2;-><init>(Lcom/aviary/android/feather/effects/EffectsPanel;)V

    .line 303
    .local v0, "listener":Lcom/aviary/android/feather/library/threading/FutureListener;, "Lcom/aviary/android/feather/library/threading/FutureListener<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlView:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mPreview:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->executeEffect(Ljava/lang/String;Landroid/graphics/Bitmap;ZLcom/aviary/android/feather/library/threading/FutureListener;)Lcom/aviary/android/feather/library/threading/Future;

    .line 304
    return-void
.end method


# virtual methods
.method protected bridge synthetic createListAdapter(Landroid/content/Context;Ljava/util/List;)Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/effects/EffectsPanel;->createListAdapter(Landroid/content/Context;Ljava/util/List;)Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter(Landroid/content/Context;Ljava/util/List;)Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;",
            ">;)",
            "Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;"
        }
    .end annotation

    .prologue
    .line 172
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;>;"
    new-instance v0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsListAdapter;

    sget v3, Lcom/aviary/android/feather/R$layout;->aviary_frame_item:I

    sget v4, Lcom/aviary/android/feather/R$layout;->aviary_effect_item_more:I

    sget v5, Lcom/aviary/android/feather/R$layout;->aviary_frame_item_external:I

    sget v6, Lcom/aviary/android/feather/R$layout;->aviary_frame_item_divider:I

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsListAdapter;-><init>(Lcom/aviary/android/feather/effects/EffectsPanel;Landroid/content/Context;IIIILjava/util/List;)V

    return-object v0
.end method

.method protected createRenderTask(I)Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 181
    new-instance v0, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;

    invoke-direct {v0, p0, p1}, Lcom/aviary/android/feather/effects/EffectsPanel$EffectsRenderTask;-><init>(Lcom/aviary/android/feather/effects/EffectsPanel;I)V

    return-object v0
.end method

.method protected generateContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlEnabled:Z

    if-nez v0, :cond_0

    .line 187
    invoke-super {p0, p1}, Lcom/aviary/android/feather/effects/BordersPanel;->generateContentView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_content_effects_gl:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected getOptionalEffectsLabels()[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 260
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mConfigService:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v3, Lcom/aviary/android/feather/R$string;->feather_original:I

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/library/services/ConfigService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getOptionalEffectsValues()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 265
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string/jumbo v2, "-1"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected initContentImage(Lcom/aviary/android/feather/widget/AviaryImageSwitcher;)V
    .locals 9
    .param p1, "imageView"    # Lcom/aviary/android/feather/widget/AviaryImageSwitcher;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 203
    iget-boolean v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlEnabled:Z

    if-nez v4, :cond_2

    .line 204
    const/4 v2, 0x0

    .line 205
    .local v2, "inAnimation":Landroid/view/animation/Animation;
    const/4 v3, 0x0

    .line 206
    .local v3, "outAnimation":Landroid/view/animation/Animation;
    iget-boolean v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mEnableFastPreview:Z

    if-eqz v4, :cond_0

    .line 208
    :try_start_0
    iget-object v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mSmallPreview:Landroid/graphics/Bitmap;

    .line 209
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/EffectsPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v4

    invoke-interface {v4}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x10a0000

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 210
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/EffectsPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v4

    invoke-interface {v4}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10a0001

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 216
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mEnableFastPreview:Z

    invoke-virtual {p1, v4}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->setSwitchEnabled(Z)V

    .line 217
    invoke-virtual {p1, p0}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 219
    iget-boolean v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mEnableFastPreview:Z

    if-eqz v4, :cond_3

    .line 220
    iget-object v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4, v8}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 221
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 222
    invoke-virtual {p1, v2}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 223
    invoke-virtual {p1, v3}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 229
    :cond_1
    :goto_1
    invoke-virtual {p1, v7}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->setAnimateFirstView(Z)V

    .line 231
    .end local v2    # "inAnimation":Landroid/view/animation/Animation;
    .end local v3    # "outAnimation":Landroid/view/animation/Animation;
    :cond_2
    return-void

    .line 211
    .restart local v2    # "inAnimation":Landroid/view/animation/Animation;
    .restart local v3    # "outAnimation":Landroid/view/animation/Animation;
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    iput-boolean v7, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mEnableFastPreview:Z

    goto :goto_0

    .line 226
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_3
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/EffectsPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v4

    invoke-interface {v4}, Lcom/aviary/android/feather/library/services/IAviaryController;->getCurrentImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 227
    .local v0, "current":Landroid/graphics/Matrix;
    iget-object v4, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4, v8}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    goto :goto_1
.end method

.method protected loadNativeFilter(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;ILjava/lang/CharSequence;Z)Lcom/aviary/android/feather/headless/filters/INativeFilter;
    .locals 6
    .param p1, "pack"    # Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    .param p2, "position"    # I
    .param p3, "name"    # Ljava/lang/CharSequence;
    .param p4, "hires"    # Z

    .prologue
    .line 244
    sget-object v5, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->EFFECTS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-static {v5}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory;->get(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;)Lcom/aviary/android/feather/headless/filters/IFilter;

    move-result-object v4

    check-cast v4, Lcom/aviary/android/feather/headless/filters/impl/EffectFilter;

    .line 246
    .local v4, "filter":Lcom/aviary/android/feather/headless/filters/impl/EffectFilter;
    invoke-virtual {p1, p2}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->getItemIdAt(I)J

    move-result-wide v2

    .line 247
    .local v2, "effectId":J
    iget-object v5, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mCDSService:Lcom/aviary/android/feather/library/services/CDSService;

    invoke-virtual {v5}, Lcom/aviary/android/feather/library/services/CDSService;->opened()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mCDSService:Lcom/aviary/android/feather/library/services/CDSService;

    invoke-virtual {v5}, Lcom/aviary/android/feather/library/services/CDSService;->open()V

    .line 248
    :cond_0
    iget-object v5, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mCDSService:Lcom/aviary/android/feather/library/services/CDSService;

    invoke-virtual {v5, v2, v3}, Lcom/aviary/android/feather/library/services/CDSService;->loadEntryContent(J)[B

    move-result-object v0

    .line 249
    .local v0, "content":[B
    if-eqz v0, :cond_1

    .line 250
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 251
    .local v1, "contentString":Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/aviary/android/feather/headless/filters/impl/EffectFilter;->setMoaLiteEffectContent(Ljava/lang/String;)V

    .line 254
    .end local v1    # "contentString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, p3}, Lcom/aviary/android/feather/headless/filters/impl/EffectFilter;->setEffectName(Ljava/lang/CharSequence;)V

    .line 255
    return-object v4
.end method

.method protected loadPluginIds(Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;)Ljava/util/List;
    .locals 5
    .param p1, "plugin"    # Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    const/4 v2, 0x0

    .line 271
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v3, p1, Lcom/aviary/android/feather/library/plugins/PluginFactory$ICDSPlugin;

    if-eqz v3, :cond_0

    .line 272
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    move-object v3, p1

    .line 274
    check-cast v3, Lcom/aviary/android/feather/library/plugins/PluginFactory$ICDSPlugin;

    invoke-interface {v3, v0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ICDSPlugin;->getItemAt(I)Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;

    move-result-object v1

    .line 275
    .local v1, "item":Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;
    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;
    :cond_0
    return-object v2
.end method

.method protected loadPluginItems(Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;)Ljava/util/List;
    .locals 5
    .param p1, "plugin"    # Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 283
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    instance-of v3, p1, Lcom/aviary/android/feather/library/plugins/PluginFactory$ICDSPlugin;

    if-eqz v3, :cond_0

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    move-object v3, p1

    .line 287
    check-cast v3, Lcom/aviary/android/feather/library/plugins/PluginFactory$ICDSPlugin;

    invoke-interface {v3, v0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ICDSPlugin;->getItemAt(I)Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;

    move-result-object v1

    .line 288
    .local v1, "item":Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;
    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;
    :cond_0
    return-object v2
.end method

.method public onClosing()V
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlEnabled:Z

    if-eqz v0, :cond_0

    .line 197
    :cond_0
    invoke-super {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->onClosing()V

    .line 198
    return-void
.end method

.method public onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    invoke-super {p0, p1, p2}, Lcom/aviary/android/feather/effects/BordersPanel;->onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 78
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OpenGL enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FastPreview enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mEnableFastPreview:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mConfigService:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v1, Lcom/aviary/android/feather/R$dimen;->aviary_effect_thumb_padding:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mThumbPadding:I

    .line 82
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mConfigService:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v1, Lcom/aviary/android/feather/R$dimen;->aviary_effect_thumb_radius:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mThumbRoundedCorners:I

    .line 83
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mConfigService:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v1, Lcom/aviary/android/feather/R$dimen;->aviary_effect_thumb_stroke:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mThumbStrokeWidth:I

    .line 84
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mConfigService:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v1, Lcom/aviary/android/feather/R$color;->aviary_effect_thumb_stroke_color:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mThumbStrokeColor:I

    .line 87
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlEnabled:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/EffectsPanel;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$id;->imagegl:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlView:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    .line 89
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlView:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mGLRendererListener:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->setOnGlRendererListener(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;)V

    .line 91
    :cond_0
    return-void
.end method

.method public onDeactivate()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->onDeactivate()V

    .line 104
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlEnabled:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlView:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->setOnGlRendererListener(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;)V

    .line 106
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlView:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->setVisibility(I)V

    .line 108
    :cond_0
    return-void
.end method

.method protected onDispose()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->onDispose()V

    .line 114
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mSmallPreview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mSmallPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mSmallPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mSmallPreview:Landroid/graphics/Bitmap;

    .line 118
    return-void
.end method

.method protected onGenerateResult()V
    .locals 5

    .prologue
    .line 123
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "onGenerateResult"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 125
    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlEnabled:Z

    if-nez v1, :cond_0

    .line 126
    invoke-super {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->onGenerateResult()V

    .line 150
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mIsRendering:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    new-instance v0, Lcom/aviary/android/feather/effects/EffectsPanel$1;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/effects/EffectsPanel$1;-><init>(Lcom/aviary/android/feather/effects/EffectsPanel;)V

    .line 145
    .local v0, "listener":Lcom/aviary/android/feather/library/threading/FutureListener;, "Lcom/aviary/android/feather/library/threading/FutureListener<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlView:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->writeBitmap(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/library/threading/FutureListener;)Lcom/aviary/android/feather/library/threading/Future;

    goto :goto_0

    .line 147
    .end local v0    # "listener":Lcom/aviary/android/feather/library/threading/FutureListener;, "Lcom/aviary/android/feather/library/threading/FutureListener<Ljava/lang/Boolean;>;"
    :cond_1
    invoke-super {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->onGenerateResult()V

    goto :goto_0
.end method

.method protected onPostActivate()V
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlEnabled:Z

    if-nez v0, :cond_0

    .line 96
    invoke-super {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->onPostActivate()V

    .line 98
    :cond_0
    return-void
.end method

.method protected onProgressEnd()V
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mEnableFastPreview:Z

    if-nez v0, :cond_0

    .line 155
    invoke-super {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->onProgressModalEnd()V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-super {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->onProgressEnd()V

    goto :goto_0
.end method

.method protected onProgressStart()V
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mOpenGlEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/EffectsPanel;->mEnableFastPreview:Z

    if-nez v0, :cond_0

    .line 164
    invoke-super {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->onProgressModalStart()V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-super {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->onProgressStart()V

    goto :goto_0
.end method
