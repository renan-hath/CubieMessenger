.class public Lcom/aviary/android/feather/effects/StickersPanel;
.super Lcom/aviary/android/feather/effects/AbstractContentPanel;
.source "StickersPanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/aviary/android/feather/async_tasks/AsyncImageManager$OnImageLoadListener;
.implements Lcom/aviary/android/feather/effects/SimpleStatusMachine$OnStatusChangeListener;
.implements Lcom/aviary/android/feather/library/services/DragControllerService$DragListener;
.implements Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;
.implements Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;
.implements Lcom/aviary/android/feather/library/services/drag/DropTarget$DropTargetListener;
.implements Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;,
        Lcom/aviary/android/feather/effects/StickersPanel$StickerThumbnailCallable;,
        Lcom/aviary/android/feather/effects/StickersPanel$StickersAdapter;,
        Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;,
        Lcom/aviary/android/feather/effects/StickersPanel$ExternalThumbnailCallable;,
        Lcom/aviary/android/feather/effects/StickersPanel$StickerPackThumbnailCallable;,
        Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;,
        Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;
    }
.end annotation


# static fields
.field private static final STATUS_NULL:I


# instance fields
.field private mActionList:Lcom/aviary/android/feather/headless/moa/MoaActionList;

.field private mCacheService:Lcom/aviary/android/feather/library/services/ImageCacheService;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mConfigService:Lcom/aviary/android/feather/library/services/ConfigService;

.field private mCurrentFilter:Lcom/aviary/android/feather/library/filters/StickerFilter;

.field private mDragControllerService:Lcom/aviary/android/feather/library/services/DragControllerService;

.field private mExternalPacksEnabled:Z

.field private mFeaturedCount:I

.field private mFirstTimeRenderer:Z

.field private mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

.field private mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

.field private mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsAnimating:Z

.field private mListPacks:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

.field private mListStickers:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

.field private mPackCellWidth:I

.field private mPackThumbSize:I

.field private mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

.field private mPluginService:Lcom/aviary/android/feather/library/services/PluginService;

.field private mPreferenceService:Lcom/aviary/android/feather/library/services/PreferenceService;

.field private mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

.field private mStickerCellWidth:I

.field private mStickerThumbSize:I

.field private mUpdateDialog:Landroid/app/AlertDialog;

.field private mViewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    sget v0, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->INVALID_STATUS:I

    sput v0, Lcom/aviary/android/feather/effects/StickersPanel;->STATUS_NULL:I

    return-void
.end method

.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V
    .locals 0
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/effects/StickersPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/effects/StickersPanel;->onClearCurrent(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/effects/StickersPanel;)Lcom/aviary/android/feather/effects/SimpleStatusMachine;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/aviary/android/feather/effects/StickersPanel;Ljava/util/List;III)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aviary/android/feather/effects/StickersPanel;->onStickersPackListUpdated(Ljava/util/List;III)V

    return-void
.end method

.method static synthetic access$1100(Lcom/aviary/android/feather/effects/StickersPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;

    .prologue
    .line 103
    iget v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPackCellWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/aviary/android/feather/effects/StickersPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;

    .prologue
    .line 103
    iget v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPackThumbSize:I

    return v0
.end method

.method static synthetic access$1300(Lcom/aviary/android/feather/effects/StickersPanel;)Lcom/aviary/android/feather/library/services/ImageCacheService;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mCacheService:Lcom/aviary/android/feather/library/services/ImageCacheService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/aviary/android/feather/effects/StickersPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;

    .prologue
    .line 103
    iget v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStickerCellWidth:I

    return v0
.end method

.method static synthetic access$1500(Lcom/aviary/android/feather/effects/StickersPanel;)Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/aviary/android/feather/effects/StickersPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;

    .prologue
    .line 103
    iget v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStickerThumbSize:I

    return v0
.end method

.method static synthetic access$1700(Lcom/aviary/android/feather/effects/StickersPanel;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListStickers:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/aviary/android/feather/effects/StickersPanel;Landroid/widget/AdapterView;Landroid/view/View;IJZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;
    .param p1, "x1"    # Landroid/widget/AdapterView;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # I
    .param p4, "x4"    # J
    .param p6, "x5"    # Z

    .prologue
    .line 103
    invoke-direct/range {p0 .. p6}, Lcom/aviary/android/feather/effects/StickersPanel;->startDrag(Landroid/widget/AdapterView;Landroid/view/View;IJZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/aviary/android/feather/effects/StickersPanel;Ljava/lang/String;Landroid/graphics/RectF;)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/graphics/RectF;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/effects/StickersPanel;->addSticker(Ljava/lang/String;Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$200(Lcom/aviary/android/feather/effects/StickersPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->onApplyCurrent()V

    return-void
.end method

.method static synthetic access$300(Lcom/aviary/android/feather/effects/StickersPanel;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListPacks:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/aviary/android/feather/effects/StickersPanel;)Lcom/aviary/android/feather/async_tasks/AsyncImageManager;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/aviary/android/feather/effects/StickersPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mExternalPacksEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/aviary/android/feather/effects/StickersPanel;)Lcom/aviary/android/feather/library/services/PluginService;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPluginService:Lcom/aviary/android/feather/library/services/PluginService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/aviary/android/feather/effects/StickersPanel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mInstalledPackages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/aviary/android/feather/effects/StickersPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;

    .prologue
    .line 103
    iget v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mFeaturedCount:I

    return v0
.end method

.method static synthetic access$902(Lcom/aviary/android/feather/effects/StickersPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/StickersPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mIsAnimating:Z

    return p1
.end method

.method private addSticker(Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;Landroid/graphics/RectF;)V
    .locals 27
    .param p1, "drawable"    # Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;
    .param p2, "positionRect"    # Landroid/graphics/RectF;

    .prologue
    .line 996
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "addSticker: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", position: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v8, v24

    invoke-interface {v4, v8}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 998
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/effects/StickersPanel;->setIsChanged(Z)V

    .line 1000
    new-instance v3, Lcom/aviary/android/feather/widget/DrawableHighlightView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v4, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    .line 1001
    invoke-virtual {v4}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getOverlayStyleId()I

    move-result v4

    move-object/from16 v0, p1

    invoke-direct {v3, v8, v4, v0}, Lcom/aviary/android/feather/widget/DrawableHighlightView;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;ILcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;)V

    .line 1003
    .local v3, "hv":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    new-instance v4, Lcom/aviary/android/feather/effects/StickersPanel$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/aviary/android/feather/effects/StickersPanel$8;-><init>(Lcom/aviary/android/feather/effects/StickersPanel;)V

    invoke-virtual {v3, v4}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setOnDeleteClickListener(Lcom/aviary/android/feather/widget/DrawableHighlightView$OnDeleteClickListener;)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 1016
    .local v5, "mImageMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getWidth()I

    move-result v20

    .line 1017
    .local v20, "width":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getHeight()I

    move-result v13

    .line 1020
    .local v13, "height":I
    if-eqz p2, :cond_2

    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v11, v4

    .line 1022
    .local v11, "cropWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v9, v4

    .line 1028
    .local v9, "cropHeight":I
    :goto_0
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1029
    .local v10, "cropSize":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v8}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getHeight()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 1031
    .local v18, "screenSize":I
    move/from16 v0, v18

    if-le v10, v0, :cond_1

    .line 1033
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getWidth()I

    move-result v4

    int-to-float v4, v4

    int-to-float v8, v11

    div-float v21, v4, v8

    .line 1034
    .local v21, "widthRatio":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getHeight()I

    move-result v4

    int-to-float v4, v4

    int-to-float v8, v9

    div-float v14, v4, v8

    .line 1036
    .local v14, "heightRatio":F
    cmpg-float v4, v21, v14

    if-gez v4, :cond_3

    .line 1037
    move/from16 v17, v21

    .line 1042
    .local v17, "ratio":F
    :goto_1
    int-to-float v4, v11

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v17, v8

    mul-float/2addr v4, v8

    float-to-int v11, v4

    .line 1043
    int-to-float v4, v9

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v17, v8

    mul-float/2addr v4, v8

    float-to-int v9, v4

    .line 1045
    if-nez p2, :cond_0

    .line 1046
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getWidth()I

    move-result v19

    .line 1047
    .local v19, "w":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getHeight()I

    move-result v12

    .line 1048
    .local v12, "h":I
    new-instance p2, Landroid/graphics/RectF;

    .end local p2    # "positionRect":Landroid/graphics/RectF;
    div-int/lit8 v4, v19, 0x2

    div-int/lit8 v8, v11, 0x2

    sub-int/2addr v4, v8

    int-to-float v4, v4

    div-int/lit8 v8, v12, 0x2

    div-int/lit8 v24, v9, 0x2

    sub-int v8, v8, v24

    int-to-float v8, v8

    div-int/lit8 v24, v19, 0x2

    div-int/lit8 v25, v11, 0x2

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-int/lit8 v25, v12, 0x2

    div-int/lit8 v26, v9, 0x2

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v4, v8, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1052
    .end local v12    # "h":I
    .end local v19    # "w":I
    .restart local p2    # "positionRect":Landroid/graphics/RectF;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v8, v11

    sub-float/2addr v4, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v8

    int-to-float v0, v9

    move/from16 v24, v0

    sub-float v8, v8, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v8, v8, v24

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 1055
    .end local v14    # "heightRatio":F
    .end local v17    # "ratio":F
    .end local v21    # "widthRatio":F
    :cond_1
    if-eqz p2, :cond_4

    .line 1056
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v4

    move/from16 v22, v0

    .line 1057
    .local v22, "x":I
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v4

    move/from16 v23, v0

    .line 1063
    .local v23, "y":I
    :goto_2
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 1064
    .local v15, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v15, v15}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1066
    const/4 v4, 0x4

    new-array v0, v4, [F

    move-object/from16 v16, v0

    const/4 v4, 0x0

    move/from16 v0, v22

    int-to-float v8, v0

    aput v8, v16, v4

    const/4 v4, 0x1

    move/from16 v0, v23

    int-to-float v8, v0

    aput v8, v16, v4

    const/4 v4, 0x2

    add-int v8, v22, v11

    int-to-float v8, v8

    aput v8, v16, v4

    const/4 v4, 0x3

    add-int v8, v23, v9

    int-to-float v8, v8

    aput v8, v16, v4

    .line 1067
    .local v16, "pts":[F
    invoke-static/range {v15 .. v16}, Lcom/aviary/android/feather/library/utils/MatrixUtils;->mapPoints(Landroid/graphics/Matrix;[F)V

    .line 1069
    new-instance v7, Landroid/graphics/RectF;

    const/4 v4, 0x0

    aget v4, v16, v4

    const/4 v8, 0x1

    aget v8, v16, v8

    const/16 v24, 0x2

    aget v24, v16, v24

    const/16 v25, 0x3

    aget v25, v16, v25

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v7, v4, v8, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1070
    .local v7, "cropRect":Landroid/graphics/RectF;
    new-instance v6, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move/from16 v0, v20

    invoke-direct {v6, v4, v8, v0, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1073
    .local v6, "imageRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v4

    invoke-interface {v4}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setup(Landroid/content/Context;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v4, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v4, v3}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->addHighlightView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)Z

    .line 1076
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v4, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v4, v3}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->setSelectedHighlightView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)V

    .line 1077
    return-void

    .line 1024
    .end local v6    # "imageRect":Landroid/graphics/Rect;
    .end local v7    # "cropRect":Landroid/graphics/RectF;
    .end local v9    # "cropHeight":I
    .end local v10    # "cropSize":I
    .end local v11    # "cropWidth":I
    .end local v15    # "matrix":Landroid/graphics/Matrix;
    .end local v16    # "pts":[F
    .end local v18    # "screenSize":I
    .end local v22    # "x":I
    .end local v23    # "y":I
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;->getCurrentWidth()F

    move-result v4

    float-to-int v11, v4

    .line 1025
    .restart local v11    # "cropWidth":I
    invoke-interface/range {p1 .. p1}, Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;->getCurrentHeight()F

    move-result v4

    float-to-int v9, v4

    .restart local v9    # "cropHeight":I
    goto/16 :goto_0

    .line 1039
    .restart local v10    # "cropSize":I
    .restart local v14    # "heightRatio":F
    .restart local v18    # "screenSize":I
    .restart local v21    # "widthRatio":F
    :cond_3
    move/from16 v17, v14

    .restart local v17    # "ratio":F
    goto/16 :goto_1

    .line 1059
    .end local v14    # "heightRatio":F
    .end local v17    # "ratio":F
    .end local v21    # "widthRatio":F
    :cond_4
    sub-int v4, v20, v11

    div-int/lit8 v22, v4, 0x2

    .line 1060
    .restart local v22    # "x":I
    sub-int v4, v13, v9

    div-int/lit8 v23, v4, 0x2

    .restart local v23    # "y":I
    goto :goto_2
.end method

.method private addSticker(Ljava/lang/String;Landroid/graphics/RectF;)V
    .locals 12
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "position"    # Landroid/graphics/RectF;

    .prologue
    const/4 v11, 0x0

    const v10, 0x104000a

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 938
    iget-object v6, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    instance-of v6, v6, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;

    if-nez v6, :cond_1

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    iget-object v3, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    check-cast v3, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;

    .line 944
    .local v3, "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->onApplyCurrent()V

    .line 946
    const/4 v5, 0x0

    .line 949
    .local v5, "stream":Ljava/io/InputStream;
    :try_start_0
    sget-object v6, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->Small:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    invoke-virtual {v3, p1, v6}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->getStickerStream(Ljava/lang/String;Lcom/aviary/android/feather/library/services/PluginService$StickerType;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 956
    if-eqz v5, :cond_0

    .line 957
    new-instance v0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;

    invoke-virtual {v3}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v3}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->getPackageLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v5, p1, v7}, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    .local v0, "d":Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;
    invoke-virtual {v0, v8}, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->setAntiAlias(Z)V

    .line 960
    invoke-static {v5}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 963
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v6

    invoke-interface {v6}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    invoke-interface {v7}, Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 964
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_3

    .line 965
    invoke-virtual {v3}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->getSourceDir()Ljava/lang/String;

    move-result-object v4

    .line 967
    .local v4, "sourceDir":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 968
    const-string/jumbo v4, ""

    .line 969
    iget-object v6, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v7, v8, [Ljava/lang/Object;

    const-string/jumbo v8, "Cannot find the source dir"

    aput-object v8, v7, v9

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 972
    :cond_2
    new-instance v6, Lcom/aviary/android/feather/library/filters/StickerFilter;

    invoke-direct {v6, v4, p1}, Lcom/aviary/android/feather/library/filters/StickerFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/StickerFilter;

    .line 973
    iget-object v6, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/StickerFilter;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->getBitmapWidth()I

    move-result v7

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->getBitmapHeight()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/aviary/android/feather/library/filters/StickerFilter;->setSize(II)V

    .line 974
    iget-object v6, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/StickerFilter;

    invoke-virtual {v6, v9}, Lcom/aviary/android/feather/library/filters/StickerFilter;->setExternal(I)V

    .line 976
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": Selected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 978
    invoke-direct {p0, v0, p2}, Lcom/aviary/android/feather/effects/StickersPanel;->addSticker(Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    .line 950
    .end local v0    # "d":Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "sourceDir":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 951
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 952
    const-string/jumbo v6, "Failed to load the selected sticker"

    invoke-virtual {p0, v6, v10, v11}, Lcom/aviary/android/feather/effects/StickersPanel;->onGenericError(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 981
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "d":Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    const-string/jumbo v6, "Sorry I\'m not able to load the selected sticker"

    invoke-virtual {p0, v6, v10, v11}, Lcom/aviary/android/feather/effects/StickersPanel;->onGenericError(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private createAndConfigurePreview()V
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPreview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 846
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPreview:Landroid/graphics/Bitmap;

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->copy(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPreview:Landroid/graphics/Bitmap;

    .line 850
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPreview:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mCanvas:Landroid/graphics/Canvas;

    .line 851
    return-void
.end method

.method private final createIAPDialog(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)V
    .locals 4
    .param p1, "data"    # Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    .prologue
    const/4 v3, 0x0

    .line 873
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    if-eqz v2, :cond_1

    .line 874
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/IAPDialog;->valid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 875
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    invoke-virtual {v2, p1}, Lcom/aviary/android/feather/widget/IAPDialog;->update(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)V

    .line 876
    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/effects/StickersPanel;->setApplyEnabled(Z)V

    .line 897
    :goto_0
    return-void

    .line 879
    :cond_0
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/widget/IAPDialog;->dismiss(Z)V

    .line 880
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    .line 884
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    invoke-interface {v2}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->activatePopupContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 885
    .local v0, "container":Landroid/view/ViewGroup;
    invoke-static {v0, p1}, Lcom/aviary/android/feather/widget/IAPDialog;->create(Landroid/view/ViewGroup;Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)Lcom/aviary/android/feather/widget/IAPDialog;

    move-result-object v1

    .line 886
    .local v1, "dialog":Lcom/aviary/android/feather/widget/IAPDialog;
    if-eqz v1, :cond_2

    .line 887
    new-instance v2, Lcom/aviary/android/feather/effects/StickersPanel$7;

    invoke-direct {v2, p0}, Lcom/aviary/android/feather/effects/StickersPanel$7;-><init>(Lcom/aviary/android/feather/effects/StickersPanel;)V

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/IAPDialog;->setOnCloseListener(Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;)V

    .line 895
    :cond_2
    iput-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    .line 896
    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/effects/StickersPanel;->setApplyEnabled(Z)V

    goto :goto_0
.end method

.method private onApplyCurrent()V
    .locals 21

    .prologue
    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "onApplyCurrent"

    aput-object v20, v18, v19

    invoke-interface/range {v17 .. v18}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1087
    invoke-direct/range {p0 .. p0}, Lcom/aviary/android/feather/effects/StickersPanel;->stickersOnScreen()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1138
    :goto_0
    return-void

    .line 1089
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    move-object/from16 v17, v0

    check-cast v17, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getHighlightViewAt(I)Lcom/aviary/android/feather/widget/DrawableHighlightView;

    move-result-object v8

    .line 1091
    .local v8, "hv":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    if-eqz v8, :cond_2

    .line 1093
    invoke-virtual {v8}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v15

    check-cast v15, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;

    .line 1095
    .local v15, "stickerDrawable":Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;
    invoke-virtual {v8}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getCropRectF()Landroid/graphics/RectF;

    move-result-object v4

    .line 1096
    .local v4, "cropRect":Landroid/graphics/RectF;
    new-instance v10, Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1098
    .local v10, "rect":Landroid/graphics/Rect;
    invoke-virtual {v8}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getCropRotationMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    .line 1099
    .local v11, "rotateMatrix":Landroid/graphics/Matrix;
    new-instance v9, Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 1100
    .local v9, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v9, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1103
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Canvas;->save(I)I

    move-result v12

    .line 1104
    .local v12, "saveCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1106
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->setDropShadow(Z)V

    .line 1107
    invoke-virtual {v8}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1108
    invoke-virtual {v8}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate()V

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/StickerFilter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 1114
    .local v16, "w":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1116
    .local v7, "h":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/StickerFilter;

    move-object/from16 v17, v0

    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/aviary/android/feather/library/filters/StickerFilter;->setTopLeft(FF)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/StickerFilter;

    move-object/from16 v17, v0

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/aviary/android/feather/library/filters/StickerFilter;->setBottomRight(FF)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/StickerFilter;

    move-object/from16 v17, v0

    invoke-virtual {v8}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getRotation()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lcom/aviary/android/feather/library/filters/StickerFilter;->setRotation(D)V

    .line 1120
    invoke-virtual {v15}, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->getBitmapWidth()I

    move-result v6

    .line 1121
    .local v6, "dw":I
    invoke-virtual {v15}, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->getBitmapHeight()I

    move-result v5

    .line 1122
    .local v5, "dh":I
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v17

    int-to-float v0, v6

    move/from16 v18, v0

    div-float v14, v17, v18

    .line 1123
    .local v14, "scalew":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v17

    int-to-float v0, v5

    move/from16 v18, v0

    div-float v13, v17, v18

    .line 1125
    .local v13, "scaleh":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/StickerFilter;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v19

    int-to-float v0, v7

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/aviary/android/feather/library/filters/StickerFilter;->setCenter(FF)V

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/StickerFilter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v13}, Lcom/aviary/android/feather/library/filters/StickerFilter;->setScale(FF)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mActionList:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/StickerFilter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/aviary/android/feather/library/filters/StickerFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->add(Lcom/aviary/android/feather/headless/moa/MoaAction;)Z

    .line 1130
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->getPackLabel()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ": Applied"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 1132
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aviary/android/feather/effects/StickersPanel;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/StickerFilter;

    .line 1136
    .end local v4    # "cropRect":Landroid/graphics/RectF;
    .end local v5    # "dh":I
    .end local v6    # "dw":I
    .end local v7    # "h":I
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "rect":Landroid/graphics/Rect;
    .end local v11    # "rotateMatrix":Landroid/graphics/Matrix;
    .end local v12    # "saveCount":I
    .end local v13    # "scaleh":F
    .end local v14    # "scalew":F
    .end local v15    # "stickerDrawable":Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;
    .end local v16    # "w":I
    :cond_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/aviary/android/feather/effects/StickersPanel;->onClearCurrent(Z)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mPreview:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/aviary/android/feather/effects/StickersPanel;->onPreviewChanged(Landroid/graphics/Bitmap;ZZ)V

    goto/16 :goto_0
.end method

.method private onClearCurrent(Lcom/aviary/android/feather/widget/DrawableHighlightView;Z)V
    .locals 9
    .param p1, "hv"    # Lcom/aviary/android/feather/widget/DrawableHighlightView;
    .param p2, "removed"    # Z

    .prologue
    const/4 v8, 0x0

    .line 1167
    iget-object v3, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onClearCurrent. hv="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", removed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1169
    iget-object v3, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/StickerFilter;

    if-eqz v3, :cond_0

    .line 1170
    iput-object v8, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/StickerFilter;

    .line 1173
    :cond_0
    if-eqz p1, :cond_1

    .line 1174
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->getContent()Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;

    move-result-object v0

    .line 1176
    .local v0, "content":Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;
    if-eqz p2, :cond_1

    .line 1177
    instance-of v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 1178
    check-cast v3, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;

    invoke-virtual {v3}, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->getStickerName()Ljava/lang/String;

    move-result-object v1

    .line 1179
    .local v1, "name":Ljava/lang/String;
    check-cast v0, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;

    .end local v0    # "content":Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;
    invoke-virtual {v0}, Lcom/aviary/android/feather/library/graphics/drawable/StickerDrawable;->getPackLabel()Ljava/lang/String;

    move-result-object v2

    .line 1181
    .local v2, "packname":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Cancelled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 1182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Cancelled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 1188
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "packname":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v8}, Lcom/aviary/android/feather/widget/DrawableHighlightView;->setOnDeleteClickListener(Lcom/aviary/android/feather/widget/DrawableHighlightView$OnDeleteClickListener;)V

    .line 1189
    iget-object v3, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v3, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v3, p1}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->removeHightlightView(Lcom/aviary/android/feather/widget/DrawableHighlightView;)Z

    .line 1190
    iget-object v3, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v3, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->invalidate()V

    .line 1191
    return-void
.end method

.method private onClearCurrent(Z)V
    .locals 7
    .param p1, "removed"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1148
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onClearCurrent. removed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1150
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->stickersOnScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1151
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v1, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    .line 1152
    .local v1, "image":Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;
    invoke-virtual {v1, v6}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getHighlightViewAt(I)Lcom/aviary/android/feather/widget/DrawableHighlightView;

    move-result-object v0

    .line 1153
    .local v0, "hv":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    invoke-direct {p0, v0, p1}, Lcom/aviary/android/feather/effects/StickersPanel;->onClearCurrent(Lcom/aviary/android/feather/widget/DrawableHighlightView;Z)V

    .line 1155
    .end local v0    # "hv":Lcom/aviary/android/feather/widget/DrawableHighlightView;
    .end local v1    # "image":Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;
    :cond_0
    return-void
.end method

.method private onStickersPackListUpdated(Ljava/util/List;III)V
    .locals 10
    .param p2, "installedCount"    # I
    .param p3, "externalCount"    # I
    .param p4, "firstIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 1209
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;>;"
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStickersPackListUpdated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1211
    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mExternalPacksEnabled:Z

    if-eqz v1, :cond_3

    .line 1213
    new-instance v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/aviary/android/feather/R$layout;->aviary_sticker_item:I

    sget v4, Lcom/aviary/android/feather/R$layout;->aviary_frame_item_external:I

    sget v5, Lcom/aviary/android/feather/R$layout;->aviary_sticker_item_more:I

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;-><init>(Lcom/aviary/android/feather/effects/StickersPanel;Landroid/content/Context;IIILjava/util/List;)V

    .line 1215
    .local v0, "adapter":Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListPacks:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1218
    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mExternalPacksEnabled:Z

    if-eqz v1, :cond_0

    if-lez p3, :cond_0

    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mFirstTimeRenderer:Z

    if-nez v1, :cond_0

    const/4 v1, 0x2

    if-le p4, v1, :cond_0

    .line 1220
    iget v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPackCellWidth:I

    int-to-double v1, v1

    int-to-double v3, p4

    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    double-to-int v7, v1

    .line 1221
    .local v7, "delta":I
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListPacks:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    new-instance v2, Lcom/aviary/android/feather/effects/StickersPanel$9;

    invoke-direct {v2, p0, v7}, Lcom/aviary/android/feather/effects/StickersPanel$9;-><init>(Lcom/aviary/android/feather/effects/StickersPanel;I)V

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->post(Ljava/lang/Runnable;)Z

    .line 1235
    .end local v7    # "delta":I
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mFirstTimeRenderer:Z

    .line 1237
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1238
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 1241
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mExternalPacksEnabled:Z

    if-eqz v1, :cond_2

    .line 1244
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPreferenceService:Lcom/aviary/android/feather/library/services/PreferenceService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-install-first-time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/library/services/PreferenceService;->containsValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1246
    new-instance v9, Lcom/aviary/android/feather/effects/StickersPanel$10;

    invoke-direct {v9, p0}, Lcom/aviary/android/feather/effects/StickersPanel$10;-><init>(Lcom/aviary/android/feather/effects/StickersPanel;)V

    .line 1257
    .local v9, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/aviary/android/feather/R$string;->feather_stickers_dialog_first_time:I

    .line 1258
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    .line 1259
    invoke-virtual {v1, v2, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1260
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 1262
    .local v8, "dialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPreferenceService:Lcom/aviary/android/feather/library/services/PreferenceService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-install-first-time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/aviary/android/feather/library/services/PreferenceService;->putBoolean(Ljava/lang/String;Z)Z

    .line 1264
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 1273
    .end local v0    # "adapter":Lcom/aviary/android/feather/effects/StickersPanel$StickerPacksAdapter;
    .end local v8    # "dialog":Landroid/app/AlertDialog;
    .end local v9    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :cond_2
    :goto_0
    return-void

    .line 1268
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1269
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;->mPluginRef:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    check-cast v1, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    .line 1270
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->setStatus(I)V

    goto :goto_0
.end method

.method private removeIAPDialog()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 900
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/effects/StickersPanel;->setApplyEnabled(Z)V

    .line 901
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    if-eqz v1, :cond_0

    .line 902
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/widget/IAPDialog;->dismiss(Z)V

    .line 903
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    .line 906
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startDrag(Landroid/widget/AdapterView;Landroid/view/View;IJZ)Z
    .locals 16
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .param p6, "animate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJZ)Z"
        }
    .end annotation

    .prologue
    .line 685
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "startDrag"

    aput-object v9, v6, v8

    invoke-interface {v1, v6}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 687
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-ge v1, v6, :cond_0

    const/4 v1, 0x0

    .line 720
    :goto_0
    return v1

    .line 689
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 690
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 693
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->getCurrentStatus()I

    move-result v1

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 694
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    instance-of v1, v1, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 696
    :cond_5
    if-eqz p2, :cond_6

    .line 697
    sget v1, Lcom/aviary/android/feather/R$id;->image:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 698
    .local v2, "image":Landroid/view/View;
    if-eqz v2, :cond_6

    .line 699
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    move/from16 v0, p3

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 701
    .local v7, "dragInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mStickerThumbSize:I

    .line 704
    .local v15, "size":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    check-cast v1, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;

    sget-object v6, Lcom/aviary/android/feather/library/services/PluginService$StickerType;->Small:Lcom/aviary/android/feather/library/services/PluginService$StickerType;

    invoke-static {v1, v7, v6, v15, v15}, Lcom/aviary/android/feather/library/utils/ImageLoader;->getPluginItemBitmap(Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;Ljava/lang/String;Lcom/aviary/android/feather/library/services/PluginService$StickerType;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 705
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v4, v1, 0x2

    .line 706
    .local v4, "offsetx":I
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v5, v1, 0x2

    .line 708
    .local v5, "offsety":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "bitmap: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", is recycled? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-interface {v1, v6}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getDragController()Lcom/aviary/android/feather/library/services/DragControllerService;

    move-result-object v1

    sget v8, Lcom/aviary/android/feather/library/services/DragControllerService;->DRAG_ACTION_MOVE:I

    move-object/from16 v6, p0

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/aviary/android/feather/library/services/DragControllerService;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;IILcom/aviary/android/feather/library/services/DragControllerService$DragSource;Ljava/lang/Object;IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto/16 :goto_0

    .line 712
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "offsetx":I
    .end local v5    # "offsety":I
    :catch_0
    move-exception v14

    .line 713
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getDragController()Lcom/aviary/android/feather/library/services/DragControllerService;

    move-result-object v8

    sget v12, Lcom/aviary/android/feather/library/services/DragControllerService;->DRAG_ACTION_MOVE:I

    move-object v9, v2

    move-object/from16 v10, p0

    move-object v11, v7

    move/from16 v13, p6

    invoke-virtual/range {v8 .. v13}, Lcom/aviary/android/feather/library/services/DragControllerService;->startDrag(Landroid/view/View;Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;Ljava/lang/Object;IZ)Z

    move-result v1

    goto/16 :goto_0

    .line 720
    .end local v2    # "image":Landroid/view/View;
    .end local v7    # "dragInfo":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v15    # "size":I
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private stickersOnScreen()Z
    .locals 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    .line 1200
    .local v0, "image":Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;
    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->getHighlightCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private validDelta(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 795
    if-eqz p1, :cond_1

    .line 796
    const-string/jumbo v4, "delta"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 799
    :try_start_0
    const-string/jumbo v4, "delta"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 800
    .local v2, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/UpdateType;>;"
    if-eqz v2, :cond_1

    .line 801
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/plugins/UpdateType;

    .line 803
    .local v1, "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    invoke-virtual {v1}, Lcom/aviary/android/feather/library/plugins/UpdateType;->getPluginType()I

    move-result v5

    invoke-static {v5}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isSticker(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 821
    .end local v1    # "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    .end local v2    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/UpdateType;>;"
    :cond_1
    :goto_0
    return v3

    .line 807
    .restart local v1    # "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    .restart local v2    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/UpdateType;>;"
    :cond_2
    const-string/jumbo v5, "aviary.android.intent.ACTION_PLUGIN_REMOVED"

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/plugins/UpdateType;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 809
    iget-object v5, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mInstalledPackages:Ljava/util/List;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/plugins/UpdateType;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 814
    .end local v1    # "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 816
    .end local v2    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/UpdateType;>;"
    :catch_0
    move-exception v0

    .line 817
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method


# virtual methods
.method public OnStatusChanged(II)V
    .locals 8
    .param p1, "oldStatus"    # I
    .param p2, "newStatus"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 426
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OnStatusChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 428
    packed-switch p2, :pswitch_data_0

    .line 474
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unmanaged status change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 432
    :pswitch_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListStickers:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0, v5}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOnItemClickedListener(Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;)V

    .line 433
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListStickers:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0, v5}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOnItemDragListener(Lit/sephiroth/android/library/widget/HorizontalListView$OnItemDragListener;)V

    .line 435
    sget v0, Lcom/aviary/android/feather/effects/StickersPanel;->STATUS_NULL:I

    if-ne p1, v0, :cond_1

    .line 436
    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/effects/StickersPanel;->updateInstalledPacks(Z)V

    goto :goto_0

    .line 437
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 439
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->restoreToolbarTitle()V

    .line 441
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getDragController()Lcom/aviary/android/feather/library/services/DragControllerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getDragController()Lcom/aviary/android/feather/library/services/DragControllerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/DragControllerService;->deactivate()V

    goto :goto_0

    .line 445
    :cond_2
    if-ne p1, v7, :cond_0

    .line 447
    iput-object v5, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    .line 448
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->removeIAPDialog()Z

    goto :goto_0

    .line 453
    :pswitch_1
    if-ne p1, v4, :cond_4

    .line 454
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->loadStickers()V

    .line 462
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    invoke-interface {v0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;->getPackageLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/effects/StickersPanel;->setToolbarTitle(Ljava/lang/CharSequence;)V

    .line 464
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getDragController()Lcom/aviary/android/feather/library/services/DragControllerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getDragController()Lcom/aviary/android/feather/library/services/DragControllerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/DragControllerService;->activate()V

    goto :goto_0

    .line 455
    :cond_4
    if-ne p1, v7, :cond_5

    .line 456
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->removeIAPDialog()Z

    .line 457
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->loadStickers()V

    goto :goto_1

    .line 458
    :cond_5
    sget v0, Lcom/aviary/android/feather/effects/StickersPanel;->STATUS_NULL:I

    if-ne p1, v0, :cond_3

    .line 459
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->loadStickers()V

    goto :goto_1

    .line 470
    :pswitch_2
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->showIAPDialog()V

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public OnStatusUpdated(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    .line 481
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OnStatusUpdated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 482
    packed-switch p1, :pswitch_data_0

    .line 487
    :goto_0
    return-void

    .line 484
    :pswitch_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->showIAPDialog()V

    goto :goto_0

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public acceptDrop(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "source"    # Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I
    .param p6, "dragView"    # Lcom/aviary/android/feather/library/services/drag/DragView;
    .param p7, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 754
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method askToLeaveWithoutApply()V
    .locals 3

    .prologue
    .line 828
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/aviary/android/feather/R$string;->feather_attention:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$string;->feather_tool_leave_question:I

    .line 829
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/aviary/android/feather/effects/StickersPanel$6;

    invoke-direct {v2, p0}, Lcom/aviary/android/feather/effects/StickersPanel$6;-><init>(Lcom/aviary/android/feather/effects/StickersPanel;)V

    .line 830
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    .line 836
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 837
    return-void
.end method

.method protected generateContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 400
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_content_stickers:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected generateOptionView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 405
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_panel_stickers:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getDragController()Lcom/aviary/android/feather/library/services/DragControllerService;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mDragControllerService:Lcom/aviary/android/feather/library/services/DragControllerService;

    return-object v0
.end method

.method protected loadStickers()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 914
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "loadStickers"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 916
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 917
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v5}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 920
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    instance-of v1, v1, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;

    if-nez v1, :cond_2

    .line 922
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    check-cast v1, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$StickerPlugin;->listStickers()[Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, "list":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;

    invoke-direct {v2, p0, v0}, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;-><init>(Lcom/aviary/android/feather/effects/StickersPanel;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 928
    .end local v0    # "list":[Ljava/lang/String;
    :goto_0
    return-void

    .line 926
    :cond_2
    const-string/jumbo v1, "Sorry, there was an error opening the pack"

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/aviary/android/feather/effects/StickersPanel;->onGenericError(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public onActivate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 230
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onActivate()V

    .line 233
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getCurrentImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 234
    .local v0, "current":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPreview:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v1, v2, v3, v4, v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V

    .line 236
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mConfigService:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v2, Lcom/aviary/android/feather/R$dimen;->aviary_sticker_pack_width:I

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/library/services/ConfigService;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPackCellWidth:I

    .line 237
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mConfigService:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v2, Lcom/aviary/android/feather/R$dimen;->aviary_sticker_pack_image_width:I

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/library/services/ConfigService;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPackThumbSize:I

    .line 238
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mConfigService:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v2, Lcom/aviary/android/feather/R$dimen;->aviary_sticker_single_item_width:I

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/library/services/ConfigService;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStickerCellWidth:I

    .line 239
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mConfigService:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v2, Lcom/aviary/android/feather/R$dimen;->aviary_sticker_single_item_image_width:I

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/library/services/ConfigService;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStickerThumbSize:I

    .line 241
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    invoke-virtual {v1, p0}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->setOnLoadCompleteListener(Lcom/aviary/android/feather/async_tasks/AsyncImageManager$OnImageLoadListener;)V

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mInstalledPackages:Ljava/util/List;

    .line 245
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListPacks:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v1, p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOnItemClickedListener(Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;)V

    .line 246
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListPacks:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v1, p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 249
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v1, p0}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->setOnStatusChangeListener(Lcom/aviary/android/feather/effects/SimpleStatusMachine$OnStatusChangeListener;)V

    .line 251
    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mExternalPacksEnabled:Z

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPluginService:Lcom/aviary/android/feather/library/services/PluginService;

    invoke-virtual {v1, p0}, Lcom/aviary/android/feather/library/services/PluginService;->registerOnUpdateListener(Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;)V

    .line 253
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v1, v6}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->setStatus(I)V

    .line 258
    :goto_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContentView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 259
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->contentReady()V

    .line 260
    return-void

    .line 255
    :cond_0
    invoke-virtual {p0, v6}, Lcom/aviary/android/feather/effects/StickersPanel;->updateInstalledPacks(Z)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 265
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v0, [Ljava/lang/Object;

    const-string/jumbo v4, "onBackPressed"

    aput-object v4, v3, v1

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 267
    iget-boolean v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mIsAnimating:Z

    if-eqz v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v2}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->getCurrentStatus()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 270
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->setStatus(I)V

    .line 271
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListPacks:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setSelectedPosition(IZ)V

    goto :goto_0

    .line 276
    :cond_2
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v2}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->getCurrentStatus()I

    move-result v2

    if-ne v2, v0, :cond_4

    .line 277
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->stickersOnScreen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->askToLeaveWithoutApply()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 281
    goto :goto_0

    .line 285
    :cond_4
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v2}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->getCurrentStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 286
    iget-boolean v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mExternalPacksEnabled:Z

    if-eqz v2, :cond_5

    .line 287
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->setStatus(I)V

    .line 288
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    if-eqz v1, :cond_0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    invoke-interface {v2}, Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;->getPackageLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Cancelled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    goto :goto_0

    .line 294
    :cond_5
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->stickersOnScreen()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 295
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->askToLeaveWithoutApply()V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 298
    goto :goto_0

    .line 302
    :cond_7
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onCancel()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 308
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "onCancel"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 313
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->stickersOnScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->askToLeaveWithoutApply()V

    .line 318
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onCancel()Z

    move-result v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "oldConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x1

    .line 380
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onConfigurationChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 382
    invoke-super {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 384
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    invoke-virtual {v0}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->clearCache()V

    .line 386
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->getCurrentStatus()I

    move-result v0

    sget v1, Lcom/aviary/android/feather/effects/StickersPanel;->STATUS_NULL:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->getCurrentStatus()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->getCurrentStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->getCurrentStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/widget/IAPDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 174
    invoke-super {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 176
    new-instance v2, Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-direct {v2}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;-><init>()V

    iput-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    .line 180
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Lcom/aviary/android/feather/R$id;->aviary_list_packs:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    iput-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListPacks:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    .line 181
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Lcom/aviary/android/feather/R$id;->aviary_list_stickers:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    iput-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListStickers:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    .line 182
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Lcom/aviary/android/feather/R$id;->aviary_flipper:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 183
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContentView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/aviary/android/feather/R$id;->aviary_overlay:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    iput-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .line 186
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    const-class v3, Lcom/aviary/android/feather/library/services/PluginService;

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/library/services/PluginService;

    iput-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPluginService:Lcom/aviary/android/feather/library/services/PluginService;

    .line 187
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    const-class v3, Lcom/aviary/android/feather/library/services/ConfigService;

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/library/services/ConfigService;

    iput-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mConfigService:Lcom/aviary/android/feather/library/services/ConfigService;

    .line 188
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    const-class v3, Lcom/aviary/android/feather/library/services/PreferenceService;

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/library/services/PreferenceService;

    iput-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPreferenceService:Lcom/aviary/android/feather/library/services/PreferenceService;

    .line 189
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    const-class v3, Lcom/aviary/android/feather/library/services/ImageCacheService;

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/library/services/ImageCacheService;

    iput-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mCacheService:Lcom/aviary/android/feather/library/services/ImageCacheService;

    .line 191
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    const-class v3, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 193
    .local v0, "dataService":Lcom/aviary/android/feather/library/services/LocalDataService;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/library/services/LocalDataService;->getExternalPacksEnabled(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mExternalPacksEnabled:Z

    .line 199
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListPacks:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v2, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOverScrollMode(I)V

    .line 202
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListStickers:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v2, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOverScrollMode(I)V

    .line 205
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v2, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    sget-object v3, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->setDisplayType(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)V

    .line 206
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v2, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v2, v4}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->setForceSingleSelection(Z)V

    .line 207
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v2, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v2, p0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->setDropTargetListener(Lcom/aviary/android/feather/library/services/drag/DropTarget$DropTargetListener;)V

    .line 208
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v2, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->setScaleWithContent(Z)V

    .line 211
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/MoaActionFactory;->actionList()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v2

    iput-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mActionList:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 213
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mConfigService:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v3, Lcom/aviary/android/feather/R$integer;->aviary_featured_packs_count:I

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/library/services/ConfigService;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mFeaturedCount:I

    .line 215
    new-instance v2, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    invoke-direct {v2}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;-><init>()V

    iput-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    .line 218
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->createAndConfigurePreview()V

    .line 220
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    const-class v3, Lcom/aviary/android/feather/library/services/DragControllerService;

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/services/DragControllerService;

    .line 221
    .local v1, "dragger":Lcom/aviary/android/feather/library/services/DragControllerService;
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v2, Lcom/aviary/android/feather/library/services/drag/DropTarget;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/library/services/DragControllerService;->addDropTarget(Lcom/aviary/android/feather/library/services/drag/DropTarget;)V

    .line 222
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/library/services/DragControllerService;->setMoveTarget(Landroid/view/View;)V

    .line 223
    invoke-virtual {v1, p0}, Lcom/aviary/android/feather/library/services/DragControllerService;->setDragListener(Lcom/aviary/android/feather/library/services/DragControllerService$DragListener;)V

    .line 225
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/effects/StickersPanel;->setDragController(Lcom/aviary/android/feather/library/services/DragControllerService;)V

    .line 226
    return-void
.end method

.method public onDeactivate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 323
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDeactivate()V

    .line 325
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->setOnLoadCompleteListener(Lcom/aviary/android/feather/async_tasks/AsyncImageManager$OnImageLoadListener;)V

    .line 328
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getDragController()Lcom/aviary/android/feather/library/services/DragControllerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getDragController()Lcom/aviary/android/feather/library/services/DragControllerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/DragControllerService;->deactivate()V

    .line 330
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getDragController()Lcom/aviary/android/feather/library/services/DragControllerService;

    move-result-object v1

    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/library/services/drag/DropTarget;

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/library/services/DragControllerService;->removeDropTarget(Lcom/aviary/android/feather/library/services/drag/DropTarget;)V

    .line 331
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getDragController()Lcom/aviary/android/feather/library/services/DragControllerService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/library/services/DragControllerService;->setDragListener(Lcom/aviary/android/feather/library/services/DragControllerService$DragListener;)V

    .line 333
    :cond_0
    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/effects/StickersPanel;->setDragController(Lcom/aviary/android/feather/library/services/DragControllerService;)V

    .line 335
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPluginService:Lcom/aviary/android/feather/library/services/PluginService;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/library/services/PluginService;->removeOnUpdateListener(Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;)V

    .line 336
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->setOnStatusChangeListener(Lcom/aviary/android/feather/effects/SimpleStatusMachine$OnStatusChangeListener;)V

    .line 337
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListPacks:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOnItemClickedListener(Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;)V

    .line 338
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListPacks:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 339
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListStickers:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOnItemClickedListener(Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;)V

    .line 340
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListStickers:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOnItemDragListener(Lit/sephiroth/android/library/widget/HorizontalListView$OnItemDragListener;)V

    .line 341
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 345
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDestroy()V

    .line 347
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/ImageViewDrawableOverlay;->clearOverlays()V

    .line 348
    iput-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mCurrentFilter:Lcom/aviary/android/feather/library/filters/StickerFilter;

    .line 349
    iput-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mActionList:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 350
    return-void
.end method

.method protected onDispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 354
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDispose()V

    .line 356
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    invoke-virtual {v0}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->clearCache()V

    .line 358
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    invoke-virtual {v0}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->shutDownNow()V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mInstalledPackages:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 365
    :cond_1
    iput-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    .line 366
    iput-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mCacheService:Lcom/aviary/android/feather/library/services/ImageCacheService;

    .line 367
    iput-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mCanvas:Landroid/graphics/Canvas;

    .line 368
    return-void
.end method

.method public onDragEnd()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 741
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onDragEnd"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 742
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListStickers:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setIsDragging(Z)V

    .line 743
    return v3
.end method

.method public onDragStart(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;Ljava/lang/Object;I)V
    .locals 5
    .param p1, "arg0"    # Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # I

    .prologue
    const/4 v4, 0x1

    .line 748
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onDragStart"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 749
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListStickers:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setIsDragging(Z)V

    .line 750
    return-void
.end method

.method public onDrop(Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;IIIILcom/aviary/android/feather/library/services/drag/DragView;Ljava/lang/Object;)V
    .locals 15
    .param p1, "source"    # Lcom/aviary/android/feather/library/services/DragControllerService$DragSource;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I
    .param p6, "dragView"    # Lcom/aviary/android/feather/library/services/drag/DragView;
    .param p7, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 760
    iget-object v10, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onDrop. source="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", dragInfo="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v10, v11}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 762
    if-eqz p7, :cond_0

    move-object/from16 v0, p7

    instance-of v10, v0, Ljava/lang/String;

    if-eqz v10, :cond_0

    move-object/from16 v5, p7

    .line 763
    check-cast v5, Ljava/lang/String;

    .line 764
    .local v5, "sticker":Ljava/lang/String;
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->onApplyCurrent()V

    .line 766
    invoke-virtual/range {p6 .. p6}, Lcom/aviary/android/feather/library/services/drag/DragView;->getScaleFactor()F

    move-result v4

    .line 768
    .local v4, "scaleFactor":F
    invoke-virtual/range {p6 .. p6}, Lcom/aviary/android/feather/library/services/drag/DragView;->getWidth()I

    move-result v10

    int-to-float v8, v10

    .line 769
    .local v8, "w":F
    invoke-virtual/range {p6 .. p6}, Lcom/aviary/android/feather/library/services/drag/DragView;->getHeight()I

    move-result v10

    int-to-float v1, v10

    .line 771
    .local v1, "h":F
    div-float v10, v8, v4

    float-to-int v9, v10

    .line 772
    .local v9, "width":I
    div-float v10, v1, v4

    float-to-int v2, v10

    .line 774
    .local v2, "height":I
    sub-int v6, p2, p4

    .line 775
    .local v6, "targetX":I
    sub-int v7, p3, p5

    .line 777
    .local v7, "targetY":I
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v10, v6

    int-to-float v11, v7

    add-int v12, v6, v9

    int-to-float v12, v12

    add-int v13, v7, v2

    int-to-float v13, v13

    invoke-direct {v3, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 778
    .local v3, "rect":Landroid/graphics/RectF;
    invoke-direct {p0, v5, v3}, Lcom/aviary/android/feather/effects/StickersPanel;->addSticker(Ljava/lang/String;Landroid/graphics/RectF;)V

    .line 780
    .end local v1    # "h":F
    .end local v2    # "height":I
    .end local v3    # "rect":Landroid/graphics/RectF;
    .end local v4    # "scaleFactor":F
    .end local v5    # "sticker":Ljava/lang/String;
    .end local v6    # "targetX":I
    .end local v7    # "targetY":I
    .end local v8    # "w":F
    .end local v9    # "width":I
    :cond_0
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Z

    .prologue
    const/4 v3, 0x0

    .line 735
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onDropCompleted"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 736
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListStickers:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setIsDragging(Z)V

    .line 737
    return-void
.end method

.method protected onGenerateResult()V
    .locals 1

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->onApplyCurrent()V

    .line 373
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mActionList:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-super {p0, v0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onGenerateResult(Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    .line 374
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 592
    const-string/jumbo v3, "stickers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onItemClick: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 643
    :cond_0
    :goto_0
    return v1

    .line 596
    :cond_1
    iget-object v3, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v3}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->getCurrentStatus()I

    move-result v3

    if-eq v3, v2, :cond_2

    iget-object v3, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v3}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->getCurrentStatus()I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 598
    :cond_2
    iget-object v3, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mListPacks:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;

    .line 601
    .local v0, "item":Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;
    iget-object v3, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;->mType:Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;

    sget-object v4, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;->GET_MORE_FIRST:Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;

    if-eq v3, v4, :cond_3

    iget-object v3, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;->mType:Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;

    sget-object v4, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;->GET_MORE_LAST:Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;

    if-ne v3, v4, :cond_5

    .line 603
    :cond_3
    if-nez p3, :cond_4

    .line 604
    const-string/jumbo v2, "LeftGetMoreStickers : Selected"

    invoke-static {v2}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 609
    :goto_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/aviary/android/feather/library/services/IAviaryController;->searchPlugin(I)V

    goto :goto_0

    .line 606
    :cond_4
    const-string/jumbo v2, "RightGetMoreStickers : Selected"

    invoke-static {v2}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    goto :goto_1

    .line 613
    :cond_5
    if-eqz v0, :cond_0

    .line 615
    iget-object v3, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;->mType:Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;

    sget-object v4, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;->EXTERNAL:Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;

    if-ne v3, v4, :cond_7

    .line 619
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-le v3, v4, :cond_6

    .line 620
    invoke-static {}, Lcom/aviary/android/feather/library/utils/SystemUtils;->getApplicationTotalMemory()D

    move-result-wide v3

    const-wide/high16 v5, 0x4040000000000000L    # 32.0

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_6

    .line 621
    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;->mPluginRef:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    check-cast v1, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    .line 622
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v1, v8}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->setStatus(I)V

    move v1, v2

    .line 623
    goto :goto_0

    .line 627
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unpurchased("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") : StoreButtonClicked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 628
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    iget-object v3, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;->mPackageName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v7}, Lcom/aviary/android/feather/library/services/IAviaryController;->downloadPlugin(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 633
    :cond_7
    iget-object v1, v0, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;->mPluginRef:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    check-cast v1, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    .line 634
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    if-eqz v1, :cond_8

    .line 635
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v1, v7}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->setStatus(I)V

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    invoke-interface {v3}, Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;->getPackageLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ": Opened"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    :cond_8
    move v1, v2

    .line 638
    goto/16 :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 652
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onItemSelected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 653
    return-void
.end method

.method public onLoadComplete(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "tag"    # I

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 413
    :cond_0
    if-eqz p2, :cond_1

    .line 414
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 418
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 416
    :cond_1
    sget v0, Lcom/aviary/android/feather/R$drawable;->aviary_ic_na:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 657
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onNothingSelected"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 659
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->getCurrentStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 660
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->setStatus(I)V

    .line 662
    :cond_0
    return-void
.end method

.method public onUpdate(Lcom/aviary/android/feather/library/services/PluginService;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "service"    # Lcom/aviary/android/feather/library/services/PluginService;
    .param p2, "delta"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x104000a

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 495
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "onUpdate"

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 497
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mExternalPacksEnabled:Z

    if-nez v2, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-direct {p0, p2}, Lcom/aviary/android/feather/effects/StickersPanel;->validDelta(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 500
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "Suppress the alert, no stickers in the delta bundle"

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 504
    :cond_2
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mUpdateDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 505
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "dialog is already there, skip new alerts"

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 509
    :cond_3
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mStatus:Lcom/aviary/android/feather/effects/SimpleStatusMachine;

    invoke-virtual {v2}, Lcom/aviary/android/feather/effects/SimpleStatusMachine;->getCurrentStatus()I

    move-result v1

    .line 510
    .local v1, "status":I
    const/4 v0, 0x0

    .line 512
    .local v0, "dialog":Landroid/app/AlertDialog;
    sget v2, Lcom/aviary/android/feather/effects/StickersPanel;->STATUS_NULL:I

    if-eq v1, v2, :cond_4

    if-ne v1, v6, :cond_6

    .line 514
    :cond_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/aviary/android/feather/R$string;->feather_sticker_pack_updated_1:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/aviary/android/feather/effects/StickersPanel$1;

    invoke-direct {v3, p0}, Lcom/aviary/android/feather/effects/StickersPanel$1;-><init>(Lcom/aviary/android/feather/effects/StickersPanel;)V

    .line 515
    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 521
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 574
    :cond_5
    :goto_1
    if-eqz v0, :cond_0

    .line 575
    iput-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mUpdateDialog:Landroid/app/AlertDialog;

    .line 576
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 577
    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 523
    :cond_6
    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 526
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->stickersOnScreen()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 528
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/aviary/android/feather/R$string;->feather_sticker_pack_updated_3:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    new-instance v4, Lcom/aviary/android/feather/effects/StickersPanel$3;

    invoke-direct {v4, p0}, Lcom/aviary/android/feather/effects/StickersPanel$3;-><init>(Lcom/aviary/android/feather/effects/StickersPanel;)V

    .line 529
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    new-instance v4, Lcom/aviary/android/feather/effects/StickersPanel$2;

    invoke-direct {v4, p0}, Lcom/aviary/android/feather/effects/StickersPanel$2;-><init>(Lcom/aviary/android/feather/effects/StickersPanel;)V

    .line 537
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 545
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 549
    :cond_7
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/aviary/android/feather/R$string;->feather_sticker_pack_updated_2:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/aviary/android/feather/effects/StickersPanel$4;

    invoke-direct {v3, p0}, Lcom/aviary/android/feather/effects/StickersPanel$4;-><init>(Lcom/aviary/android/feather/effects/StickersPanel;)V

    .line 550
    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 557
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 560
    :cond_8
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 562
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/aviary/android/feather/R$string;->feather_sticker_pack_updated_2:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/aviary/android/feather/effects/StickersPanel$5;

    invoke-direct {v3, p0}, Lcom/aviary/android/feather/effects/StickersPanel$5;-><init>(Lcom/aviary/android/feather/effects/StickersPanel;)V

    .line 563
    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 571
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public setDragController(Lcom/aviary/android/feather/library/services/DragControllerService;)V
    .locals 0
    .param p1, "controller"    # Lcom/aviary/android/feather/library/services/DragControllerService;

    .prologue
    .line 725
    iput-object p1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mDragControllerService:Lcom/aviary/android/feather/library/services/DragControllerService;

    .line 726
    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->setEnabled(Z)V

    return-void
.end method

.method protected final showIAPDialog()V
    .locals 2

    .prologue
    .line 866
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    instance-of v1, v1, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    if-eqz v1, :cond_0

    .line 867
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mPlugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    check-cast v0, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    .line 868
    .local v0, "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    new-instance v1, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;

    invoke-direct {v1}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;->setPlugin(Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;)Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;->build()Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/aviary/android/feather/effects/StickersPanel;->createIAPDialog(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)V

    .line 870
    .end local v0    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    :cond_0
    return-void
.end method

.method protected updateInstalledPacks(Z)V
    .locals 2
    .param p1, "firstTime"    # Z

    .prologue
    const/4 v1, 0x0

    .line 857
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mIsAnimating:Z

    .line 859
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 862
    :cond_0
    new-instance v0, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;-><init>(Lcom/aviary/android/feather/effects/StickersPanel;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/effects/StickersPanel$PluginInstallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 863
    return-void
.end method
