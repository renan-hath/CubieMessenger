.class public Lcom/aviary/android/feather/effects/BordersPanel;
.super Lcom/aviary/android/feather/effects/AbstractContentPanel;
.source "BordersPanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/aviary/android/feather/async_tasks/AsyncImageManager$OnImageLoadListener;
.implements Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;
.implements Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;
.implements Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;,
        Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;,
        Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;,
        Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;,
        Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;,
        Lcom/aviary/android/feather/effects/BordersPanel$BorderThumbnailCallable;,
        Lcom/aviary/android/feather/effects/BordersPanel$ExternalFramesThumbnailCallable;,
        Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;,
        Lcom/aviary/android/feather/effects/BordersPanel$ViewHolder;
    }
.end annotation


# static fields
.field private static mThumbnailOptions:Landroid/graphics/BitmapFactory$Options;

.field private static mUpdateErrorHandled:Z


# instance fields
.field protected mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

.field protected mCDSService:Lcom/aviary/android/feather/library/services/CDSService;

.field protected mCacheService:Lcom/aviary/android/feather/library/services/ImageCacheService;

.field private mCellWidth:I

.field protected mConfigService:Lcom/aviary/android/feather/library/services/ConfigService;

.field private mCurrentTask:Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;

.field protected mEnableFastPreview:Z

.field private mExternalPacksEnabled:Z

.field private mFeaturedCount:I

.field private mFirstTimeRenderer:Z

.field protected mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

.field protected mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

.field private mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

.field protected mImageSwitcher:Lcom/aviary/android/feather/widget/AviaryImageSwitcher;

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

.field protected volatile mIsRendering:Ljava/lang/Boolean;

.field protected mListFirstValidPosition:I

.field protected mLoader:Landroid/view/View;

.field protected mPluginService:Lcom/aviary/android/feather/library/services/PluginService;

.field private final mPluginType:I

.field private mPreferenceService:Lcom/aviary/android/feather/library/services/PreferenceService;

.field protected mRenderedEffect:Ljava/lang/String;

.field protected mRenderedPackName:Ljava/lang/String;

.field protected mSelectedPosition:I

.field private mShowGetMoreView:Z

.field protected mThumbBitmap:Landroid/graphics/Bitmap;

.field private mThumbSize:I

.field private mUpdateDialog:Landroid/app/AlertDialog;

.field protected updateArrowBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    sput-boolean v0, Lcom/aviary/android/feather/effects/BordersPanel;->mUpdateErrorHandled:Z

    return-void
.end method

.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V
    .locals 1
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;

    .prologue
    .line 186
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/effects/BordersPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;I)V

    .line 187
    return-void
.end method

.method protected constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;I)V
    .locals 3
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;
    .param p3, "type"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 116
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIsRendering:Ljava/lang/Boolean;

    .line 134
    iput-boolean v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mExternalPacksEnabled:Z

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .line 149
    const/16 v0, 0x50

    iput v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mCellWidth:I

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mSelectedPosition:I

    .line 165
    iput v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mListFirstValidPosition:I

    .line 168
    iput-boolean v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mShowGetMoreView:Z

    .line 183
    iput-boolean v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mEnableFastPreview:Z

    .line 191
    iput p3, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginType:I

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/effects/BordersPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/BordersPanel;

    .prologue
    .line 104
    iget v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginType:I

    return v0
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/effects/BordersPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/BordersPanel;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->removeIapDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/aviary/android/feather/effects/BordersPanel;Ljava/util/List;Ljava/util/List;III)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/BordersPanel;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 104
    invoke-direct/range {p0 .. p5}, Lcom/aviary/android/feather/effects/BordersPanel;->onEffectListUpdated(Ljava/util/List;Ljava/util/List;III)V

    return-void
.end method

.method static synthetic access$1102(Lcom/aviary/android/feather/effects/BordersPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/BordersPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/aviary/android/feather/effects/BordersPanel;Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;)Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/BordersPanel;
    .param p1, "x1"    # Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mCurrentTask:Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/aviary/android/feather/effects/BordersPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/BordersPanel;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mExternalPacksEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/aviary/android/feather/effects/BordersPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/BordersPanel;

    .prologue
    .line 104
    iget v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mCellWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/aviary/android/feather/effects/BordersPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/BordersPanel;

    .prologue
    .line 104
    iget v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mThumbSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/aviary/android/feather/effects/BordersPanel;)Lcom/aviary/android/feather/async_tasks/AsyncImageManager;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/BordersPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    return-object v0
.end method

.method static synthetic access$600()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/aviary/android/feather/effects/BordersPanel;->mThumbnailOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$700(Lcom/aviary/android/feather/effects/BordersPanel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/BordersPanel;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mInstalledPackages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/aviary/android/feather/effects/BordersPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/BordersPanel;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mShowGetMoreView:Z

    return v0
.end method

.method static synthetic access$802(Lcom/aviary/android/feather/effects/BordersPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/BordersPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mShowGetMoreView:Z

    return p1
.end method

.method static synthetic access$900(Lcom/aviary/android/feather/effects/BordersPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/effects/BordersPanel;

    .prologue
    .line 104
    iget v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mFeaturedCount:I

    return v0
.end method

.method private final displayIAPDialog(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)V
    .locals 4
    .param p1, "data"    # Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    .prologue
    const/4 v3, 0x0

    .line 829
    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    if-eqz v2, :cond_1

    .line 830
    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/IAPDialog;->valid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 831
    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    invoke-virtual {v2, p1}, Lcom/aviary/android/feather/widget/IAPDialog;->update(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)V

    .line 832
    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/effects/BordersPanel;->setApplyEnabled(Z)V

    .line 852
    :goto_0
    return-void

    .line 835
    :cond_0
    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/widget/IAPDialog;->dismiss(Z)V

    .line 836
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    .line 840
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    invoke-interface {v2}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->activatePopupContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 841
    .local v0, "container":Landroid/view/ViewGroup;
    invoke-static {v0, p1}, Lcom/aviary/android/feather/widget/IAPDialog;->create(Landroid/view/ViewGroup;Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)Lcom/aviary/android/feather/widget/IAPDialog;

    move-result-object v1

    .line 842
    .local v1, "dialog":Lcom/aviary/android/feather/widget/IAPDialog;
    if-eqz v1, :cond_2

    .line 843
    new-instance v2, Lcom/aviary/android/feather/effects/BordersPanel$10;

    invoke-direct {v2, p0}, Lcom/aviary/android/feather/effects/BordersPanel$10;-><init>(Lcom/aviary/android/feather/effects/BordersPanel;)V

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/IAPDialog;->setOnCloseListener(Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;)V

    .line 850
    :cond_2
    iput-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    .line 851
    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/effects/BordersPanel;->setApplyEnabled(Z)V

    goto :goto_0
.end method

.method private handleErrors(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mErrors":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;>;"
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 867
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v9, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 872
    .local v7, "hash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;

    .line 873
    .local v8, "item":Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;
    iget v6, v8, Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;->mError:I

    .line 874
    .local v6, "error":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v8, Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;->mPackageName:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 879
    .end local v6    # "error":I
    .end local v8    # "item":Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;
    :cond_2
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne v0, v9, :cond_4

    .line 882
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;

    .line 884
    .restart local v8    # "item":Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v9, :cond_3

    .line 885
    iget-object v1, v8, Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;->mPackageName:Ljava/lang/CharSequence;

    iget-object v2, v8, Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;->mLabel:Ljava/lang/CharSequence;

    iget v3, v8, Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;->mError:I

    iget-object v4, v8, Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;->mErrorMessage:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/aviary/android/feather/effects/BordersPanel;->showUpdateAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Z)V

    .line 894
    .end local v8    # "item":Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;
    :goto_2
    sput-boolean v9, Lcom/aviary/android/feather/effects/BordersPanel;->mUpdateErrorHandled:Z

    goto :goto_0

    .line 887
    .restart local v8    # "item":Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;
    :cond_3
    iget v0, v8, Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;->mError:I

    invoke-direct {p0, v0, v5}, Lcom/aviary/android/feather/effects/BordersPanel;->showUpdateAlertMultiplePlugins(IZ)V

    goto :goto_2

    .line 891
    .end local v8    # "item":Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;
    :cond_4
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/aviary/android/feather/effects/BordersPanel;->showUpdateAlertMultipleItems(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_2
.end method

.method private onEffectListUpdated(Ljava/util/List;Ljava/util/List;III)V
    .locals 15
    .param p3, "totalCount"    # I
    .param p4, "externalCount"    # I
    .param p5, "firstValidIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 721
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;>;"
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/effects/BordersPanel$EffectPackError;>;"
    const/4 v11, 0x0

    .line 724
    .local v11, "iapPackageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 725
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getOptions()Landroid/os/Bundle;

    move-result-object v13

    .line 726
    .local v13, "options":Landroid/os/Bundle;
    const-string/jumbo v1, "show-iap-dialog"

    invoke-virtual {v13, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    const-string/jumbo v1, "show-iap-dialog"

    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 730
    :cond_0
    const-string/jumbo v1, "show-iap-dialog"

    invoke-virtual {v13, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 733
    .end local v13    # "options":Landroid/os/Bundle;
    :cond_1
    if-eqz v11, :cond_8

    const/4 v14, 0x1

    .line 736
    .local v14, "willShowIapDialog":Z
    :goto_0
    if-eqz p2, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    if-nez v14, :cond_2

    .line 737
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "errors: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 738
    sget-boolean v1, Lcom/aviary/android/feather/effects/BordersPanel;->mUpdateErrorHandled:Z

    if-nez v1, :cond_2

    .line 739
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/effects/BordersPanel;->handleErrors(Ljava/util/List;)V

    .line 743
    :cond_2
    if-lez p5, :cond_9

    move/from16 v1, p5

    :goto_1
    iput v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mListFirstValidPosition:I

    .line 745
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {p0, v1, v0}, Lcom/aviary/android/feather/effects/BordersPanel;->createListAdapter(Landroid/content/Context;Ljava/util/List;)Landroid/widget/BaseAdapter;

    move-result-object v7

    .line 746
    .local v7, "adapter":Landroid/widget/BaseAdapter;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v1, v7}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 748
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mLoader:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 750
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v8, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 751
    .local v8, "animation":Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 752
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 753
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v1, v8}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 754
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setVisibility(I)V

    .line 756
    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mFirstTimeRenderer:Z

    if-eqz v1, :cond_a

    .line 757
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    iget v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mSelectedPosition:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setSelectedPosition(IZ)V

    .line 763
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mFirstTimeRenderer:Z

    if-eqz v1, :cond_4

    .line 764
    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    const/4 v3, 0x0

    iget v4, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mSelectedPosition:I

    const-wide/16 v5, -0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/aviary/android/feather/effects/BordersPanel;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 769
    :cond_4
    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mExternalPacksEnabled:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mFirstTimeRenderer:Z

    if-nez v1, :cond_5

    if-lez p4, :cond_5

    .line 771
    const/4 v1, 0x2

    move/from16 v0, p5

    if-le v0, v1, :cond_5

    .line 772
    iget v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mCellWidth:I

    int-to-double v1, v1

    move/from16 v0, p5

    int-to-double v3, v0

    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    double-to-int v9, v1

    .line 773
    .local v9, "delta":I
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    new-instance v2, Lcom/aviary/android/feather/effects/BordersPanel$8;

    invoke-direct {v2, p0, v9}, Lcom/aviary/android/feather/effects/BordersPanel$8;-><init>(Lcom/aviary/android/feather/effects/BordersPanel;I)V

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->post(Ljava/lang/Runnable;)Z

    .line 788
    .end local v9    # "delta":I
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mFirstTimeRenderer:Z

    .line 791
    const/4 v1, 0x1

    move/from16 v0, p3

    if-ge v0, v1, :cond_6

    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mExternalPacksEnabled:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 793
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPreferenceService:Lcom/aviary/android/feather/library/services/PreferenceService;

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

    if-nez v1, :cond_6

    .line 795
    new-instance v12, Lcom/aviary/android/feather/effects/BordersPanel$9;

    invoke-direct {v12, p0}, Lcom/aviary/android/feather/effects/BordersPanel$9;-><init>(Lcom/aviary/android/feather/effects/BordersPanel;)V

    .line 804
    .local v12, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/aviary/android/feather/R$string;->feather_borders_dialog_first_time:I

    .line 805
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 806
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 808
    .local v10, "dialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPreferenceService:Lcom/aviary/android/feather/library/services/PreferenceService;

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

    .line 810
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 817
    .end local v10    # "dialog":Landroid/app/AlertDialog;
    .end local v12    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :cond_6
    if-eqz v11, :cond_7

    .line 818
    new-instance v1, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;

    invoke-direct {v1}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;-><init>()V

    iget v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginType:I

    invoke-virtual {v1, v11, v2}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;->setPlugin(Ljava/lang/String;I)Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;->build()Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/aviary/android/feather/effects/BordersPanel;->displayIAPDialog(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)V

    .line 820
    :cond_7
    return-void

    .line 733
    .end local v7    # "adapter":Landroid/widget/BaseAdapter;
    .end local v8    # "animation":Landroid/view/animation/Animation;
    .end local v14    # "willShowIapDialog":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 743
    .restart local v14    # "willShowIapDialog":Z
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 758
    .restart local v7    # "adapter":Landroid/widget/BaseAdapter;
    .restart local v8    # "animation":Landroid/view/animation/Animation;
    :cond_a
    iget v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mSelectedPosition:I

    iget v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mListFirstValidPosition:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mListFirstValidPosition:I

    if-ltz v1, :cond_3

    .line 759
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    iget v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mListFirstValidPosition:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setSelectedPosition(IZ)V

    goto/16 :goto_2
.end method

.method private removeIapDialog()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 855
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/effects/BordersPanel;->setApplyEnabled(Z)V

    .line 856
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/widget/IAPDialog;->dismiss(Z)V

    .line 858
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    .line 861
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private renderEffect(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;I)V
    .locals 7
    .param p1, "item"    # Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 899
    invoke-virtual {p1, p2}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->getItemAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 900
    .local v0, "label":Ljava/lang/String;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "renderEffect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 902
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->killCurrentTask()Z

    .line 903
    invoke-virtual {p0, p2}, Lcom/aviary/android/feather/effects/BordersPanel;->createRenderTask(I)Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mCurrentTask:Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;

    .line 904
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mCurrentTask:Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;

    new-array v2, v6, [Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    aput-object p1, v2, v5

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->execute([Ljava/lang/Object;)Lcom/aviary/android/feather/library/utils/UserTask;

    .line 905
    return-void
.end method

.method private showUpdateAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Z)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/CharSequence;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "error"    # I
    .param p4, "exceptionMessage"    # Ljava/lang/String;
    .param p5, "fromUseClick"    # Z

    .prologue
    const/high16 v5, 0x1040000

    const/4 v6, 0x0

    .line 278
    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    .line 280
    invoke-virtual {p0, p3, p4}, Lcom/aviary/android/feather/effects/BordersPanel;->getError(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "errorString":Ljava/lang/String;
    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 285
    :cond_0
    new-instance v4, Lcom/aviary/android/feather/effects/BordersPanel$1;

    invoke-direct {v4, p0, p1}, Lcom/aviary/android/feather/effects/BordersPanel$1;-><init>(Lcom/aviary/android/feather/effects/BordersPanel;Ljava/lang/CharSequence;)V

    .line 294
    .local v4, "yesListener":Landroid/content/DialogInterface$OnClickListener;
    sget v3, Lcom/aviary/android/feather/R$string;->feather_update:I

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/aviary/android/feather/effects/BordersPanel;->onGenericMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 312
    .end local v2    # "errorString":Ljava/lang/String;
    .end local v4    # "yesListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    :goto_0
    return-void

    .line 296
    .restart local v2    # "errorString":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 297
    new-instance v4, Lcom/aviary/android/feather/effects/BordersPanel$2;

    invoke-direct {v4, p0, p1}, Lcom/aviary/android/feather/effects/BordersPanel$2;-><init>(Lcom/aviary/android/feather/effects/BordersPanel;Ljava/lang/CharSequence;)V

    .line 306
    .restart local v4    # "yesListener":Landroid/content/DialogInterface$OnClickListener;
    sget v3, Lcom/aviary/android/feather/R$string;->feather_update:I

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/aviary/android/feather/effects/BordersPanel;->onGenericMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 308
    .end local v4    # "yesListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_3
    const v0, 0x104000a

    invoke-virtual {p0, p2, v2, v0, v6}, Lcom/aviary/android/feather/effects/BordersPanel;->onGenericMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private showUpdateAlertMultipleItems(Ljava/lang/String;Ljava/util/Set;)V
    .locals 6
    .param p1, "pkgname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/aviary/android/feather/R$string;->feather_effects_error_update_multiple:I

    .line 360
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "errorString":Ljava/lang/String;
    new-instance v3, Lcom/aviary/android/feather/effects/BordersPanel$5;

    invoke-direct {v3, p0}, Lcom/aviary/android/feather/effects/BordersPanel$5;-><init>(Lcom/aviary/android/feather/effects/BordersPanel;)V

    .line 369
    .local v3, "yesListener":Landroid/content/DialogInterface$OnClickListener;
    sget v2, Lcom/aviary/android/feather/R$string;->feather_update:I

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/effects/BordersPanel;->onGenericError(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 371
    .end local v1    # "errorString":Ljava/lang/String;
    .end local v3    # "yesListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    return-void
.end method

.method private showUpdateAlertMultiplePlugins(IZ)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "fromUserClick"    # Z

    .prologue
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    .line 321
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 322
    invoke-virtual {p0, p1, v5}, Lcom/aviary/android/feather/effects/BordersPanel;->getError(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "errorString":Ljava/lang/String;
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 326
    :cond_0
    new-instance v3, Lcom/aviary/android/feather/effects/BordersPanel$3;

    invoke-direct {v3, p0}, Lcom/aviary/android/feather/effects/BordersPanel$3;-><init>(Lcom/aviary/android/feather/effects/BordersPanel;)V

    .line 333
    .local v3, "yesListener":Landroid/content/DialogInterface$OnClickListener;
    sget v2, Lcom/aviary/android/feather/R$string;->feather_update:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/effects/BordersPanel;->onGenericError(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 349
    .end local v1    # "errorString":Ljava/lang/String;
    .end local v3    # "yesListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    :goto_0
    return-void

    .line 335
    .restart local v1    # "errorString":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 336
    new-instance v3, Lcom/aviary/android/feather/effects/BordersPanel$4;

    invoke-direct {v3, p0}, Lcom/aviary/android/feather/effects/BordersPanel$4;-><init>(Lcom/aviary/android/feather/effects/BordersPanel;)V

    .line 344
    .restart local v3    # "yesListener":Landroid/content/DialogInterface$OnClickListener;
    sget v2, Lcom/aviary/android/feather/R$string;->feather_update:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/effects/BordersPanel;->onGenericError(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 346
    .end local v3    # "yesListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_3
    const v0, 0x104000a

    invoke-virtual {p0, v1, v0, v5}, Lcom/aviary/android/feather/effects/BordersPanel;->onGenericError(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private validDelta(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 625
    if-eqz p1, :cond_1

    .line 626
    const-string/jumbo v4, "delta"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 629
    :try_start_0
    const-string/jumbo v4, "delta"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 630
    .local v2, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/UpdateType;>;"
    if-eqz v2, :cond_1

    .line 631
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/plugins/UpdateType;

    .line 632
    .local v1, "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    invoke-virtual {v1}, Lcom/aviary/android/feather/library/plugins/UpdateType;->getPluginType()I

    move-result v5

    iget v6, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginType:I

    invoke-static {v5, v6}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->isTypeOf(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 650
    .end local v1    # "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    .end local v2    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/UpdateType;>;"
    :cond_1
    :goto_0
    return v3

    .line 636
    .restart local v1    # "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    .restart local v2    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/UpdateType;>;"
    :cond_2
    const-string/jumbo v5, "aviary.android.intent.ACTION_PLUGIN_REMOVED"

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/plugins/UpdateType;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 638
    iget-object v5, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mInstalledPackages:Ljava/util/List;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/plugins/UpdateType;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 643
    .end local v1    # "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 645
    .end local v2    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/library/plugins/UpdateType;>;"
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method


# virtual methods
.method backHandled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 943
    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIsAnimating:Z

    if-eqz v1, :cond_0

    .line 949
    :goto_0
    return v0

    .line 944
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    if-eqz v1, :cond_1

    .line 945
    invoke-direct {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->removeIapDialog()Z

    goto :goto_0

    .line 948
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->killCurrentTask()Z

    .line 949
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createListAdapter(Landroid/content/Context;Ljava/util/List;)Landroid/widget/BaseAdapter;
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
            "Landroid/widget/BaseAdapter;"
        }
    .end annotation

    .prologue
    .line 705
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;>;"
    new-instance v0, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;

    sget v3, Lcom/aviary/android/feather/R$layout;->aviary_frame_item:I

    sget v4, Lcom/aviary/android/feather/R$layout;->aviary_frame_item_more:I

    sget v5, Lcom/aviary/android/feather/R$layout;->aviary_frame_item_external:I

    sget v6, Lcom/aviary/android/feather/R$layout;->aviary_frame_item_divider:I

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/aviary/android/feather/effects/BordersPanel$ListAdapter;-><init>(Lcom/aviary/android/feather/effects/BordersPanel;Landroid/content/Context;IIIILjava/util/List;)V

    return-object v0
.end method

.method protected createRenderTask(I)Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 908
    new-instance v0, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;

    invoke-direct {v0, p0, p1}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;-><init>(Lcom/aviary/android/feather/effects/BordersPanel;I)V

    return-object v0
.end method

.method protected generateContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 667
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_content_effects:I

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
    .line 672
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_panel_frames:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected generateThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "input"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 676
    invoke-static {p1, p2, p3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getError(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "error"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getError for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 377
    sget v0, Lcom/aviary/android/feather/R$string;->feather_effects_error_loading_packs:I

    .line 379
    .local v0, "resId":I
    packed-switch p1, :pswitch_data_0

    .line 405
    if-eqz p2, :cond_0

    .line 412
    .end local p2    # "message":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 381
    .restart local p2    # "message":Ljava/lang/String;
    :pswitch_0
    sget v0, Lcom/aviary/android/feather/R$string;->feather_effects_unknown_errors:I

    .line 412
    :goto_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 385
    :pswitch_1
    sget v0, Lcom/aviary/android/feather/R$string;->feather_effects_error_update_packs:I

    .line 386
    goto :goto_1

    .line 389
    :pswitch_2
    sget v0, Lcom/aviary/android/feather/R$string;->feather_effects_error_update_editors:I

    .line 390
    goto :goto_1

    .line 393
    :pswitch_3
    sget v0, Lcom/aviary/android/feather/R$string;->feather_plugin_error_download:I

    .line 394
    goto :goto_1

    .line 397
    :pswitch_4
    sget v0, Lcom/aviary/android/feather/R$string;->feather_plugin_error_corrupted:I

    .line 398
    goto :goto_1

    .line 401
    :pswitch_5
    sget v0, Lcom/aviary/android/feather/R$string;->feather_plugin_error_storage_not_available:I

    .line 402
    goto :goto_1

    .line 408
    :cond_0
    sget v0, Lcom/aviary/android/feather/R$string;->feather_effects_unknown_errors:I

    goto :goto_1

    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getIsChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 545
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->getIsChanged()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIsRendering:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getOptionalEffectsLabels()[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 1414
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mConfigService:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v3, Lcom/aviary/android/feather/R$string;->feather_original:I

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/library/services/ConfigService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getOptionalEffectsValues()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 1410
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string/jumbo v2, "original"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getPluginType()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginType:I

    return v0
.end method

.method protected initContentImage(Lcom/aviary/android/feather/widget/AviaryImageSwitcher;)V
    .locals 3
    .param p1, "imageView"    # Lcom/aviary/android/feather/widget/AviaryImageSwitcher;

    .prologue
    .line 262
    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p1, p0}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 266
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getCurrentImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 267
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 268
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;->setAnimateFirstView(Z)V

    .line 270
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method

.method killCurrentTask()Z
    .locals 2

    .prologue
    .line 912
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mCurrentTask:Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;

    if-eqz v0, :cond_0

    .line 913
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->onProgressEnd()V

    .line 914
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mCurrentTask:Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/effects/BordersPanel$RenderTask;->cancel(Z)Z

    move-result v0

    .line 916
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadNativeFilter(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;ILjava/lang/CharSequence;Z)Lcom/aviary/android/feather/headless/filters/INativeFilter;
    .locals 8
    .param p1, "pack"    # Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    .param p2, "position"    # I
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "hires"    # Z

    .prologue
    .line 920
    sget-object v4, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->BORDERS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-static {v4}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory;->get(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;)Lcom/aviary/android/feather/headless/filters/IFilter;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/filters/BorderFilter;

    .line 921
    .local v1, "filter":Lcom/aviary/android/feather/library/filters/BorderFilter;
    invoke-virtual {v1, p3}, Lcom/aviary/android/feather/library/filters/BorderFilter;->setBorderName(Ljava/lang/CharSequence;)V

    .line 922
    invoke-virtual {v1, p4}, Lcom/aviary/android/feather/library/filters/BorderFilter;->setHiRes(Z)V

    .line 924
    iget-object v2, p1, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mPluginRef:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    .line 925
    .local v2, "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;
    if-eqz v2, :cond_0

    .line 926
    instance-of v4, v2, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;

    if-eqz v4, :cond_0

    move-object v4, v2

    .line 927
    check-cast v4, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;

    invoke-virtual {v4}, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->getSourceDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/aviary/android/feather/library/filters/BorderFilter;->setSourceApp(Ljava/lang/CharSequence;)V

    .line 930
    check-cast v2, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;

    .end local v2    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;
    invoke-virtual {v2}, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->listBordersWidths()[I

    move-result-object v3

    .line 931
    .local v3, "sizes":[I
    invoke-virtual {p1}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->getIndex()I

    move-result v4

    sub-int/2addr p2, v4

    .line 933
    if-eqz v3, :cond_0

    array-length v4, v3

    add-int/lit8 v5, p2, -0x1

    if-le v4, v5, :cond_0

    if-lez p2, :cond_0

    .line 934
    add-int/lit8 v4, p2, -0x1

    aget v0, v3, v4

    .line 935
    .local v0, "borderSize":I
    int-to-double v4, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/aviary/android/feather/library/filters/BorderFilter;->setSize(D)V

    .line 939
    .end local v0    # "borderSize":I
    .end local v3    # "sizes":[I
    :cond_0
    return-object v1
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
    .line 1655
    instance-of v3, p1, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;

    if-eqz v3, :cond_0

    .line 1656
    check-cast p1, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;

    .end local p1    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->size()I

    move-result v2

    .line 1657
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1658
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1659
    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1658
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1662
    .end local v0    # "i":I
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v2    # "size":I
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3
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
    .line 1643
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1644
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    instance-of v4, p1, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 1645
    check-cast v4, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;

    invoke-virtual {v4}, Lcom/aviary/android/feather/library/plugins/PluginFactory$FramePlugin;->listBorders()[Ljava/lang/String;

    move-result-object v1

    .line 1646
    .local v1, "items":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 1647
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Lcom/aviary/android/feather/library/plugins/PluginFactory$InternalPlugin;->getResourceLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1648
    .local v2, "label":Ljava/lang/String;
    aget-object v4, v1, v0

    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1646
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1651
    .end local v0    # "i":I
    .end local v1    # "items":[Ljava/lang/String;
    .end local v2    # "label":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public makeView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 655
    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 656
    .local v0, "view":Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setBackgroundColor(I)V

    .line 657
    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setDoubleTapEnabled(Z)V

    .line 658
    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setScaleEnabled(Z)V

    .line 659
    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setScrollEnabled(Z)V

    .line 660
    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setDisplayType(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)V

    .line 661
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    return-object v0
.end method

.method public onActivate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 232
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onActivate()V

    .line 238
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mConfigService:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v1, Lcom/aviary/android/feather/R$dimen;->aviary_frame_item_width:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mCellWidth:I

    .line 239
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mConfigService:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v1, Lcom/aviary/android/feather/R$dimen;->aviary_frame_item_image_width:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mThumbSize:I

    .line 241
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cell width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mCellWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "thumb size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mThumbSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mThumbSize:I

    iget v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mThumbSize:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/aviary/android/feather/effects/BordersPanel;->generateThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mInstalledPackages:Ljava/util/List;

    .line 248
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mConfigService:Lcom/aviary/android/feather/library/services/ConfigService;

    sget v1, Lcom/aviary/android/feather/R$integer;->aviary_featured_packs_count:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mFeaturedCount:I

    .line 250
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setGravity(I)V

    .line 251
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0, v4}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOverScrollMode(I)V

    .line 252
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 253
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOnItemClickedListener(Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;)V

    .line 255
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->setOnLoadCompleteListener(Lcom/aviary/android/feather/async_tasks/AsyncImageManager$OnImageLoadListener;)V

    .line 257
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 258
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->onPostActivate()V

    .line 259
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->backHandled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 533
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onCancelled()V
    .locals 1

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->killCurrentTask()Z

    .line 539
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIsRendering:Ljava/lang/Boolean;

    .line 540
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onCancelled()V

    .line 541
    return-void
.end method

.method protected onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "actions"    # Lcom/aviary/android/feather/headless/moa/MoaActionList;

    .prologue
    .line 504
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mRenderedEffect:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mRenderedEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": applied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 507
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mTrackingAttributes:Ljava/util/HashMap;

    const-string/jumbo v2, "Effect"

    iget-object v3, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mRenderedEffect:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mRenderedPackName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mRenderedPackName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    const-string/jumbo v1, "com.aviary.android.feather"

    iput-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mRenderedPackName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 520
    .local v0, "attrs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "Effects"

    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mRenderedEffect:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mRenderedPackName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": applied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 524
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mTrackingAttributes:Ljava/util/HashMap;

    const-string/jumbo v2, "Pack"

    iget-object v3, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mRenderedPackName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .end local v0    # "attrs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    .line 528
    return-void

    .line 515
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "oldConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/widget/IAPDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 464
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 465
    return-void
.end method

.method public onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 196
    invoke-super {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 198
    new-instance v1, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    invoke-direct {v1}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;-><init>()V

    iput-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    .line 200
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v1, Lcom/aviary/android/feather/effects/BordersPanel;->mThumbnailOptions:Landroid/graphics/BitmapFactory$Options;

    .line 201
    sget-object v1, Lcom/aviary/android/feather/effects/BordersPanel;->mThumbnailOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 203
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    const-class v2, Lcom/aviary/android/feather/library/services/ConfigService;

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/services/ConfigService;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mConfigService:Lcom/aviary/android/feather/library/services/ConfigService;

    .line 204
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    const-class v2, Lcom/aviary/android/feather/library/services/PluginService;

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/services/PluginService;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginService:Lcom/aviary/android/feather/library/services/PluginService;

    .line 205
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    const-class v2, Lcom/aviary/android/feather/library/services/CDSService;

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/services/CDSService;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mCDSService:Lcom/aviary/android/feather/library/services/CDSService;

    .line 206
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    const-class v2, Lcom/aviary/android/feather/library/services/ImageCacheService;

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/services/ImageCacheService;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mCacheService:Lcom/aviary/android/feather/library/services/ImageCacheService;

    .line 207
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    const-class v2, Lcom/aviary/android/feather/library/services/PreferenceService;

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/services/PreferenceService;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPreferenceService:Lcom/aviary/android/feather/library/services/PreferenceService;

    .line 209
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    const-class v2, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 211
    .local v0, "dataService":Lcom/aviary/android/feather/library/services/LocalDataService;
    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/LocalDataService;->getFastPreviewEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mEnableFastPreview:Z

    .line 213
    iget v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginType:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/LocalDataService;->getExternalPacksEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mExternalPacksEnabled:Z

    .line 215
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$id;->aviary_list:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    .line 216
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$id;->aviary_loader:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mLoader:Landroid/view/View;

    .line 218
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->copy(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPreview:Landroid/graphics/Bitmap;

    .line 221
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContentView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$id;->aviary_switcher:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/AviaryImageSwitcher;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mImageSwitcher:Lcom/aviary/android/feather/widget/AviaryImageSwitcher;

    .line 222
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mImageSwitcher:Lcom/aviary/android/feather/widget/AviaryImageSwitcher;

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/effects/BordersPanel;->initContentImage(Lcom/aviary/android/feather/widget/AviaryImageSwitcher;)V

    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$drawable;->aviary_update_arrow:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->updateArrowBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onDeactivate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 435
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->onProgressEnd()V

    .line 436
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginService:Lcom/aviary/android/feather/library/services/PluginService;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/library/services/PluginService;->removeOnUpdateListener(Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;)V

    .line 437
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginService:Lcom/aviary/android/feather/library/services/PluginService;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/library/services/PluginService;->removeOnExternalUpdateListener(Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;)V

    .line 438
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->setOnLoadCompleteListener(Lcom/aviary/android/feather/async_tasks/AsyncImageManager$OnImageLoadListener;)V

    .line 440
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 441
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOnItemClickedListener(Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;)V

    .line 443
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/IAPDialog;->dismiss(Z)V

    .line 445
    iput-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIapDialog:Lcom/aviary/android/feather/widget/IAPDialog;

    .line 448
    :cond_0
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDeactivate()V

    .line 449
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 425
    iput-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginService:Lcom/aviary/android/feather/library/services/PluginService;

    .line 426
    iput-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mCDSService:Lcom/aviary/android/feather/library/services/CDSService;

    .line 427
    iput-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mCacheService:Lcom/aviary/android/feather/library/services/ImageCacheService;

    .line 428
    iput-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPreferenceService:Lcom/aviary/android/feather/library/services/PreferenceService;

    .line 429
    iput-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mConfigService:Lcom/aviary/android/feather/library/services/ConfigService;

    .line 430
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDestroy()V

    .line 431
    return-void
.end method

.method protected onDispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 470
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 472
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    invoke-virtual {v0}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->clearCache()V

    .line 474
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mImageManager:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    invoke-virtual {v0}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->shutDownNow()V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 480
    :cond_1
    iput-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 482
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->updateArrowBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->updateArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 483
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->updateArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 485
    :cond_2
    iput-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->updateArrowBitmap:Landroid/graphics/Bitmap;

    .line 487
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDispose()V

    .line 488
    return-void
.end method

.method public onExternalUpdate(Lcom/aviary/android/feather/library/services/PluginService;)V
    .locals 4
    .param p1, "service"    # Lcom/aviary/android/feather/library/services/PluginService;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onExternalUpdated"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 594
    return-void
.end method

.method protected onGenerateResult()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 492
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGenerateResult. isRendering: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIsRendering:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 493
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIsRendering:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    new-instance v0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;-><init>(Lcom/aviary/android/feather/effects/BordersPanel;)V

    .line 495
    .local v0, "task":Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;
    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 499
    .end local v0    # "task":Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPreview:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-virtual {p0, v1, v2}, Lcom/aviary/android/feather/effects/BordersPanel;->onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 10
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
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 1161
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onItemClick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1163
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1164
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    move v5, v9

    .line 1206
    :cond_0
    :goto_0
    return v5

    .line 1165
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 1167
    .local v8, "viewType":I
    if-nez v8, :cond_3

    .line 1169
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    .line 1171
    .local v7, "item":Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    if-eqz v7, :cond_2

    iget v0, v7, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1174
    :cond_2
    iget-object v1, v7, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mPackageName:Ljava/lang/CharSequence;

    iget-object v2, v7, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mTitle:Ljava/lang/CharSequence;

    iget v3, v7, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mStatus:I

    iget-object v4, v7, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mError:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/aviary/android/feather/effects/BordersPanel;->showUpdateAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Z)V

    move v5, v9

    .line 1175
    goto :goto_0

    .line 1178
    .end local v7    # "item":Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    :cond_3
    if-ne v8, v5, :cond_5

    .line 1180
    if-nez p3, :cond_4

    .line 1181
    const-string/jumbo v0, "LeftGetMoreEffects : Selected"

    invoke-static {v0}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 1185
    :goto_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    iget v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginType:I

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->searchPlugin(I)V

    move v5, v9

    .line 1186
    goto :goto_0

    .line 1183
    :cond_4
    const-string/jumbo v0, "RightGetMoreEffects : Selected"

    invoke-static {v0}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    goto :goto_1

    .line 1188
    :cond_5
    const/4 v0, 0x2

    if-ne v8, v0, :cond_7

    .line 1189
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    .line 1190
    .restart local v7    # "item":Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    if-eqz v7, :cond_7

    .line 1192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_8

    .line 1193
    invoke-static {}, Lcom/aviary/android/feather/library/utils/SystemUtils;->getApplicationTotalMemory()D

    move-result-wide v0

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_8

    .line 1194
    iget-object v6, v7, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mPluginRef:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    check-cast v6, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    .line 1196
    .local v6, "externalPlugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    if-nez v6, :cond_6

    move v5, v9

    goto :goto_0

    .line 1197
    :cond_6
    new-instance v0, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;

    invoke-direct {v0}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;-><init>()V

    invoke-virtual {v0, v6}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;->setPlugin(Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;)Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;->build()Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/effects/BordersPanel;->displayIAPDialog(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)V

    .end local v6    # "externalPlugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    .end local v7    # "item":Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    .end local v8    # "viewType":I
    :cond_7
    :goto_2
    move v5, v9

    .line 1206
    goto/16 :goto_0

    .line 1200
    .restart local v7    # "item":Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    .restart local v8    # "viewType":I
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unpurchased("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") : StoreButtonClicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 1201
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    iget-object v1, v7, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mPackageName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginType:I

    invoke-interface {v0, v1, v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->downloadPlugin(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 1215
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onItemSelected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1217
    iput p3, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mSelectedPosition:I

    .line 1219
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1221
    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1222
    :cond_1
    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 1224
    .local v1, "viewType":I
    if-nez v1, :cond_0

    .line 1226
    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    .line 1228
    .local v0, "item":Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    if-eqz v0, :cond_0

    .line 1230
    iget v2, v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mStatus:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1233
    iget-object v2, v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mType:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    sget-object v3, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->INTERNAL:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    if-ne v2, v3, :cond_0

    .line 1234
    invoke-direct {p0, v0, p3}, Lcom/aviary/android/feather/effects/BordersPanel;->renderEffect(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;I)V

    goto :goto_0
.end method

.method public onLoadComplete(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "tag"    # I

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    :goto_0
    return-void

    .line 601
    :cond_0
    if-eqz p2, :cond_1

    .line 603
    new-instance v0, Lcom/aviary/android/feather/effects/BordersPanel$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/aviary/android/feather/effects/BordersPanel$7;-><init>(Lcom/aviary/android/feather/effects/BordersPanel;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 611
    :cond_1
    sget v0, Lcom/aviary/android/feather/R$drawable;->aviary_ic_na:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
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
    .line 1243
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "onNothingSelected"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1245
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1246
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    iget v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mListFirstValidPosition:I

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;

    .line 1247
    .local v0, "item":Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->size:I

    if-lez v1, :cond_0

    .line 1248
    iget v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mListFirstValidPosition:I

    invoke-direct {p0, v0, v1}, Lcom/aviary/android/feather/effects/BordersPanel;->renderEffect(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;I)V

    .line 1253
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1254
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/aviary/android/feather/effects/BordersPanel$11;

    invoke-direct {v2, p0}, Lcom/aviary/android/feather/effects/BordersPanel$11;-><init>(Lcom/aviary/android/feather/effects/BordersPanel;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1263
    .end local v0    # "item":Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
    :cond_0
    return-void
.end method

.method protected onPostActivate()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginService:Lcom/aviary/android/feather/library/services/PluginService;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/library/services/PluginService;->registerOnUpdateListener(Lcom/aviary/android/feather/library/services/PluginService$OnUpdateListener;)V

    .line 418
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginService:Lcom/aviary/android/feather/library/services/PluginService;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/library/services/PluginService;->registerOnExternalUpdateListener(Lcom/aviary/android/feather/library/services/PluginService$OnExternalUpdateListener;)V

    .line 419
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/effects/BordersPanel;->updateInstalledPacks(Z)V

    .line 420
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->contentReady()V

    .line 421
    return-void
.end method

.method public onUpdate(Lcom/aviary/android/feather/library/services/PluginService;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "service"    # Lcom/aviary/android/feather/library/services/PluginService;
    .param p2, "delta"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 550
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "onUpdate"

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 552
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mExternalPacksEnabled:Z

    if-eqz v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mUpdateDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    invoke-direct {p0, p2}, Lcom/aviary/android/feather/effects/BordersPanel;->validDelta(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    new-instance v0, Lcom/aviary/android/feather/effects/BordersPanel$6;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/effects/BordersPanel$6;-><init>(Lcom/aviary/android/feather/effects/BordersPanel;)V

    .line 568
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/aviary/android/feather/R$string;->feather_filter_pack_updated:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    .line 569
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mUpdateDialog:Landroid/app/AlertDialog;

    .line 571
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->setEnabled(Z)V

    return-void
.end method

.method protected updateInstalledPacks(Z)V
    .locals 4
    .param p1, "firstTime"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 684
    iput-boolean v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mIsAnimating:Z

    .line 686
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mLoader:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setVisibility(I)V

    .line 690
    if-eqz p1, :cond_0

    .line 691
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 693
    :cond_0
    new-instance v0, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;-><init>(Lcom/aviary/android/feather/effects/BordersPanel;)V

    new-array v1, v2, [Ljava/lang/Integer;

    iget v2, p0, Lcom/aviary/android/feather/effects/BordersPanel;->mPluginType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/effects/BordersPanel$PluginInstallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 694
    return-void
.end method
