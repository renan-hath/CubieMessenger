.class public Lcom/aviary/android/feather/widget/IAPDialog;
.super Ljava/lang/Object;
.source "IAPDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/aviary/android/feather/widget/AviaryWorkspace$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoader;,
        Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;,
        Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;,
        Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;,
        Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;
    }
.end annotation


# static fields
.field private static logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;


# instance fields
.field private mBackground:Landroid/view/View;

.field private mButton:Landroid/widget/Button;

.field private mCacheService:Lcom/aviary/android/feather/library/services/ImageCacheService;

.field private mCellResId:I

.field private mCloseListener:Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;

.field mCols:I

.field private mController:Lcom/aviary/android/feather/AviaryMainController;

.field private mCurrentData:Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

.field private mDescription:Lcom/aviary/android/feather/widget/AviaryTextView;

.field private mDownloadOnDemand:Z

.field private mErrorView:Landroid/view/View;

.field private mHide:Ljava/lang/Runnable;

.field private mIcon:Landroid/widget/ImageView;

.field mItemsPerPage:I

.field private mLoader:Landroid/view/View;

.field private mMainLayoutResId:I

.field private mRetryButton:Landroid/widget/Button;

.field mRows:I

.field private mThreadService:Lcom/aviary/android/feather/library/services/ThreadPoolService;

.field private mTitle:Lcom/aviary/android/feather/widget/AviaryTextView;

.field private mView:Landroid/view/ViewGroup;

.field private mWorkspace:Lcom/aviary/android/feather/widget/AviaryWorkspace;

.field private mWorkspaceIndicator:Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 132
    const-string/jumbo v0, "iap-dialog"

    sget-object v1, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory;->getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_iap_workspace_screen_stickers:I

    iput v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mMainLayoutResId:I

    .line 104
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_iap_cell_item_stickers:I

    iput v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCellResId:I

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mDownloadOnDemand:Z

    .line 674
    new-instance v0, Lcom/aviary/android/feather/widget/IAPDialog$3;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/widget/IAPDialog$3;-><init>(Lcom/aviary/android/feather/widget/IAPDialog;)V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mHide:Ljava/lang/Runnable;

    .line 156
    iput-object p1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    .line 157
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->onAttachedToWindow()V

    .line 159
    return-void
.end method

.method static synthetic access$1000(Lcom/aviary/android/feather/widget/IAPDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/IAPDialog;

    .prologue
    .line 54
    iget v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCellResId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/aviary/android/feather/widget/IAPDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/IAPDialog;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mDownloadOnDemand:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/aviary/android/feather/widget/IAPDialog;)Lcom/aviary/android/feather/library/services/ThreadPoolService;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/IAPDialog;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mThreadService:Lcom/aviary/android/feather/library/services/ThreadPoolService;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/aviary/android/feather/widget/IAPDialog;)Lcom/aviary/android/feather/library/services/ImageCacheService;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/IAPDialog;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCacheService:Lcom/aviary/android/feather/library/services/ImageCacheService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/aviary/android/feather/widget/IAPDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/IAPDialog;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->handleHide()V

    return-void
.end method

.method static synthetic access$1500(Lcom/aviary/android/feather/widget/IAPDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/IAPDialog;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->removeFromParent()V

    return-void
.end method

.method static synthetic access$300()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/aviary/android/feather/widget/IAPDialog;Ljava/util/List;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/IAPDialog;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/aviary/android/feather/widget/IAPDialog;->processPlugins(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/aviary/android/feather/widget/IAPDialog;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/IAPDialog;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/aviary/android/feather/widget/IAPDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/IAPDialog;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->onDownloadError()V

    return-void
.end method

.method static synthetic access$700(Lcom/aviary/android/feather/widget/IAPDialog;)Lcom/aviary/android/feather/AviaryMainController;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/IAPDialog;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mController:Lcom/aviary/android/feather/AviaryMainController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/aviary/android/feather/widget/IAPDialog;)Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/IAPDialog;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCloseListener:Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/aviary/android/feather/widget/IAPDialog;)Lcom/aviary/android/feather/widget/AviaryWorkspace;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/IAPDialog;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mWorkspace:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    return-object v0
.end method

.method private computeLayoutItems(Landroid/content/res/Resources;I)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "pluginType"    # I

    .prologue
    .line 220
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 221
    :cond_0
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_iap_workspace_screen_effects:I

    iput v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mMainLayoutResId:I

    .line 222
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_iap_cell_item_effects:I

    iput v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCellResId:I

    .line 223
    sget v0, Lcom/aviary/android/feather/R$integer;->aviary_iap_dialog_cols_effects:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCols:I

    .line 224
    sget v0, Lcom/aviary/android/feather/R$integer;->aviary_iap_dialog_rows_effects:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mRows:I

    .line 231
    :goto_0
    iget v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mRows:I

    iget v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCols:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mItemsPerPage:I

    .line 232
    return-void

    .line 226
    :cond_1
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_iap_workspace_screen_stickers:I

    iput v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mMainLayoutResId:I

    .line 227
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_iap_cell_item_stickers:I

    iput v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCellResId:I

    .line 228
    sget v0, Lcom/aviary/android/feather/R$integer;->aviary_iap_dialog_cols_stickers:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCols:I

    .line 229
    sget v0, Lcom/aviary/android/feather/R$integer;->aviary_iap_dialog_rows_stickers:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mRows:I

    goto :goto_0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)Lcom/aviary/android/feather/widget/IAPDialog;
    .locals 7
    .param p0, "container"    # Landroid/view/ViewGroup;
    .param p1, "data"    # Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 136
    sget-object v2, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "create"

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 138
    sget v2, Lcom/aviary/android/feather/R$id;->aviary_main_iap_dialog_container:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 139
    .local v0, "dialog":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .line 141
    .local v1, "instance":Lcom/aviary/android/feather/widget/IAPDialog;
    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/aviary/android/feather/R$layout;->aviary_iap_dialog_container:I

    invoke-virtual {v2, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dialog":Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 143
    .restart local v0    # "dialog":Landroid/view/ViewGroup;
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 144
    new-instance v1, Lcom/aviary/android/feather/widget/IAPDialog;

    .end local v1    # "instance":Lcom/aviary/android/feather/widget/IAPDialog;
    invoke-direct {v1, v0}, Lcom/aviary/android/feather/widget/IAPDialog;-><init>(Landroid/view/ViewGroup;)V

    .line 145
    .restart local v1    # "instance":Lcom/aviary/android/feather/widget/IAPDialog;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    invoke-virtual {v1, p1}, Lcom/aviary/android/feather/widget/IAPDialog;->update(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)V

    .line 152
    :goto_0
    return-object v1

    .line 149
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "instance":Lcom/aviary/android/feather/widget/IAPDialog;
    check-cast v1, Lcom/aviary/android/feather/widget/IAPDialog;

    .line 150
    .restart local v1    # "instance":Lcom/aviary/android/feather/widget/IAPDialog;
    invoke-virtual {v1, p1}, Lcom/aviary/android/feather/widget/IAPDialog;->update(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)V

    goto :goto_0
.end method

.method private downloadPackIcon(Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;)V
    .locals 7
    .param p1, "plugin"    # Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    .prologue
    const/4 v6, 0x0

    .line 503
    sget-object v3, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "downloadPackIcon"

    aput-object v5, v4, v6

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 505
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->valid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    iget-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mThreadService:Lcom/aviary/android/feather/library/services/ThreadPoolService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/aviary/android/feather/library/services/PluginService;->CONTENT_DEFAULT_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoader;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCacheService:Lcom/aviary/android/feather/library/services/ImageCacheService;

    invoke-direct {v0, v3, v6}, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoader;-><init>(Lcom/aviary/android/feather/library/services/ImageCacheService;Z)V

    .line 509
    .local v0, "callable":Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoader;
    new-instance v1, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mIcon:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v3, v2}, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;-><init>(Lcom/aviary/android/feather/widget/IAPDialog;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 510
    .local v1, "listener":Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;
    iget-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mThreadService:Lcom/aviary/android/feather/library/services/ThreadPoolService;

    invoke-virtual {v3, v0, v1, v2}, Lcom/aviary/android/feather/library/services/ThreadPoolService;->submit(Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;Lcom/aviary/android/feather/library/services/FutureListener;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    .line 513
    .end local v0    # "callable":Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoader;
    .end local v1    # "listener":Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private downloadPlugin(Ljava/lang/String;I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 351
    sget-object v2, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "downloadPlugin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 353
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->valid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v2, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mButton:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 358
    iget-object v2, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mLoader:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v2, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mErrorView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v2, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mTitle:Lcom/aviary/android/feather/widget/AviaryTextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/widget/AviaryTextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v2, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mThreadService:Lcom/aviary/android/feather/library/services/ThreadPoolService;

    if-eqz v2, :cond_0

    .line 365
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 366
    .local v1, "params":Landroid/os/Bundle;
    const-string/jumbo v2, "use-cache"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 367
    new-instance v0, Lcom/aviary/android/feather/widget/IAPDialog$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/aviary/android/feather/widget/IAPDialog$1;-><init>(Lcom/aviary/android/feather/widget/IAPDialog;Ljava/lang/String;I)V

    .line 407
    .local v0, "listener":Lcom/aviary/android/feather/library/services/FutureListener;, "Lcom/aviary/android/feather/library/services/FutureListener<Landroid/os/Bundle;>;"
    iget-object v2, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mThreadService:Lcom/aviary/android/feather/library/services/ThreadPoolService;

    new-instance v3, Lcom/aviary/android/feather/library/plugins/ExternalPacksTask;

    invoke-direct {v3}, Lcom/aviary/android/feather/library/plugins/ExternalPacksTask;-><init>()V

    invoke-virtual {v2, v3, v0, v1}, Lcom/aviary/android/feather/library/services/ThreadPoolService;->submit(Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;Lcom/aviary/android/feather/library/services/FutureListener;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method private getRemoteFolder(Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;)Ljava/lang/String;
    .locals 4
    .param p1, "plugin"    # Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    .prologue
    .line 287
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "pkg":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 290
    .local v0, "folder":Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/aviary/android/feather/library/services/PluginService;->CONTENT_DEFAULT_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    .end local v0    # "folder":Ljava/lang/String;
    .end local v1    # "pkg":[Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private handleHide()V
    .locals 6

    .prologue
    .line 707
    sget-object v2, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "handleHide"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 709
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->valid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 727
    :goto_0
    return-void

    .line 711
    :cond_0
    iget-object v2, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/aviary/android/feather/R$anim;->aviary_iap_close_animation:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 712
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/aviary/android/feather/widget/IAPDialog$4;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/widget/IAPDialog$4;-><init>(Lcom/aviary/android/feather/widget/IAPDialog;)V

    .line 725
    .local v1, "listener":Landroid/view/animation/Animation$AnimationListener;
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 726
    iget-object v2, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private initWorkspace(Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;)V
    .locals 9
    .param p1, "plugin"    # Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 264
    sget-object v0, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "initWorkspace"

    aput-object v2, v1, v8

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 266
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getItems()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getItems()[Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, "items":[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/widget/IAPDialog;->getRemoteFolder(Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "folder":Ljava/lang/String;
    iget-object v7, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mWorkspace:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    new-instance v0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mMainLayoutResId:I

    const/4 v5, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;-><init>(Lcom/aviary/android/feather/widget/IAPDialog;Landroid/content/Context;Ljava/lang/String;II[Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->setAdapter(Landroid/widget/Adapter;)V

    .line 271
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mWorkspace:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->setOnPageChangeListener(Lcom/aviary/android/feather/widget/AviaryWorkspace$OnPageChangeListener;)V

    .line 273
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getItems()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iget v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mItemsPerPage:I

    if-gt v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mWorkspaceIndicator:Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->setVisibility(I)V

    .line 283
    .end local v3    # "folder":Ljava/lang/String;
    .end local v6    # "items":[Ljava/lang/String;
    :goto_0
    return-void

    .line 276
    .restart local v3    # "folder":Ljava/lang/String;
    .restart local v6    # "items":[Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mWorkspaceIndicator:Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;

    invoke-virtual {v0, v8}, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;->setVisibility(I)V

    goto :goto_0

    .line 279
    .end local v3    # "folder":Ljava/lang/String;
    .end local v6    # "items":[Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "invalid plugin"

    aput-object v2, v1, v8

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mWorkspace:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    invoke-virtual {v0, v5}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->setAdapter(Landroid/widget/Adapter;)V

    .line 281
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mWorkspace:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    invoke-virtual {v0, v5}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->setOnPageChangeListener(Lcom/aviary/android/feather/widget/AviaryWorkspace$OnPageChangeListener;)V

    goto :goto_0
.end method

.method private onDownloadError()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mErrorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mLoader:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mTitle:Lcom/aviary/android/feather/widget/AviaryTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryTextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mRetryButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 440
    return-void
.end method

.method private processPlugin()V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 443
    sget-object v1, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "processPlugin"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 445
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->valid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCurrentData:Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCurrentData:Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->plugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    invoke-static {v1}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->access$000(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCurrentData:Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->plugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    invoke-static {v1}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->access$000(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    move-result-object v0

    .line 450
    .local v0, "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 451
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mLoader:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mErrorView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 455
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getType()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/aviary/android/feather/widget/IAPDialog;->computeLayoutItems(Landroid/content/res/Resources;I)V

    .line 457
    sget-object v1, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cols: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCols:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", rows: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mRows:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 459
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mTitle:Lcom/aviary/android/feather/widget/AviaryTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getPackageLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " effects)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/AviaryTextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mTitle:Lcom/aviary/android/feather/widget/AviaryTextView;

    invoke-virtual {v1, v6}, Lcom/aviary/android/feather/widget/AviaryTextView;->setSelected(Z)V

    .line 462
    iget-object v2, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mDescription:Lcom/aviary/android/feather/widget/AviaryTextView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getDescription()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/aviary/android/feather/widget/AviaryTextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    invoke-virtual {v0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mWorkspace:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    iget-object v2, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mWorkspaceIndicator:Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->setIndicator(Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;)V

    .line 467
    invoke-direct {p0, v0}, Lcom/aviary/android/feather/widget/IAPDialog;->initWorkspace(Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;)V

    .line 468
    invoke-direct {p0, v0}, Lcom/aviary/android/feather/widget/IAPDialog;->downloadPackIcon(Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;)V

    .line 470
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mButton:Landroid/widget/Button;

    new-instance v2, Lcom/aviary/android/feather/widget/IAPDialog$2;

    invoke-direct {v2, p0, v0}, Lcom/aviary/android/feather/widget/IAPDialog$2;-><init>(Lcom/aviary/android/feather/widget/IAPDialog;Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 462
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_1
.end method

.method private processPlugins(Ljava/util/List;Ljava/lang/String;I)V
    .locals 8
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/library/plugins/ExternalType;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/library/plugins/ExternalType;>;"
    sget-object v4, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "processPlugins"

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 414
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->valid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 429
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 417
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/aviary/android/feather/library/plugins/ExternalType;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 418
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/plugins/ExternalType;

    .line 419
    .local v0, "current":Lcom/aviary/android/feather/library/plugins/ExternalType;
    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {v0}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 421
    new-instance v2, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;

    invoke-direct {v2, v0}, Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;-><init>(Lcom/aviary/android/feather/library/plugins/ExternalType;)V

    .line 422
    .local v2, "pack":Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;
    iget-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, p3}, Lcom/aviary/android/feather/library/plugins/PluginFactory;->create(Landroid/content/Context;Lcom/aviary/android/feather/library/plugins/FeatherPack;I)Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    .line 423
    .local v3, "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    new-instance v4, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;

    invoke-direct {v4}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;-><init>()V

    invoke-virtual {v4, v3}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;->setPlugin(Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;)Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater$Builder;->build()Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/widget/IAPDialog;->update(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)V

    goto :goto_0

    .line 428
    .end local v0    # "current":Lcom/aviary/android/feather/library/plugins/ExternalType;
    .end local v2    # "pack":Lcom/aviary/android/feather/library/plugins/FeatherExternalPack;
    .end local v3    # "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    :cond_2
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->onDownloadError()V

    goto :goto_0
.end method

.method private removeFromParent()V
    .locals 5

    .prologue
    .line 695
    sget-object v1, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "removeFromParent"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 697
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 699
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 700
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 701
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->onDetachedFromWindow()V

    .line 704
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 5
    .param p1, "animate"    # Z

    .prologue
    .line 686
    sget-object v0, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dismiss, animate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 687
    if-eqz p1, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->hide()V

    .line 692
    :goto_0
    return-void

    .line 690
    :cond_0
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->removeFromParent()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 670
    sget-object v0, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "finalize"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 671
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 672
    return-void
.end method

.method public getPlugin()Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCurrentData:Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCurrentData:Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->plugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->access$000(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hide()V
    .locals 4

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    :goto_0
    return-void

    .line 661
    :cond_0
    sget-object v0, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "hide"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 662
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->getPlugin()Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unpurchased("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->getPlugin()Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") : Cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    sget-object v1, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "onAttachedFromWindow"

    aput-object v5, v4, v2

    invoke-interface {v1, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->getPlugin()Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    move-result-object v0

    .line 198
    .local v0, "plugin":Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;->getType()I

    move-result v1

    :goto_0
    invoke-direct {p0, v4, v1}, Lcom/aviary/android/feather/widget/IAPDialog;->computeLayoutItems(Landroid/content/res/Resources;I)V

    .line 200
    invoke-static {}, Lcom/aviary/android/feather/library/utils/SystemUtils;->getApplicationTotalMemory()D

    move-result-wide v4

    const-wide/high16 v6, 0x4048000000000000L    # 48.0

    cmpg-double v1, v4, v6

    if-gez v1, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mDownloadOnDemand:Z

    .line 202
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    sget v2, Lcom/aviary/android/feather/R$id;->aviary_icon:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mIcon:Landroid/widget/ImageView;

    .line 203
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    sget v2, Lcom/aviary/android/feather/R$id;->aviary_main_iap_dialog:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mBackground:Landroid/view/View;

    .line 204
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    sget v2, Lcom/aviary/android/feather/R$id;->aviary_button:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mButton:Landroid/widget/Button;

    .line 205
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    sget v2, Lcom/aviary/android/feather/R$id;->aviary_title:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/AviaryTextView;

    iput-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mTitle:Lcom/aviary/android/feather/widget/AviaryTextView;

    .line 206
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    sget v2, Lcom/aviary/android/feather/R$id;->aviary_description:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/AviaryTextView;

    iput-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mDescription:Lcom/aviary/android/feather/widget/AviaryTextView;

    .line 207
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    sget v2, Lcom/aviary/android/feather/R$id;->aviary_workspace:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/AviaryWorkspace;

    iput-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mWorkspace:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    .line 208
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    sget v2, Lcom/aviary/android/feather/R$id;->aviary_workspace_indicator:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;

    iput-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mWorkspaceIndicator:Lcom/aviary/android/feather/widget/AviaryWorkspaceIndicator;

    .line 209
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    sget v2, Lcom/aviary/android/feather/R$id;->aviary_progress:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mLoader:Landroid/view/View;

    .line 211
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    sget v2, Lcom/aviary/android/feather/R$id;->aviary_retry_button:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mRetryButton:Landroid/widget/Button;

    .line 212
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mRetryButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    sget v2, Lcom/aviary/android/feather/R$id;->aviary_error_message:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mErrorView:Landroid/view/View;

    .line 215
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mBackground:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mRetryButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    return-void

    :cond_1
    move v1, v2

    .line 198
    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mBackground:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCloseListener:Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCloseListener:Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;

    invoke-interface {v0}, Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;->onClose()V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mRetryButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCurrentData:Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/IAPDialog;->update(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 162
    sget-object v3, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "onConfigurationChanged"

    aput-object v5, v4, v6

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->valid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 167
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_2

    .line 168
    iget-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 169
    .local v1, "index":I
    iget-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 170
    iput-object v8, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    .line 172
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/aviary/android/feather/R$layout;->aviary_iap_dialog_container:I

    invoke-virtual {v3, v4, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    .line 174
    iget-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 176
    iget-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 178
    iget-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    sget v4, Lcom/aviary/android/feather/R$id;->aviary_main_iap_dialog:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 179
    .local v0, "animator":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->onAttachedToWindow()V

    .line 184
    iget-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCurrentData:Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    invoke-virtual {p0, v3}, Lcom/aviary/android/feather/widget/IAPDialog;->update(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)V

    goto :goto_0

    .line 186
    .end local v0    # "animator":Landroid/view/ViewGroup;
    .end local v1    # "index":I
    :cond_2
    sget-object v3, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "parent is null"

    aput-object v5, v4, v6

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 235
    sget-object v0, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onDetachedFromWindow"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 236
    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/widget/IAPDialog;->setOnCloseListener(Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;)V

    .line 237
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mRetryButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mWorkspace:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->setAdapter(Landroid/widget/Adapter;)V

    .line 240
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mWorkspace:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->setOnPageChangeListener(Lcom/aviary/android/feather/widget/AviaryWorkspace$OnPageChangeListener;)V

    .line 241
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iput-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCloseListener:Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;

    .line 243
    iput-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mController:Lcom/aviary/android/feather/AviaryMainController;

    .line 244
    iput-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mThreadService:Lcom/aviary/android/feather/library/services/ThreadPoolService;

    .line 245
    iput-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCacheService:Lcom/aviary/android/feather/library/services/ImageCacheService;

    .line 246
    iput-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCurrentData:Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    .line 247
    iput-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    .line 248
    return-void
.end method

.method public onPageChanged(II)V
    .locals 19
    .param p1, "which"    # I
    .param p2, "old"    # I

    .prologue
    .line 618
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/aviary/android/feather/widget/IAPDialog;->mDownloadOnDemand:Z

    if-nez v14, :cond_1

    .line 653
    :cond_0
    return-void

    .line 619
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/IAPDialog;->valid()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 621
    sget-object v14, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "onPageChanged: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " from "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-interface {v14, v15}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/IAPDialog;->mWorkspace:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    if-eqz v14, :cond_0

    .line 624
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/IAPDialog;->mWorkspace:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    invoke-virtual {v14}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;

    .line 626
    .local v2, "adapter":Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/aviary/android/feather/widget/IAPDialog;->mItemsPerPage:I

    mul-int v8, p1, v14

    .line 627
    .local v8, "index":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/aviary/android/feather/widget/IAPDialog;->mItemsPerPage:I

    add-int v5, v8, v14

    .line 628
    .local v5, "endIndex":I
    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->getRealCount()I

    move-result v12

    .line 630
    .local v12, "total":I
    move v6, v8

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_0

    .line 631
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/IAPDialog;->mWorkspace:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/aviary/android/feather/widget/AviaryWorkspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/aviary/android/feather/widget/CellLayout;

    .line 632
    .local v4, "cellLayout":Lcom/aviary/android/feather/widget/CellLayout;
    sub-int v14, v6, v8

    invoke-virtual {v4, v14}, Lcom/aviary/android/feather/widget/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 633
    .local v11, "toolView":Landroid/view/View;
    if-ge v6, v12, :cond_3

    .line 634
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->getUrlPrefix()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2, v6}, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 635
    .local v13, "url":Ljava/lang/String;
    sget v14, Lcom/aviary/android/feather/R$id;->aviary_image:I

    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 636
    .local v7, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 638
    .local v10, "tag":Ljava/lang/String;
    if-eqz v10, :cond_2

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 639
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/IAPDialog;->mThreadService:Lcom/aviary/android/feather/library/services/ThreadPoolService;

    if-eqz v14, :cond_3

    .line 641
    sget-object v14, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "fetching image: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-interface {v14, v15}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 642
    new-instance v3, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/IAPDialog;->mCacheService:Lcom/aviary/android/feather/library/services/ImageCacheService;

    const/4 v15, 0x1

    invoke-direct {v3, v14, v15}, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoader;-><init>(Lcom/aviary/android/feather/library/services/ImageCacheService;Z)V

    .line 643
    .local v3, "callable":Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoader;
    new-instance v9, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v7, v13}, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;-><init>(Lcom/aviary/android/feather/widget/IAPDialog;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 644
    .local v9, "listener":Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/IAPDialog;->mThreadService:Lcom/aviary/android/feather/library/services/ThreadPoolService;

    invoke-virtual {v14, v3, v9, v13}, Lcom/aviary/android/feather/library/services/ThreadPoolService;->submit(Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;Lcom/aviary/android/feather/library/services/FutureListener;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    .line 630
    .end local v3    # "callable":Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoader;
    .end local v7    # "imageView":Landroid/widget/ImageView;
    .end local v9    # "listener":Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;
    .end local v10    # "tag":Ljava/lang/String;
    .end local v13    # "url":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 648
    .restart local v7    # "imageView":Landroid/widget/ImageView;
    .restart local v10    # "tag":Ljava/lang/String;
    .restart local v13    # "url":Ljava/lang/String;
    :cond_4
    sget-object v14, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "image already loaded?"

    aput-object v17, v15, v16

    invoke-interface {v14, v15}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setOnCloseListener(Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCloseListener:Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;

    .line 300
    return-void
.end method

.method public update(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)V
    .locals 6
    .param p1, "updater"    # Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 315
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->valid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    sget-object v1, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "update"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "pname":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unpurchased("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") : Opened"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 324
    :cond_2
    iput-object p1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCurrentData:Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;

    .line 326
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mController:Lcom/aviary/android/feather/AviaryMainController;

    if-nez v1, :cond_4

    .line 328
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/aviary/android/feather/FeatherActivity;

    if-eqz v1, :cond_3

    .line 329
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/FeatherActivity;

    invoke-virtual {v1}, Lcom/aviary/android/feather/FeatherActivity;->getMainController()Lcom/aviary/android/feather/AviaryMainController;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mController:Lcom/aviary/android/feather/AviaryMainController;

    .line 330
    sget-object v1, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "controller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 332
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mController:Lcom/aviary/android/feather/AviaryMainController;

    if-eqz v1, :cond_3

    .line 333
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mController:Lcom/aviary/android/feather/AviaryMainController;

    const-class v2, Lcom/aviary/android/feather/library/services/ThreadPoolService;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/services/ThreadPoolService;

    iput-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mThreadService:Lcom/aviary/android/feather/library/services/ThreadPoolService;

    .line 334
    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mController:Lcom/aviary/android/feather/AviaryMainController;

    const-class v2, Lcom/aviary/android/feather/library/services/ImageCacheService;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/services/ImageCacheService;

    iput-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mCacheService:Lcom/aviary/android/feather/library/services/ImageCacheService;

    .line 341
    :cond_3
    :goto_1
    # getter for: Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->plugin:Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;
    invoke-static {p1}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->access$000(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)Lcom/aviary/android/feather/library/plugins/PluginFactory$ExternalPlugin;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 342
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/IAPDialog;->processPlugin()V

    goto/16 :goto_0

    .line 338
    :cond_4
    sget-object v1, Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "controller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    goto :goto_1

    .line 344
    :cond_5
    # getter for: Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->packagename:Ljava/lang/String;
    invoke-static {p1}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->access$100(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->type:I
    invoke-static {p1}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->access$200(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    # getter for: Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->packagename:Ljava/lang/String;
    invoke-static {p1}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->access$100(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->type:I
    invoke-static {p1}, Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;->access$200(Lcom/aviary/android/feather/widget/IAPDialog$IAPUpdater;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/aviary/android/feather/widget/IAPDialog;->downloadPlugin(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public valid()Z
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
