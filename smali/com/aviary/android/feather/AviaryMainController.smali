.class public final Lcom/aviary/android/feather/AviaryMainController;
.super Ljava/lang/Object;
.source "AviaryMainController.java"

# interfaces
.implements Lcom/aviary/android/feather/effects/AbstractPanel$OnApplyResultListener;
.implements Lcom/aviary/android/feather/effects/AbstractPanel$OnContentReadyListener;
.implements Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;
.implements Lcom/aviary/android/feather/effects/AbstractPanel$OnPreviewListener;
.implements Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;
.implements Lcom/aviary/android/feather/library/services/IAviaryController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/AviaryMainController$ExternalPluginTaskCompletedRunnable;,
        Lcom/aviary/android/feather/AviaryMainController$PluginTaskCompletedRunnable;,
        Lcom/aviary/android/feather/AviaryMainController$PluginHandler;,
        Lcom/aviary/android/feather/AviaryMainController$STATE;,
        Lcom/aviary/android/feather/AviaryMainController$OnToolListener;,
        Lcom/aviary/android/feather/AviaryMainController$OnBitmapChangeListener;,
        Lcom/aviary/android/feather/AviaryMainController$OnHiResListener;,
        Lcom/aviary/android/feather/AviaryMainController$FeatherContext;
    }
.end annotation


# static fields
.field private static mPluingsHandler:Landroid/os/Handler;


# instance fields
.field private logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

.field private mApiKey:Ljava/lang/String;

.field private mAppIsUpdated:Ljava/lang/Boolean;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapChangeListener:Lcom/aviary/android/feather/AviaryMainController$OnBitmapChangeListener;

.field private mChanged:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

.field private mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

.field private mCurrentEntry:Lcom/aviary/android/feather/library/content/ToolEntry;

.field private mCurrentState:Lcom/aviary/android/feather/AviaryMainController$STATE;

.field private mDragLayer:Lcom/aviary/android/feather/library/services/drag/DragLayer;

.field private final mHandler:Landroid/os/Handler;

.field private mHiResEnabled:Z

.field private mHiResListener:Lcom/aviary/android/feather/AviaryMainController$OnHiResListener;

.field private mPanelCreatorService:Lcom/aviary/android/feather/effects/AbstractPanelLoaderService;

.field private final mServiceLoader:Lcom/aviary/android/feather/library/services/ServiceLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aviary/android/feather/library/services/ServiceLoader",
            "<",
            "Lcom/aviary/android/feather/library/services/BaseContextService;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionId:Ljava/lang/String;

.field private mToolListener:Lcom/aviary/android/feather/AviaryMainController$OnToolListener;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/AviaryMainController$FeatherContext;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Lcom/aviary/android/feather/AviaryMainController$FeatherContext;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "apiKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-boolean v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mHiResEnabled:Z

    .line 265
    const-string/jumbo v0, "FilterManager"

    sget-object v1, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory;->getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    .line 266
    iput-object p1, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    .line 267
    iput-object p2, p0, Lcom/aviary/android/feather/AviaryMainController;->mHandler:Landroid/os/Handler;

    .line 268
    iput-object p3, p0, Lcom/aviary/android/feather/AviaryMainController;->mApiKey:Ljava/lang/String;

    .line 269
    new-instance v0, Lcom/aviary/android/feather/AviaryMainController$PluginHandler;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/AviaryMainController$PluginHandler;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V

    sput-object v0, Lcom/aviary/android/feather/AviaryMainController;->mPluingsHandler:Landroid/os/Handler;

    .line 270
    new-instance v0, Lcom/aviary/android/feather/library/services/ServiceLoader;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/library/services/ServiceLoader;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V

    iput-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mServiceLoader:Lcom/aviary/android/feather/library/services/ServiceLoader;

    .line 271
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/AviaryMainController;->initServices(Lcom/aviary/android/feather/AviaryMainController$FeatherContext;)V

    .line 273
    new-instance v0, Landroid/content/res/Configuration;

    check-cast p1, Landroid/content/Context;

    .end local p1    # "context":Lcom/aviary/android/feather/AviaryMainController$FeatherContext;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mConfiguration:Landroid/content/res/Configuration;

    .line 275
    sget-object v0, Lcom/aviary/android/feather/AviaryMainController$STATE;->DISABLED:Lcom/aviary/android/feather/AviaryMainController$STATE;

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/AviaryMainController;->setCurrentState(Lcom/aviary/android/feather/AviaryMainController$STATE;)V

    .line 276
    iput-boolean v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mChanged:Z

    .line 277
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/AviaryMainController;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/AviaryMainController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/aviary/android/feather/AviaryMainController;->mPluingsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aviary/android/feather/AviaryMainController;)Lcom/aviary/android/feather/effects/AbstractPanel;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/AviaryMainController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/aviary/android/feather/AviaryMainController;Lcom/aviary/android/feather/AviaryMainController$STATE;)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/AviaryMainController;
    .param p1, "x1"    # Lcom/aviary/android/feather/AviaryMainController$STATE;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/AviaryMainController;->setCurrentState(Lcom/aviary/android/feather/AviaryMainController$STATE;)V

    return-void
.end method

.method static synthetic access$400(Lcom/aviary/android/feather/AviaryMainController;)Lcom/aviary/android/feather/AviaryMainController$FeatherContext;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/AviaryMainController;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    return-object v0
.end method

.method private initHiResService()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 453
    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "initHiResService"

    aput-object v4, v3, v7

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 454
    const-class v2, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 456
    .local v0, "dataService":Lcom/aviary/android/feather/library/services/LocalDataService;
    const-string/jumbo v2, "output-hires-session-id"

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/library/services/LocalDataService;->getIntentContainsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 458
    const-string/jumbo v2, "output-hires-session-id"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/aviary/android/feather/library/services/LocalDataService;->getIntentValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mSessionId:Ljava/lang/String;

    .line 459
    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "session-id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aviary/android/feather/AviaryMainController;->mSessionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aviary/android/feather/AviaryMainController;->mSessionId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 461
    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mSessionId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mSessionId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_2

    .line 462
    iput-boolean v6, p0, Lcom/aviary/android/feather/AviaryMainController;->mHiResEnabled:Z

    .line 464
    const-class v2, Lcom/aviary/android/feather/library/services/HiResService;

    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/services/HiResService;

    .line 465
    .local v1, "service":Lcom/aviary/android/feather/library/services/HiResService;
    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/HiResService;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 466
    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/HiResService;->start()V

    .line 468
    :cond_0
    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mSessionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/aviary/android/feather/AviaryMainController;->mApiKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/LocalDataService;->getSourceImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/aviary/android/feather/library/services/HiResService;->load(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 476
    .end local v1    # "service":Lcom/aviary/android/feather/library/services/HiResService;
    :goto_0
    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mHiResListener:Lcom/aviary/android/feather/AviaryMainController$OnHiResListener;

    if-eqz v2, :cond_1

    .line 477
    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mHiResListener:Lcom/aviary/android/feather/AviaryMainController$OnHiResListener;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/LocalDataService;->getSourceImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/AviaryMainController$OnHiResListener;->OnLoad(Landroid/net/Uri;)V

    .line 479
    :cond_1
    return-void

    .line 470
    :cond_2
    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "session id is invalid"

    aput-object v4, v3, v7

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    goto :goto_0

    .line 473
    :cond_3
    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "missing session id"

    aput-object v4, v3, v7

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private declared-synchronized initServices(Lcom/aviary/android/feather/AviaryMainController$FeatherContext;)V
    .locals 4
    .param p1, "context"    # Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "initServices"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mServiceLoader:Lcom/aviary/android/feather/library/services/ServiceLoader;

    const-class v1, Lcom/aviary/android/feather/library/services/ThreadPoolService;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ServiceLoader;->register(Ljava/lang/Class;)V

    .line 326
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mServiceLoader:Lcom/aviary/android/feather/library/services/ServiceLoader;

    const-class v1, Lcom/aviary/android/feather/library/services/CDSService;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ServiceLoader;->register(Ljava/lang/Class;)V

    .line 327
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mServiceLoader:Lcom/aviary/android/feather/library/services/ServiceLoader;

    const-class v1, Lcom/aviary/android/feather/library/services/ConfigService;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ServiceLoader;->register(Ljava/lang/Class;)V

    .line 328
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mServiceLoader:Lcom/aviary/android/feather/library/services/ServiceLoader;

    const-class v1, Lcom/aviary/android/feather/library/services/PluginService;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ServiceLoader;->register(Ljava/lang/Class;)V

    .line 329
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mServiceLoader:Lcom/aviary/android/feather/library/services/ServiceLoader;

    const-class v1, Lcom/aviary/android/feather/effects/AbstractPanelLoaderService;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ServiceLoader;->register(Ljava/lang/Class;)V

    .line 330
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mServiceLoader:Lcom/aviary/android/feather/library/services/ServiceLoader;

    const-class v1, Lcom/aviary/android/feather/library/services/PreferenceService;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ServiceLoader;->register(Ljava/lang/Class;)V

    .line 331
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mServiceLoader:Lcom/aviary/android/feather/library/services/ServiceLoader;

    const-class v1, Lcom/aviary/android/feather/library/services/HiResService;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ServiceLoader;->register(Ljava/lang/Class;)V

    .line 332
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mServiceLoader:Lcom/aviary/android/feather/library/services/ServiceLoader;

    const-class v1, Lcom/aviary/android/feather/library/services/DragControllerService;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ServiceLoader;->register(Ljava/lang/Class;)V

    .line 333
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mServiceLoader:Lcom/aviary/android/feather/library/services/ServiceLoader;

    const-class v1, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ServiceLoader;->register(Ljava/lang/Class;)V

    .line 334
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mServiceLoader:Lcom/aviary/android/feather/library/services/ServiceLoader;

    const-class v1, Lcom/aviary/android/feather/library/services/ImageCacheService;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ServiceLoader;->register(Ljava/lang/Class;)V

    .line 335
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mServiceLoader:Lcom/aviary/android/feather/library/services/ServiceLoader;

    const-class v1, Lcom/aviary/android/feather/library/services/FileCacheService;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ServiceLoader;->register(Ljava/lang/Class;)V

    .line 337
    invoke-direct {p0}, Lcom/aviary/android/feather/AviaryMainController;->openDatabase()V

    .line 338
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/AviaryMainController;->updateInstalledPlugins(Landroid/os/Bundle;)V

    .line 339
    invoke-direct {p0}, Lcom/aviary/android/feather/AviaryMainController;->updateAvailablePlugins()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onClose(Z)V
    .locals 4
    .param p1, "isConfirmed"    # Z

    .prologue
    .line 759
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onClose"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 761
    sget-object v0, Lcom/aviary/android/feather/AviaryMainController$STATE;->CLOSING:Lcom/aviary/android/feather/AviaryMainController$STATE;

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/AviaryMainController;->setCurrentState(Lcom/aviary/android/feather/AviaryMainController$STATE;)V

    .line 763
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    invoke-interface {v0}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->getBottomBar()Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    move-result-object v0

    new-instance v1, Lcom/aviary/android/feather/AviaryMainController$5;

    invoke-direct {v1, p0, p1}, Lcom/aviary/android/feather/AviaryMainController$5;-><init>(Lcom/aviary/android/feather/AviaryMainController;Z)V

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->setOnViewChangingStatusListener(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;)V

    .line 783
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    invoke-interface {v0}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->getBottomBar()Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->close()Z

    .line 784
    return-void
.end method

.method private openDatabase()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 344
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "openDatabase"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 346
    const-class v1, Lcom/aviary/android/feather/library/services/ThreadPoolService;

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/ThreadPoolService;

    .line 347
    .local v0, "background":Lcom/aviary/android/feather/library/services/ThreadPoolService;
    if-eqz v0, :cond_0

    .line 348
    new-instance v1, Lcom/aviary/android/feather/AviaryMainController$1;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/AviaryMainController$1;-><init>(Lcom/aviary/android/feather/AviaryMainController;)V

    invoke-virtual {v0, v1, v5, v5}, Lcom/aviary/android/feather/library/services/ThreadPoolService;->submit(Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;Lcom/aviary/android/feather/library/services/FutureListener;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    .line 359
    :cond_0
    return-void
.end method

.method private prepareToolPanel(Lcom/aviary/android/feather/effects/AbstractPanel;Lcom/aviary/android/feather/library/content/ToolEntry;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "effect"    # Lcom/aviary/android/feather/effects/AbstractPanel;
    .param p2, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    .line 948
    const/4 v1, 0x0

    .line 949
    .local v1, "option_child":Landroid/view/View;
    const/4 v0, 0x0

    .line 951
    .local v0, "drawing_child":Landroid/view/View;
    instance-of v2, p1, Lcom/aviary/android/feather/effects/AbstractPanel$OptionPanel;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 952
    check-cast v2, Lcom/aviary/android/feather/effects/AbstractPanel$OptionPanel;

    iget-object v3, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    .line 953
    invoke-interface {v4}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->getOptionsPanelContainer()Landroid/view/ViewGroup;

    move-result-object v4

    .line 952
    invoke-interface {v2, v3, v4}, Lcom/aviary/android/feather/effects/AbstractPanel$OptionPanel;->getOptionView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 954
    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    invoke-interface {v2}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->getOptionsPanelContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 957
    :cond_0
    instance-of v2, p1, Lcom/aviary/android/feather/effects/AbstractPanel$ContentPanel;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 958
    check-cast v2, Lcom/aviary/android/feather/effects/AbstractPanel$ContentPanel;

    iget-object v3, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/effects/AbstractPanel$ContentPanel;->getContentView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 959
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 960
    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    invoke-interface {v2}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->getDrawingImageContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 963
    :cond_1
    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, p3}, Lcom/aviary/android/feather/effects/AbstractPanel;->onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 964
    return-void
.end method

.method private setCurrentState(Lcom/aviary/android/feather/AviaryMainController$STATE;)V
    .locals 7
    .param p1, "newState"    # Lcom/aviary/android/feather/AviaryMainController$STATE;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 984
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentState:Lcom/aviary/android/feather/AviaryMainController$STATE;

    if-eq p1, v1, :cond_0

    .line 985
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentState:Lcom/aviary/android/feather/AviaryMainController$STATE;

    .line 986
    .local v0, "previousState":Lcom/aviary/android/feather/AviaryMainController$STATE;
    iput-object p1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentState:Lcom/aviary/android/feather/AviaryMainController$STATE;

    .line 988
    sget-object v1, Lcom/aviary/android/feather/AviaryMainController$7;->$SwitchMap$com$aviary$android$feather$AviaryMainController$STATE:[I

    invoke-virtual {p1}, Lcom/aviary/android/feather/AviaryMainController$STATE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1060
    .end local v0    # "previousState":Lcom/aviary/android/feather/AviaryMainController$STATE;
    :cond_0
    :goto_0
    return-void

    .line 990
    .restart local v0    # "previousState":Lcom/aviary/android/feather/AviaryMainController$STATE;
    :pswitch_0
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v1, p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->setOnPreviewListener(Lcom/aviary/android/feather/effects/AbstractPanel$OnPreviewListener;)V

    .line 991
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v1, p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->setOnApplyResultListener(Lcom/aviary/android/feather/effects/AbstractPanel$OnApplyResultListener;)V

    .line 992
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v1, p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->setOnErrorListener(Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;)V

    .line 993
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v1, p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->setOnProgressListener(Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;)V

    .line 995
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    instance-of v1, v1, Lcom/aviary/android/feather/effects/AbstractPanel$ContentPanel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    check-cast v1, Lcom/aviary/android/feather/effects/AbstractPanel$ContentPanel;

    invoke-interface {v1, p0}, Lcom/aviary/android/feather/effects/AbstractPanel$ContentPanel;->setOnReadyListener(Lcom/aviary/android/feather/effects/AbstractPanel$OnContentReadyListener;)V

    .line 997
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1001
    :pswitch_1
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/AbstractPanel;->onActivate()V

    .line 1002
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1004
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    instance-of v1, v1, Lcom/aviary/android/feather/effects/AbstractPanel$ContentPanel;

    if-nez v1, :cond_0

    .line 1005
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1011
    :pswitch_2
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1013
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/AbstractPanel;->onDeactivate()V

    .line 1014
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    instance-of v1, v1, Lcom/aviary/android/feather/effects/AbstractPanel$ContentPanel;

    if-eqz v1, :cond_2

    .line 1015
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    check-cast v1, Lcom/aviary/android/feather/effects/AbstractPanel$ContentPanel;

    invoke-interface {v1, v5}, Lcom/aviary/android/feather/effects/AbstractPanel$ContentPanel;->setOnReadyListener(Lcom/aviary/android/feather/effects/AbstractPanel$OnContentReadyListener;)V

    .line 1019
    :cond_2
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/aviary/android/feather/AviaryMainController$6;

    invoke-direct {v2, p0}, Lcom/aviary/android/feather/AviaryMainController$6;-><init>(Lcom/aviary/android/feather/AviaryMainController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1032
    :pswitch_3
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    invoke-interface {v1}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->getOptionsPanelContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1033
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "total children: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    invoke-interface {v4}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->getOptionsPanelContainer()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V

    .line 1035
    sget-object v1, Lcom/aviary/android/feather/AviaryMainController$STATE;->DISABLED:Lcom/aviary/android/feather/AviaryMainController$STATE;

    if-eq v0, v1, :cond_3

    .line 1036
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/AbstractPanel;->onDestroy()V

    .line 1037
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v1, v5}, Lcom/aviary/android/feather/effects/AbstractPanel;->setOnPreviewListener(Lcom/aviary/android/feather/effects/AbstractPanel$OnPreviewListener;)V

    .line 1038
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v1, v5}, Lcom/aviary/android/feather/effects/AbstractPanel;->setOnApplyResultListener(Lcom/aviary/android/feather/effects/AbstractPanel$OnApplyResultListener;)V

    .line 1039
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v1, v5}, Lcom/aviary/android/feather/effects/AbstractPanel;->setOnErrorListener(Lcom/aviary/android/feather/effects/AbstractPanel$OnErrorListener;)V

    .line 1040
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v1, v5}, Lcom/aviary/android/feather/effects/AbstractPanel;->setOnProgressListener(Lcom/aviary/android/feather/effects/AbstractPanel$OnProgressListener;)V

    .line 1041
    iput-object v5, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    .line 1042
    iput-object v5, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEntry:Lcom/aviary/android/feather/library/content/ToolEntry;

    .line 1045
    :cond_3
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1047
    sget-object v1, Lcom/aviary/android/feather/AviaryMainController$STATE;->CLOSED_CONFIRMED:Lcom/aviary/android/feather/AviaryMainController$STATE;

    if-ne p1, v1, :cond_4

    sget-object v1, Lcom/aviary/android/feather/AviaryMainController$STATE;->DISABLED:Lcom/aviary/android/feather/AviaryMainController$STATE;

    if-eq v0, v1, :cond_4

    .line 1048
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mToolListener:Lcom/aviary/android/feather/AviaryMainController$OnToolListener;

    if-eqz v1, :cond_4

    .line 1049
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mToolListener:Lcom/aviary/android/feather/AviaryMainController$OnToolListener;

    invoke-interface {v1}, Lcom/aviary/android/feather/AviaryMainController$OnToolListener;->onToolCompleted()V

    .line 1052
    :cond_4
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0

    .line 1056
    :pswitch_4
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 988
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateAvailablePlugins()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 362
    iget-object v4, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "updateAvailablePlugins"

    aput-object v6, v5, v7

    invoke-interface {v4, v5}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 363
    const-class v4, Lcom/aviary/android/feather/library/services/ThreadPoolService;

    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/ThreadPoolService;

    .line 365
    .local v0, "background":Lcom/aviary/android/feather/library/services/ThreadPoolService;
    if-eqz v0, :cond_1

    .line 366
    const-class v4, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 367
    .local v2, "localData":Lcom/aviary/android/feather/library/services/LocalDataService;
    invoke-virtual {v2}, Lcom/aviary/android/feather/library/services/LocalDataService;->getExternalPacksEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 369
    new-instance v1, Lcom/aviary/android/feather/AviaryMainController$2;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/AviaryMainController$2;-><init>(Lcom/aviary/android/feather/AviaryMainController;)V

    .line 386
    .local v1, "listener":Lcom/aviary/android/feather/library/services/FutureListener;, "Lcom/aviary/android/feather/library/services/FutureListener<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    .line 388
    .local v3, "params":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->getAppIsUpdated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 389
    iget-object v4, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "app is updated, force not using cache"

    aput-object v6, v5, v7

    invoke-interface {v4, v5}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 390
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "params":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 391
    .restart local v3    # "params":Landroid/os/Bundle;
    const-string/jumbo v4, "use-cache"

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 394
    :cond_0
    new-instance v4, Lcom/aviary/android/feather/library/plugins/ExternalPacksTask;

    invoke-direct {v4}, Lcom/aviary/android/feather/library/plugins/ExternalPacksTask;-><init>()V

    invoke-virtual {v0, v4, v1, v3}, Lcom/aviary/android/feather/library/services/ThreadPoolService;->submit(Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;Lcom/aviary/android/feather/library/services/FutureListener;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    .line 398
    .end local v1    # "listener":Lcom/aviary/android/feather/library/services/FutureListener;, "Lcom/aviary/android/feather/library/services/FutureListener<Landroid/os/Bundle;>;"
    .end local v2    # "localData":Lcom/aviary/android/feather/library/services/LocalDataService;
    .end local v3    # "params":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method private updateInstalledPlugins(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 401
    iget-object v5, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "updateInstalledPlugins"

    aput-object v7, v6, v8

    invoke-interface {v5, v6}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 402
    const-class v5, Lcom/aviary/android/feather/library/services/ThreadPoolService;

    invoke-virtual {p0, v5}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/ThreadPoolService;

    .line 404
    .local v0, "background":Lcom/aviary/android/feather/library/services/ThreadPoolService;
    if-eqz v0, :cond_2

    .line 405
    const-class v5, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {p0, v5}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 406
    .local v3, "localData":Lcom/aviary/android/feather/library/services/LocalDataService;
    invoke-virtual {v3}, Lcom/aviary/android/feather/library/services/LocalDataService;->getExternalPacksEnabled()Z

    move-result v1

    .line 408
    .local v1, "externalItemsEnabled":Z
    new-instance v2, Lcom/aviary/android/feather/AviaryMainController$3;

    invoke-direct {v2, p0}, Lcom/aviary/android/feather/AviaryMainController$3;-><init>(Lcom/aviary/android/feather/AviaryMainController;)V

    .line 427
    .local v2, "listener":Lcom/aviary/android/feather/library/services/FutureListener;, "Lcom/aviary/android/feather/library/services/FutureListener<Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;>;"
    if-nez p1, :cond_0

    .line 429
    new-instance v4, Lcom/aviary/android/feather/library/plugins/PluginFetchTask;

    invoke-direct {v4}, Lcom/aviary/android/feather/library/plugins/PluginFetchTask;-><init>()V

    .line 435
    .local v4, "task":Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;, "Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable<Landroid/os/Bundle;Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;>;"
    :goto_0
    invoke-virtual {v0, v4, v2, p1}, Lcom/aviary/android/feather/library/services/ThreadPoolService;->submit(Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;Lcom/aviary/android/feather/library/services/FutureListener;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    .line 440
    .end local v1    # "externalItemsEnabled":Z
    .end local v2    # "listener":Lcom/aviary/android/feather/library/services/FutureListener;, "Lcom/aviary/android/feather/library/services/FutureListener<Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;>;"
    .end local v3    # "localData":Lcom/aviary/android/feather/library/services/LocalDataService;
    .end local v4    # "task":Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;, "Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable<Landroid/os/Bundle;Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;>;"
    :goto_1
    return-void

    .line 432
    .restart local v1    # "externalItemsEnabled":Z
    .restart local v2    # "listener":Lcom/aviary/android/feather/library/services/FutureListener;, "Lcom/aviary/android/feather/library/services/FutureListener<Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;>;"
    .restart local v3    # "localData":Lcom/aviary/android/feather/library/services/LocalDataService;
    :cond_0
    new-instance v4, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;

    if-eqz v1, :cond_1

    sget-object v5, Lcom/aviary/android/feather/AviaryMainController;->mPluingsHandler:Landroid/os/Handler;

    :goto_2
    invoke-direct {v4, v5}, Lcom/aviary/android/feather/library/plugins/PluginUpdaterTask;-><init>(Landroid/os/Handler;)V

    .restart local v4    # "task":Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;, "Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable<Landroid/os/Bundle;Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;>;"
    goto :goto_0

    .end local v4    # "task":Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;, "Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable<Landroid/os/Bundle;Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;>;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 438
    .end local v1    # "externalItemsEnabled":Z
    .end local v2    # "listener":Lcom/aviary/android/feather/library/services/FutureListener;, "Lcom/aviary/android/feather/library/services/FutureListener<Lcom/aviary/android/feather/library/plugins/PluginFetchTask$Result;>;"
    .end local v3    # "localData":Lcom/aviary/android/feather/library/services/LocalDataService;
    :cond_2
    iget-object v5, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "failed to retrieve ThreadPoolService"

    aput-object v7, v6, v8

    invoke-interface {v5, v6}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public activateTool(Lcom/aviary/android/feather/library/content/ToolEntry;)V
    .locals 1
    .param p1, "tag"    # Lcom/aviary/android/feather/library/content/ToolEntry;

    .prologue
    .line 482
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/aviary/android/feather/AviaryMainController;->activateTool(Lcom/aviary/android/feather/library/content/ToolEntry;Landroid/os/Bundle;)V

    .line 483
    return-void
.end method

.method public activateTool(Lcom/aviary/android/feather/library/content/ToolEntry;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "tag"    # Lcom/aviary/android/feather/library/content/ToolEntry;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "There is already an active effect. Cannot activate new"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    :cond_2
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mPanelCreatorService:Lcom/aviary/android/feather/effects/AbstractPanelLoaderService;

    if-nez v1, :cond_3

    const-class v1, Lcom/aviary/android/feather/effects/AbstractPanelLoaderService;

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/effects/AbstractPanelLoaderService;

    iput-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mPanelCreatorService:Lcom/aviary/android/feather/effects/AbstractPanelLoaderService;

    .line 496
    :cond_3
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mPanelCreatorService:Lcom/aviary/android/feather/effects/AbstractPanelLoaderService;

    invoke-virtual {v1, p1}, Lcom/aviary/android/feather/effects/AbstractPanelLoaderService;->createNew(Lcom/aviary/android/feather/library/content/ToolEntry;)Lcom/aviary/android/feather/effects/AbstractPanel;

    move-result-object v0

    .line 498
    .local v0, "effect":Lcom/aviary/android/feather/effects/AbstractPanel;
    if-eqz v0, :cond_0

    .line 499
    iput-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    .line 500
    iput-object p1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEntry:Lcom/aviary/android/feather/library/content/ToolEntry;

    .line 502
    sget-object v1, Lcom/aviary/android/feather/AviaryMainController$STATE;->OPENING:Lcom/aviary/android/feather/AviaryMainController$STATE;

    invoke-direct {p0, v1}, Lcom/aviary/android/feather/AviaryMainController;->setCurrentState(Lcom/aviary/android/feather/AviaryMainController$STATE;)V

    .line 503
    invoke-direct {p0, v0, p1, p2}, Lcom/aviary/android/feather/AviaryMainController;->prepareToolPanel(Lcom/aviary/android/feather/effects/AbstractPanel;Lcom/aviary/android/feather/library/content/ToolEntry;Landroid/os/Bundle;)V

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEntry:Lcom/aviary/android/feather/library/content/ToolEntry;

    iget-object v2, v2, Lcom/aviary/android/feather/library/content/ToolEntry;->name:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": opened"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 507
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    invoke-interface {v1}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->getBottomBar()Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    move-result-object v1

    new-instance v2, Lcom/aviary/android/feather/AviaryMainController$4;

    invoke-direct {v2, p0}, Lcom/aviary/android/feather/AviaryMainController$4;-><init>(Lcom/aviary/android/feather/AviaryMainController;)V

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->setOnViewChangingStatusListener(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnViewChangingStatusListener;)V

    .line 529
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    invoke-interface {v1}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->getBottomBar()Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->open()Z

    goto :goto_0
.end method

.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 730
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "FilterManager::cancel"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 732
    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "there is no current effect active in the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEntry:Lcom/aviary/android/feather/library/content/ToolEntry;

    iget-object v1, v1, Lcom/aviary/android/feather/library/content/ToolEntry;->name:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 738
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->onCancelled()V

    .line 741
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->getIsChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 743
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v3}, Lcom/aviary/android/feather/AviaryMainController;->setNextBitmap(Landroid/graphics/Bitmap;Z)V

    .line 748
    :goto_1
    invoke-direct {p0, v4}, Lcom/aviary/android/feather/AviaryMainController;->onClose(Z)V

    goto :goto_0

    .line 746
    :cond_3
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v3}, Lcom/aviary/android/feather/AviaryMainController;->setNextBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_1
.end method

.method public dispose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 534
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Deactivate and destroy current panel"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 536
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->onDeactivate()V

    .line 537
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->onDestroy()V

    .line 538
    iput-object v4, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mServiceLoader:Lcom/aviary/android/feather/library/services/ServiceLoader;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/ServiceLoader;->dispose()V

    .line 541
    iput-object v4, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    .line 542
    iput-object v4, p0, Lcom/aviary/android/feather/AviaryMainController;->mToolListener:Lcom/aviary/android/feather/AviaryMainController$OnToolListener;

    .line 543
    iput-object v4, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmapChangeListener:Lcom/aviary/android/feather/AviaryMainController$OnBitmapChangeListener;

    .line 545
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 546
    return-void
.end method

.method public downloadPlugin(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1234
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/aviary/android/feather/AviaryMainController;->searchOrDownloadPlugin(Ljava/lang/String;IZ)V

    .line 1235
    return-void
.end method

.method public getActiveTool()Lcom/aviary/android/feather/library/content/ToolEntry;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEntry:Lcom/aviary/android/feather/library/content/ToolEntry;

    return-object v0
.end method

.method public getAppIsUpdated()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 286
    iget-object v4, p0, Lcom/aviary/android/feather/AviaryMainController;->mAppIsUpdated:Ljava/lang/Boolean;

    if-nez v4, :cond_0

    .line 287
    const-class v4, Lcom/aviary/android/feather/library/services/PreferenceService;

    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/library/services/PreferenceService;

    .line 288
    .local v2, "service":Lcom/aviary/android/feather/library/services/PreferenceService;
    if-eqz v2, :cond_3

    .line 292
    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 294
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1

    .line 295
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 300
    .local v3, "versionCode":I
    :goto_0
    const-string/jumbo v4, "aviary-package-version"

    invoke-virtual {v2, v4, v8}, Lcom/aviary/android/feather/library/services/PreferenceService;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 302
    .local v1, "registeredVersion":I
    iget-object v4, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registered version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", my version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v4, v5}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 304
    if-eq v1, v3, :cond_2

    .line 305
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/aviary/android/feather/AviaryMainController;->mAppIsUpdated:Ljava/lang/Boolean;

    .line 306
    const-string/jumbo v4, "aviary-package-version"

    invoke-virtual {v2, v4, v3}, Lcom/aviary/android/feather/library/services/PreferenceService;->putInt(Ljava/lang/String;I)Z

    .line 316
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "registeredVersion":I
    .end local v2    # "service":Lcom/aviary/android/feather/library/services/PreferenceService;
    .end local v3    # "versionCode":I
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/aviary/android/feather/AviaryMainController;->mAppIsUpdated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 297
    .restart local v0    # "info":Landroid/content/pm/PackageInfo;
    .restart local v2    # "service":Lcom/aviary/android/feather/library/services/PreferenceService;
    :cond_1
    const/16 v3, 0x64

    .restart local v3    # "versionCode":I
    goto :goto_0

    .line 308
    .restart local v1    # "registeredVersion":I
    :cond_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/aviary/android/feather/AviaryMainController;->mAppIsUpdated:Ljava/lang/Boolean;

    goto :goto_1

    .line 311
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "registeredVersion":I
    .end local v3    # "versionCode":I
    :cond_3
    iget-object v4, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "can\'t open preferenceService"

    aput-object v6, v5, v8

    invoke-interface {v4, v5}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 312
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/aviary/android/feather/AviaryMainController;->mAppIsUpdated:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public getBaseActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getBaseContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapIsChanged()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mChanged:Z

    return v0
.end method

.method public getCurrentImageViewMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    invoke-interface {v0}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->getMainImage()Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    move-result-object v0

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getDragLayer()Lcom/aviary/android/feather/library/services/drag/DragLayer;
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mDragLayer:Lcom/aviary/android/feather/library/services/drag/DragLayer;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentState:Lcom/aviary/android/feather/AviaryMainController$STATE;

    sget-object v1, Lcom/aviary/android/feather/AviaryMainController$STATE;->DISABLED:Lcom/aviary/android/feather/AviaryMainController$STATE;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 630
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mServiceLoader:Lcom/aviary/android/feather/library/services/ServiceLoader;

    invoke-virtual {v1, p1}, Lcom/aviary/android/feather/library/services/ServiceLoader;->getService(Ljava/lang/Class;)Lcom/aviary/android/feather/library/services/BaseContextService;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 633
    :goto_0
    return-object v1

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 633
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentState:Lcom/aviary/android/feather/AviaryMainController$STATE;

    sget-object v1, Lcom/aviary/android/feather/AviaryMainController$STATE;->CLOSED_CANCEL:Lcom/aviary/android/feather/AviaryMainController$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentState:Lcom/aviary/android/feather/AviaryMainController$STATE;

    sget-object v1, Lcom/aviary/android/feather/AviaryMainController$STATE;->CLOSED_CONFIRMED:Lcom/aviary/android/feather/AviaryMainController$STATE;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentState:Lcom/aviary/android/feather/AviaryMainController$STATE;

    sget-object v1, Lcom/aviary/android/feather/AviaryMainController$STATE;->OPENED:Lcom/aviary/android/feather/AviaryMainController$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivate(Landroid/graphics/Bitmap;[I)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "originalSize"    # [I

    .prologue
    .line 663
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentState:Lcom/aviary/android/feather/AviaryMainController$STATE;

    sget-object v2, Lcom/aviary/android/feather/AviaryMainController$STATE;->DISABLED:Lcom/aviary/android/feather/AviaryMainController$STATE;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot activate. Already active!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 665
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 666
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    .line 669
    :cond_1
    iput-object p1, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    .line 671
    const-class v1, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 672
    .local v0, "dataService":Lcom/aviary/android/feather/library/services/LocalDataService;
    invoke-virtual {v0, p2}, Lcom/aviary/android/feather/library/services/LocalDataService;->setSourceImageSize([I)V

    .line 674
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mChanged:Z

    .line 675
    sget-object v1, Lcom/aviary/android/feather/AviaryMainController$STATE;->CLOSED_CONFIRMED:Lcom/aviary/android/feather/AviaryMainController$STATE;

    invoke-direct {p0, v1}, Lcom/aviary/android/feather/AviaryMainController;->setCurrentState(Lcom/aviary/android/feather/AviaryMainController$STATE;)V

    .line 676
    invoke-direct {p0}, Lcom/aviary/android/feather/AviaryMainController;->initHiResService()V

    .line 677
    return-void
.end method

.method public onApply()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 683
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "FilterManager::onapply"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 684
    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "there is no current effect active in the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_2
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->getIsChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 691
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->onSave()V

    .line 692
    iput-boolean v4, p0, Lcom/aviary/android/feather/AviaryMainController;->mChanged:Z

    goto :goto_0

    .line 694
    :cond_3
    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->onCancel()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 706
    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 713
    :cond_0
    :goto_0
    return v0

    .line 707
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentState:Lcom/aviary/android/feather/AviaryMainController$STATE;

    sget-object v2, Lcom/aviary/android/feather/AviaryMainController$STATE;->DISABLED:Lcom/aviary/android/feather/AviaryMainController$STATE;

    if-eq v1, v2, :cond_0

    .line 708
    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->onCancel()V

    .line 711
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCancel()V
    .locals 2

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "there is no current effect active in the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_2
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/AbstractPanel;->onCancel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->cancel()V

    goto :goto_0
.end method

.method public onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "result"    # Landroid/graphics/Bitmap;
    .param p2, "actions"    # Lcom/aviary/android/feather/headless/moa/MoaActionList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/aviary/android/feather/headless/moa/MoaActionList;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "trackingAttributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEntry:Lcom/aviary/android/feather/library/content/ToolEntry;

    iget-object v2, v2, Lcom/aviary/android/feather/library/content/ToolEntry;->name:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": applied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 790
    if-eqz p1, :cond_3

    .line 791
    invoke-virtual {p0, p1, v4}, Lcom/aviary/android/feather/AviaryMainController;->setNextBitmap(Landroid/graphics/Bitmap;Z)V

    .line 797
    :goto_0
    invoke-direct {p0, v4}, Lcom/aviary/android/feather/AviaryMainController;->onClose(Z)V

    .line 799
    iget-boolean v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mHiResEnabled:Z

    if-eqz v1, :cond_1

    .line 801
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "WTF actionlist is null!!!!"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 803
    :cond_0
    const-class v1, Lcom/aviary/android/feather/library/services/HiResService;

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/HiResService;

    .line 804
    .local v0, "service":Lcom/aviary/android/feather/library/services/HiResService;
    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/HiResService;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 805
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mSessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mApiKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/aviary/android/feather/library/services/HiResService;->execute(Ljava/lang/String;Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    .line 809
    .end local v0    # "service":Lcom/aviary/android/feather/library/services/HiResService;
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mHiResListener:Lcom/aviary/android/feather/AviaryMainController$OnHiResListener;

    if-eqz v1, :cond_2

    .line 810
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mHiResListener:Lcom/aviary/android/feather/AviaryMainController$OnHiResListener;

    invoke-interface {v1, p2}, Lcom/aviary/android/feather/AviaryMainController$OnHiResListener;->OnApplyActions(Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    .line 812
    :cond_2
    return-void

    .line 793
    :cond_3
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "Error: returned bitmap is null!"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 794
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, v4}, Lcom/aviary/android/feather/AviaryMainController;->setNextBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)Z
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1102
    const/4 v0, 0x0

    .line 1103
    .local v0, "result":Z
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onConfigurationChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aviary/android/feather/AviaryMainController;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1105
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    if-eqz v1, :cond_0

    .line 1106
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/AbstractPanel;->isCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1107
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "onConfigurationChanged, sending event to "

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    aput-object v3, v2, v6

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1108
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEffect:Lcom/aviary/android/feather/effects/AbstractPanel;

    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1, v2}, Lcom/aviary/android/feather/effects/AbstractPanel;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 1109
    const/4 v0, 0x1

    .line 1113
    :cond_0
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mConfiguration:Landroid/content/res/Configuration;

    .line 1114
    return v0
.end method

.method public onError(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "yesLabel"    # I
    .param p3, "yesListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 861
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/aviary/android/feather/R$string;->feather_generic_error_title:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 862
    invoke-virtual {v0, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 863
    return-void
.end method

.method public onError(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "yesLabel"    # I
    .param p3, "yesListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "noLabel"    # I
    .param p5, "noListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 867
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/aviary/android/feather/R$string;->feather_generic_error_title:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 868
    invoke-virtual {v0, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    .line 869
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 870
    return-void
.end method

.method public onMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "yesLabel"    # I
    .param p4, "yesListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 874
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    .line 875
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 876
    return-void
.end method

.method public onMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "yesLabel"    # I
    .param p4, "yesListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "noLabel"    # I
    .param p6, "noListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 881
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 882
    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    .line 883
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 884
    return-void
.end method

.method public onPluginChanged(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1127
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "onReceive"

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1128
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "data"

    aput-object v2, v1, v3

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1129
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/AviaryMainController;->updateInstalledPlugins(Landroid/os/Bundle;)V

    .line 1130
    return-void
.end method

.method public onPreviewChange(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;
    .param p2, "reset"    # Z

    .prologue
    .line 888
    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmapChangeListener:Lcom/aviary/android/feather/AviaryMainController$OnBitmapChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmapChangeListener:Lcom/aviary/android/feather/AviaryMainController$OnBitmapChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/aviary/android/feather/AviaryMainController$OnBitmapChangeListener;->onPreviewChange(Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method public onPreviewUpdated()V
    .locals 1

    .prologue
    .line 894
    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmapChangeListener:Lcom/aviary/android/feather/AviaryMainController$OnBitmapChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmapChangeListener:Lcom/aviary/android/feather/AviaryMainController$OnBitmapChangeListener;

    invoke-interface {v0}, Lcom/aviary/android/feather/AviaryMainController$OnBitmapChangeListener;->onInvalidateBitmap()V

    goto :goto_0
.end method

.method public onProgressEnd()V
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    invoke-interface {v0}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->hideToolProgress()V

    .line 1193
    return-void
.end method

.method public onProgressModalEnd()V
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    invoke-interface {v0}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->hideModalProgress()V

    .line 1203
    return-void
.end method

.method public onProgressModalStart()V
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    invoke-interface {v0}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->showModalProgress()V

    .line 1198
    return-void
.end method

.method public onProgressStart()V
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    invoke-interface {v0}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->showToolProgress()V

    .line 1188
    return-void
.end method

.method public onReady(Lcom/aviary/android/feather/effects/AbstractPanel;)V
    .locals 2
    .param p1, "panel"    # Lcom/aviary/android/feather/effects/AbstractPanel;

    .prologue
    .line 900
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 901
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 902
    return-void
.end method

.method public onReplaceImage(Landroid/graphics/Bitmap;[I)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "originalSize"    # [I

    .prologue
    const/4 v6, 0x0

    .line 911
    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot replace bitmap. Not active nor closed!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 913
    :cond_1
    const-class v2, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 915
    .local v0, "dataService":Lcom/aviary/android/feather/library/services/LocalDataService;
    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 916
    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[recycle] original Bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V

    .line 917
    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 918
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    .line 920
    :cond_2
    iput-boolean v6, p0, Lcom/aviary/android/feather/AviaryMainController;->mChanged:Z

    .line 921
    iput-object p1, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    .line 923
    invoke-virtual {v0, p2}, Lcom/aviary/android/feather/library/services/LocalDataService;->setSourceImageSize([I)V

    .line 925
    const-class v2, Lcom/aviary/android/feather/library/services/HiResService;

    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/services/HiResService;

    .line 926
    .local v1, "service":Lcom/aviary/android/feather/library/services/HiResService;
    iget-boolean v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mHiResEnabled:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/HiResService;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 927
    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mSessionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/aviary/android/feather/AviaryMainController;->mApiKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/LocalDataService;->getSourceImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/aviary/android/feather/library/services/HiResService;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 930
    :cond_3
    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mHiResListener:Lcom/aviary/android/feather/AviaryMainController$OnHiResListener;

    if-eqz v2, :cond_4

    .line 931
    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->mHiResListener:Lcom/aviary/android/feather/AviaryMainController$OnHiResListener;

    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/LocalDataService;->getSourceImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/AviaryMainController$OnHiResListener;->OnLoad(Landroid/net/Uri;)V

    .line 933
    :cond_4
    return-void
.end method

.method public onSave()V
    .locals 1

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 940
    :cond_0
    return-void
.end method

.method public restoreToolbarTitle()V
    .locals 5

    .prologue
    .line 1220
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEntry:Lcom/aviary/android/feather/library/content/ToolEntry;

    if-eqz v1, :cond_0

    .line 1221
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    iget-object v3, p0, Lcom/aviary/android/feather/AviaryMainController;->mCurrentEntry:Lcom/aviary/android/feather/library/content/ToolEntry;

    iget v3, v3, Lcom/aviary/android/feather/library/content/ToolEntry;->labelResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1222
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1224
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public searchOrDownloadPlugin(Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "search"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1252
    iget-object v2, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "searchOrDownloadPlugin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", search: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1254
    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2, p3}, Lcom/aviary/android/feather/library/tracking/Tracker;->initializeTracking(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 1256
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1257
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "market://search?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1261
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1266
    :goto_1
    return-void

    .line 1258
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/aviary/android/feather/R$string;->feather_activity_not_found:I

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1264
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public searchPlugin(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1240
    invoke-static {p1}, Lcom/aviary/android/feather/library/content/FeatherIntent$PluginType;->getName(I)Ljava/lang/String;

    move-result-object v0

    .line 1241
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "com.aviary.android.feather.plugins."

    .line 1242
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1248
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1, p1, v2}, Lcom/aviary/android/feather/AviaryMainController;->searchOrDownloadPlugin(Ljava/lang/String;IZ)V

    .line 1249
    return-void

    .line 1245
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setDragLayer(Lcom/aviary/android/feather/library/services/drag/DragLayer;)V
    .locals 0
    .param p1, "view"    # Lcom/aviary/android/feather/library/services/drag/DragLayer;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/aviary/android/feather/AviaryMainController;->mDragLayer:Lcom/aviary/android/feather/library/services/drag/DragLayer;

    .line 321
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 1069
    if-nez p1, :cond_0

    .line 1070
    invoke-virtual {p0}, Lcom/aviary/android/feather/AviaryMainController;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1071
    sget-object v0, Lcom/aviary/android/feather/AviaryMainController$STATE;->DISABLED:Lcom/aviary/android/feather/AviaryMainController$STATE;

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/AviaryMainController;->setCurrentState(Lcom/aviary/android/feather/AviaryMainController$STATE;)V

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "FilterManager must be closed to change state"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method setNextBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "update"    # Z

    .prologue
    .line 833
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/aviary/android/feather/AviaryMainController;->setNextBitmap(Landroid/graphics/Bitmap;ZLandroid/graphics/Matrix;)V

    .line 834
    return-void
.end method

.method setNextBitmap(Landroid/graphics/Bitmap;ZLandroid/graphics/Matrix;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "update"    # Z
    .param p3, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 847
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "setNextBitmap"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 849
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmapChangeListener:Lcom/aviary/android/feather/AviaryMainController$OnBitmapChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmapChangeListener:Lcom/aviary/android/feather/AviaryMainController$OnBitmapChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/aviary/android/feather/AviaryMainController$OnBitmapChangeListener;->onBitmapChange(Landroid/graphics/Bitmap;ZLandroid/graphics/Matrix;)V

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 852
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[recycle] original Bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V

    .line 853
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 854
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    .line 856
    :cond_1
    iput-object p1, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmap:Landroid/graphics/Bitmap;

    .line 857
    return-void
.end method

.method public setOnBitmapChangeListener(Lcom/aviary/android/feather/AviaryMainController$OnBitmapChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/AviaryMainController$OnBitmapChangeListener;

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/aviary/android/feather/AviaryMainController;->mBitmapChangeListener:Lcom/aviary/android/feather/AviaryMainController$OnBitmapChangeListener;

    .line 1090
    return-void
.end method

.method public setOnToolListener(Lcom/aviary/android/feather/AviaryMainController$OnToolListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/AviaryMainController$OnToolListener;

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/aviary/android/feather/AviaryMainController;->mToolListener:Lcom/aviary/android/feather/AviaryMainController$OnToolListener;

    .line 1086
    return-void
.end method

.method public setPanelApplyStatusEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1228
    iget-object v3, p0, Lcom/aviary/android/feather/AviaryMainController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1229
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1230
    return-void

    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 1228
    goto :goto_0
.end method

.method public setToolbarTitle(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 1207
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1208
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1209
    return-void
.end method

.method public setToolbarTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 1213
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1214
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/aviary/android/feather/AviaryMainController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1215
    return-void
.end method
