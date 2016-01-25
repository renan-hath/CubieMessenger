.class public Lcom/aviary/android/feather/FeatherActivity;
.super Lcom/aviary/android/feather/library/MonitoredActivity;
.source "FeatherActivity.java"

# interfaces
.implements Lcom/aviary/android/feather/AviaryMainController$FeatherContext;
.implements Lcom/aviary/android/feather/AviaryMainController$OnBitmapChangeListener;
.implements Lcom/aviary/android/feather/AviaryMainController$OnToolListener;
.implements Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask$OnImageDownloadListener;
.implements Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnBottomBarItemClickListener;
.implements Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$OnToolbarClickListener;
.implements Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/FeatherActivity$ListAdapter;
    }
.end annotation


# static fields
.field protected static logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;


# instance fields
.field private mBottomBarFlipper:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

.field private mDefaultReceiver:Landroid/content/BroadcastReceiver;

.field private mDownloadTask:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;

.field private mDragLayer:Lcom/aviary/android/feather/library/services/drag/DragLayer;

.field private mDrawingViewContainer:Landroid/view/ViewGroup;

.field protected final mHandler:Landroid/os/Handler;

.field protected mHideExitAlertConfirmation:Z

.field private mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

.field private mInlineProgressLoader:Landroid/view/View;

.field private mIsRunning:Z

.field private mListEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/library/content/ToolEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mMainController:Lcom/aviary/android/feather/AviaryMainController;

.field private mOrientation:I

.field private mPopupContainer:Landroid/view/ViewGroup;

.field protected mSaving:Z

.field private mToastLoader:Lcom/aviary/android/feather/widget/AviaryToast;

.field protected mToolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

.field private mToolsList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

.field private mUIHandler:Landroid/os/Handler;

.field private pResultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 379
    const-class v0, Lcom/aviary/android/feather/FeatherActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory;->getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    .line 380
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 369
    invoke-direct {p0}, Lcom/aviary/android/feather/library/MonitoredActivity;-><init>()V

    .line 388
    iput v1, p0, Lcom/aviary/android/feather/FeatherActivity;->pResultCode:I

    .line 429
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mHandler:Landroid/os/Handler;

    .line 432
    iput-boolean v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mHideExitAlertConfirmation:Z

    .line 448
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/aviary/android/feather/FeatherActivity$1;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/FeatherActivity$1;-><init>(Lcom/aviary/android/feather/FeatherActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mUIHandler:Landroid/os/Handler;

    .line 516
    new-instance v0, Lcom/aviary/android/feather/FeatherActivity$2;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/FeatherActivity$2;-><init>(Lcom/aviary/android/feather/FeatherActivity;)V

    iput-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mDefaultReceiver:Landroid/content/BroadcastReceiver;

    .line 1694
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/FeatherActivity;)Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/FeatherActivity;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/FeatherActivity;)Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/FeatherActivity;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aviary/android/feather/FeatherActivity;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/FeatherActivity;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolsList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/aviary/android/feather/FeatherActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/FeatherActivity;

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/aviary/android/feather/FeatherActivity;->onRevert()V

    return-void
.end method

.method static synthetic access$400(Lcom/aviary/android/feather/FeatherActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/FeatherActivity;

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/aviary/android/feather/FeatherActivity;->loadTools()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/aviary/android/feather/FeatherActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/FeatherActivity;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mInlineProgressLoader:Landroid/view/View;

    return-object v0
.end method

.method private delayedInitializeTools()V
    .locals 2

    .prologue
    .line 1048
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aviary/android/feather/FeatherActivity$11;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/FeatherActivity$11;-><init>(Lcom/aviary/android/feather/FeatherActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1062
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1063
    return-void
.end method

.method private hideProgressLoader()V
    .locals 3

    .prologue
    .line 1360
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1361
    .local v0, "fadeout":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1362
    new-instance v1, Lcom/aviary/android/feather/FeatherActivity$13;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/FeatherActivity$13;-><init>(Lcom/aviary/android/feather/FeatherActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1376
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mInlineProgressLoader:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1377
    return-void
.end method

.method private loadStandaloneTools()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1066
    invoke-static {p0}, Lcom/aviary/android/feather/library/utils/PackageManagerUtils;->isStandalone(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1067
    sget-object v2, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "isStandalone, loadStandaloneTools"

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1073
    :try_start_0
    const-string/jumbo v2, "com.aviary.android.feather.utils.SettingsUtils"

    const-string/jumbo v3, "getInstance"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/utils/ReflectionUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1075
    .local v0, "instance":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1076
    const-string/jumbo v2, "getToolList"

    invoke-static {v0, v2}, Lcom/aviary/android/feather/library/utils/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1077
    .local v1, "toolList":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1078
    check-cast v1, [Ljava/lang/String;

    .end local v1    # "toolList":Ljava/lang/Object;
    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1085
    .end local v0    # "instance":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 1081
    :catch_0
    move-exception v2

    .line 1085
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadTools()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/library/content/ToolEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1089
    sget-object v7, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "loadTools"

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1091
    iget-object v7, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    const-class v8, Lcom/aviary/android/feather/effects/AbstractPanelLoaderService;

    invoke-virtual {v7, v8}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aviary/android/feather/effects/AbstractPanelLoaderService;

    .line 1092
    .local v5, "service":Lcom/aviary/android/feather/effects/AbstractPanelLoaderService;
    if-nez v5, :cond_1

    const/4 v4, 0x0

    .line 1117
    :cond_0
    return-object v4

    .line 1093
    :cond_1
    iget-object v7, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolList:Ljava/util/List;

    if-nez v7, :cond_2

    .line 1095
    invoke-direct {p0}, Lcom/aviary/android/feather/FeatherActivity;->loadStandaloneTools()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolList:Ljava/util/List;

    .line 1097
    iget-object v7, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolList:Ljava/util/List;

    if-nez v7, :cond_2

    .line 1098
    invoke-static {}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory;->getDefaultFilters()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolList:Ljava/util/List;

    .line 1102
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    .local v4, "listEntries":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/library/content/ToolEntry;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1104
    .local v1, "entryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/aviary/android/feather/library/content/ToolEntry;>;"
    invoke-virtual {v5}, Lcom/aviary/android/feather/effects/AbstractPanelLoaderService;->getToolsEntries()[Lcom/aviary/android/feather/library/content/ToolEntry;

    move-result-object v0

    .line 1106
    .local v0, "all_entries":[Lcom/aviary/android/feather/library/content/ToolEntry;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v0

    if-ge v3, v7, :cond_4

    .line 1107
    aget-object v7, v0, v3

    iget-object v2, v7, Lcom/aviary/android/feather/library/content/ToolEntry;->name:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    .line 1108
    .local v2, "entry_name":Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;
    iget-object v7, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1106
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1109
    :cond_3
    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v0, v3

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1112
    .end local v2    # "entry_name":Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;
    :cond_4
    iget-object v7, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1113
    .local v6, "toolName":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1114
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private onInitializeUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 700
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    invoke-virtual {v1, p0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setOnToolbarClickListener(Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$OnToolbarClickListener;)V

    .line 703
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v1, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setDoubleTapEnabled(Z)V

    .line 704
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    sget-object v2, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setDisplayType(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)V

    .line 707
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolsList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setGravity(I)V

    .line 708
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolsList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v1, v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOverScrollMode(I)V

    .line 709
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolsList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 711
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mBottomBarFlipper:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    invoke-virtual {v1, p0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->setOnBottomBarItemClickListener(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnBottomBarItemClickListener;)V

    .line 713
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    const-class v2, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 715
    .local v0, "dataService":Lcom/aviary/android/feather/library/services/LocalDataService;
    const-string/jumbo v1, "white-label"

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/LocalDataService;->getIntentContainsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mBottomBarFlipper:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->hideLogo()V

    .line 718
    :cond_0
    return-void
.end method

.method private onRevert()V
    .locals 3

    .prologue
    .line 868
    const-string/jumbo v1, "feather: reset image"

    invoke-static {v1}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 870
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    const-class v2, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 871
    .local v0, "service":Lcom/aviary/android/feather/library/services/LocalDataService;
    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/LocalDataService;->getSourceImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/FeatherActivity;->loadImage(Landroid/net/Uri;)V

    .line 872
    return-void
.end method


# virtual methods
.method public activatePopupContainer()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mPopupContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1171
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mPopupContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected computeOriginalFilePath()V
    .locals 5

    .prologue
    .line 1281
    iget-object v3, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    const-class v4, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {v3, v4}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 1282
    .local v0, "data":Lcom/aviary/android/feather/library/services/LocalDataService;
    if-eqz v0, :cond_0

    .line 1283
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/aviary/android/feather/library/services/LocalDataService;->setSourceImagePath(Ljava/lang/String;)V

    .line 1284
    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/LocalDataService;->getSourceImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 1285
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 1286
    invoke-static {p0, v2}, Lcom/aviary/android/feather/headless/utils/IOUtils;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1287
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1288
    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/LocalDataService;->setSourceImagePath(Ljava/lang/String;)V

    .line 1292
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method protected createAboutDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 786
    new-instance v1, Landroid/app/Dialog;

    sget v5, Lcom/aviary/android/feather/R$style;->AviaryTheme_Dialog_Custom:I

    invoke-direct {v1, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 787
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 788
    sget v5, Lcom/aviary/android/feather/R$layout;->aviary_feedback_dialog_view:I

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 789
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 791
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 792
    .local v2, "dialogWindow":Landroid/view/Window;
    sget v5, Lcom/aviary/android/feather/R$id;->aviary_version:I

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 793
    .local v4, "textVersion":Landroid/widget/TextView;
    sget v5, Lcom/aviary/android/feather/R$id;->aviary_text:I

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 794
    .local v3, "textMessahe":Landroid/widget/TextView;
    sget v5, Lcom/aviary/android/feather/R$id;->aviary_button1:I

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 796
    .local v0, "button1":Landroid/widget/Button;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/aviary/android/feather/R$string;->feather_version:I

    invoke-virtual {p0, v6}, Lcom/aviary/android/feather/FeatherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "3.0.0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    sget v5, Lcom/aviary/android/feather/R$string;->feather_about_dialog_message:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 798
    const-string/jumbo v5, "aviary.com/android"

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 800
    sget v5, Lcom/aviary/android/feather/R$id;->aviary_button2:I

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/aviary/android/feather/FeatherActivity$7;

    invoke-direct {v6, p0, v1}, Lcom/aviary/android/feather/FeatherActivity$7;-><init>(Lcom/aviary/android/feather/FeatherActivity;Landroid/app/Dialog;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    sget v5, Lcom/aviary/android/feather/R$id;->aviary_button1:I

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/aviary/android/feather/FeatherActivity$8;

    invoke-direct {v6, p0, v1}, Lcom/aviary/android/feather/FeatherActivity$8;-><init>(Lcom/aviary/android/feather/FeatherActivity;Landroid/app/Dialog;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 818
    return-object v1
.end method

.method protected createFeedbackDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 826
    new-instance v1, Landroid/app/Dialog;

    sget v5, Lcom/aviary/android/feather/R$style;->AviaryTheme_Dialog_Custom:I

    invoke-direct {v1, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 827
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 828
    sget v5, Lcom/aviary/android/feather/R$layout;->aviary_feedback_dialog_view:I

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 829
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 831
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 832
    .local v2, "dialogWindow":Landroid/view/Window;
    sget v5, Lcom/aviary/android/feather/R$id;->aviary_version:I

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 833
    .local v4, "textVersion":Landroid/widget/TextView;
    sget v5, Lcom/aviary/android/feather/R$id;->aviary_text:I

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 834
    .local v3, "textMessahe":Landroid/widget/TextView;
    sget v5, Lcom/aviary/android/feather/R$id;->aviary_button1:I

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 836
    .local v0, "button1":Landroid/widget/Button;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/aviary/android/feather/R$string;->feather_version:I

    invoke-virtual {p0, v6}, Lcom/aviary/android/feather/FeatherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "3.0.0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    sget v5, Lcom/aviary/android/feather/R$string;->feather_feedback_dialog_message:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 838
    sget v5, Lcom/aviary/android/feather/R$string;->feather_send_feedback:I

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 840
    sget v5, Lcom/aviary/android/feather/R$id;->aviary_button2:I

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/aviary/android/feather/FeatherActivity$9;

    invoke-direct {v6, p0, v1}, Lcom/aviary/android/feather/FeatherActivity$9;-><init>(Lcom/aviary/android/feather/FeatherActivity;Landroid/app/Dialog;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 848
    sget v5, Lcom/aviary/android/feather/R$id;->aviary_button1:I

    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/aviary/android/feather/FeatherActivity$10;

    invoke-direct {v6, p0, v1}, Lcom/aviary/android/feather/FeatherActivity$10;-><init>(Lcom/aviary/android/feather/FeatherActivity;Landroid/app/Dialog;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 861
    return-object v1
.end method

.method public deactivatePopupContainer()V
    .locals 2

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mPopupContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1177
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mPopupContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1178
    return-void
.end method

.method protected doSave(Landroid/graphics/Bitmap;Z)V
    .locals 15
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "changed"    # Z

    .prologue
    .line 1482
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1485
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v11, "bitmap-changed"

    move/from16 v0, p2

    invoke-virtual {v3, v11, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1487
    iget-object v11, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    const-class v12, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {v11, v12}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 1488
    .local v9, "service":Lcom/aviary/android/feather/library/services/LocalDataService;
    invoke-virtual {v9}, Lcom/aviary/android/feather/library/services/LocalDataService;->getDestImageUri()Landroid/net/Uri;

    move-result-object v7

    .line 1492
    .local v7, "saveUri":Landroid/net/Uri;
    if-eqz v7, :cond_3

    .line 1493
    const/4 v4, 0x0

    .line 1494
    .local v4, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 1496
    .local v8, "scheme":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 1497
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v5, "outputStream":Ljava/io/OutputStream;
    move-object v4, v5

    .line 1501
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :goto_0
    if-eqz v4, :cond_0

    .line 1502
    const-string/jumbo v11, "output-quality"

    const/16 v12, 0x50

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/aviary/android/feather/library/services/LocalDataService;->getIntentValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1503
    .local v6, "quality":I
    invoke-virtual {v9}, Lcom/aviary/android/feather/library/services/LocalDataService;->getOutputFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1508
    .end local v6    # "quality":I
    :cond_0
    invoke-static {v4}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 1510
    :goto_1
    const/4 v11, -0x1

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v12, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/aviary/android/feather/FeatherActivity;->onSetResult(ILandroid/content/Intent;)V

    .line 1523
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .end local v8    # "scheme":Ljava/lang/String;
    :goto_2
    move-object/from16 v1, p1

    .line 1524
    .local v1, "b":Landroid/graphics/Bitmap;
    iget-object v11, p0, Lcom/aviary/android/feather/FeatherActivity;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/aviary/android/feather/FeatherActivity$15;

    invoke-direct {v12, p0, v1}, Lcom/aviary/android/feather/FeatherActivity$15;-><init>(Lcom/aviary/android/feather/FeatherActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1533
    if-eqz v7, :cond_1

    .line 1534
    invoke-virtual {p0, v7}, Lcom/aviary/android/feather/FeatherActivity;->saveExif(Landroid/net/Uri;)V

    .line 1537
    :cond_1
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/aviary/android/feather/FeatherActivity;->mSaving:Z

    .line 1538
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->finish()V

    .line 1539
    return-void

    .line 1499
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "scheme":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 1505
    :catch_0
    move-exception v2

    .line 1506
    .local v2, "ex":Ljava/io/IOException;
    :try_start_2
    sget-object v11, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "Cannot open file"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v7, v12, v13

    const/4 v13, 0x2

    aput-object v2, v12, v13

    invoke-interface {v11, v12}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1508
    invoke-static {v4}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    invoke-static {v4}, Lcom/aviary/android/feather/headless/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v11

    .line 1515
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .end local v8    # "scheme":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "title"

    const-string/jumbo v13, "modified with Aviary Feather"

    move-object/from16 v0, p1

    invoke-static {v11, v0, v12, v13}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1516
    .local v10, "url":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 1517
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1518
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1520
    :cond_4
    const/4 v11, -0x1

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v12, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/aviary/android/feather/FeatherActivity;->onSetResult(ILandroid/content/Intent;)V

    goto :goto_2
.end method

.method protected exitWithNoModifications()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1227
    sget-object v1, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "exitWithNoModifications"

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1228
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1229
    .local v0, "result":Landroid/content/Intent;
    const-string/jumbo v1, "bitmap-changed"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1230
    invoke-virtual {p0, v4, v0}, Lcom/aviary/android/feather/FeatherActivity;->onSetResult(ILandroid/content/Intent;)V

    .line 1231
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->finish()V

    .line 1232
    return-void
.end method

.method public getBottomBar()Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mBottomBarFlipper:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    return-object v0
.end method

.method public getDrawingImageContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mDrawingViewContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getMainController()Lcom/aviary/android/feather/AviaryMainController;
    .locals 1

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    return-object v0
.end method

.method public getMainImage()Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    return-object v0
.end method

.method public bridge synthetic getMainImage()Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->getMainImage()Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsPanelContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mBottomBarFlipper:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->getContentPanel()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected handleIntent(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 996
    sget-object v6, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v8, "handleIntent"

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 998
    iget-object v6, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    const-class v7, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {v6, v7}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 1000
    .local v5, "service":Lcom/aviary/android/feather/library/services/LocalDataService;
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1001
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1003
    .local v0, "data":Landroid/net/Uri;
    invoke-static {}, Lcom/aviary/android/feather/library/utils/SystemUtils;->isIceCreamSandwich()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1004
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "content://com.android.gallery3d.provider"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1007
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.android.gallery3d"

    const-string/jumbo v8, "com.google.android.gallery3d"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1011
    :cond_0
    sget-object v6, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "src: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 1013
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1014
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_3

    .line 1015
    const-string/jumbo v6, "output"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1017
    .local v1, "destUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 1019
    sget-object v6, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "dest: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 1021
    invoke-virtual {v5, v1}, Lcom/aviary/android/feather/library/services/LocalDataService;->setDestImageUri(Landroid/net/Uri;)V

    .line 1023
    const-string/jumbo v6, "output-format"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1024
    .local v4, "outputFormatString":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1025
    invoke-static {v4}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v3

    .line 1026
    .local v3, "format":Landroid/graphics/Bitmap$CompressFormat;
    invoke-virtual {v5, v3}, Lcom/aviary/android/feather/library/services/LocalDataService;->setOutputFormat(Landroid/graphics/Bitmap$CompressFormat;)V

    .line 1030
    .end local v3    # "format":Landroid/graphics/Bitmap$CompressFormat;
    .end local v4    # "outputFormatString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "tools-list"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1031
    const-string/jumbo v6, "tools-list"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolList:Ljava/util/List;

    .line 1034
    :cond_2
    const-string/jumbo v6, "hide-exit-unsave-confirmation"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1035
    const-string/jumbo v6, "hide-exit-unsave-confirmation"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/aviary/android/feather/FeatherActivity;->mHideExitAlertConfirmation:Z

    .line 1040
    .end local v0    # "data":Landroid/net/Uri;
    .end local v1    # "destUri":Landroid/net/Uri;
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideModalProgress()V
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mToastLoader:Lcom/aviary/android/feather/widget/AviaryToast;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mToastLoader:Lcom/aviary/android/feather/widget/AviaryToast;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryToast;->hide()V

    .line 1636
    :cond_0
    return-void
.end method

.method public hideToolProgress()V
    .locals 2

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setApplyProgressVisible(Z)V

    .line 1621
    return-void
.end method

.method protected loadExif()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1248
    sget-object v4, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "loadExif"

    aput-object v6, v5, v7

    invoke-interface {v4, v5}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 1249
    iget-object v4, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    const-class v5, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {v4, v5}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 1250
    .local v0, "data":Lcom/aviary/android/feather/library/services/LocalDataService;
    iget-object v4, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    const-class v5, Lcom/aviary/android/feather/library/services/ThreadPoolService;

    invoke-virtual {v4, v5}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/library/services/ThreadPoolService;

    .line 1251
    .local v3, "thread":Lcom/aviary/android/feather/library/services/ThreadPoolService;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 1252
    invoke-virtual {v0}, Lcom/aviary/android/feather/library/services/LocalDataService;->getSourceImagePath()Ljava/lang/String;

    move-result-object v2

    .line 1254
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Lcom/aviary/android/feather/FeatherActivity$12;

    invoke-direct {v1, p0, v0}, Lcom/aviary/android/feather/FeatherActivity$12;-><init>(Lcom/aviary/android/feather/FeatherActivity;Lcom/aviary/android/feather/library/services/LocalDataService;)V

    .line 1269
    .local v1, "listener":Lcom/aviary/android/feather/library/services/FutureListener;, "Lcom/aviary/android/feather/library/services/FutureListener<Landroid/os/Bundle;>;"
    if-eqz v2, :cond_1

    .line 1270
    new-instance v4, Lcom/aviary/android/feather/async_tasks/ExifTask;

    invoke-direct {v4}, Lcom/aviary/android/feather/async_tasks/ExifTask;-><init>()V

    invoke-virtual {v3, v4, v1, v2}, Lcom/aviary/android/feather/library/services/ThreadPoolService;->submit(Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;Lcom/aviary/android/feather/library/services/FutureListener;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    .line 1275
    .end local v1    # "listener":Lcom/aviary/android/feather/library/services/FutureListener;, "Lcom/aviary/android/feather/library/services/FutureListener<Landroid/os/Bundle;>;"
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1272
    .restart local v1    # "listener":Lcom/aviary/android/feather/library/services/FutureListener;, "Lcom/aviary/android/feather/library/services/FutureListener<Landroid/os/Bundle;>;"
    .restart local v2    # "path":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "orinal file path not available"

    aput-object v6, v5, v7

    invoke-interface {v4, v5}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected loadImage(Landroid/net/Uri;)V
    .locals 6
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 924
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mDownloadTask:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;

    if-eqz v2, :cond_0

    .line 925
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mDownloadTask:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->setOnLoadListener(Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask$OnImageDownloadListener;)V

    .line 926
    iput-object v3, p0, Lcom/aviary/android/feather/FeatherActivity;->mDownloadTask:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;

    .line 929
    :cond_0
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    const-class v3, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 930
    .local v0, "dataService":Lcom/aviary/android/feather/library/services/LocalDataService;
    const-string/jumbo v2, "max-image-size"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/aviary/android/feather/library/services/LocalDataService;->getIntentValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 932
    .local v1, "maxSize":I
    new-instance v2, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;

    invoke-direct {v2, p1, v1}, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;-><init>(Landroid/net/Uri;I)V

    iput-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mDownloadTask:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;

    .line 933
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mDownloadTask:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;

    invoke-virtual {v2, p0}, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->setOnLoadListener(Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask$OnImageDownloadListener;)V

    .line 934
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mDownloadTask:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Context;

    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 935
    return-void
.end method

.method public onApplyClick()V
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v0}, Lcom/aviary/android/feather/AviaryMainController;->onApply()V

    .line 1241
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v0}, Lcom/aviary/android/feather/AviaryMainController;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mToastLoader:Lcom/aviary/android/feather/widget/AviaryToast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mToastLoader:Lcom/aviary/android/feather/widget/AviaryToast;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryToast;->hide()V

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v0}, Lcom/aviary/android/feather/AviaryMainController;->getBitmapIsChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 966
    iget-boolean v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mHideExitAlertConfirmation:Z

    if-eqz v0, :cond_2

    .line 967
    invoke-super {p0}, Lcom/aviary/android/feather/library/MonitoredActivity;->onBackPressed()V

    .line 975
    :cond_1
    :goto_0
    return-void

    .line 969
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/FeatherActivity;->showDialog(I)V

    goto :goto_0

    .line 972
    :cond_3
    invoke-super {p0}, Lcom/aviary/android/feather/library/MonitoredActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onBackPressed(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 984
    if-eqz p1, :cond_0

    invoke-super {p0}, Lcom/aviary/android/feather/library/MonitoredActivity;->onBackPressed()V

    .line 986
    :goto_0
    return-void

    .line 985
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBitmapChange(Landroid/graphics/Bitmap;ZLandroid/graphics/Matrix;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "update"    # Z
    .param p3, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 1425
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    .line 1428
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, p1, p3, v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V

    .line 1429
    return-void
.end method

.method public onBottomBarItemClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 911
    sget v0, Lcom/aviary/android/feather/R$id;->aviary_white_logo:I

    if-ne p1, v0, :cond_0

    .line 912
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/FeatherActivity;->showDialog(I)V

    .line 914
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 885
    invoke-super {p0, p1}, Lcom/aviary/android/feather/library/MonitoredActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 887
    iget v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 888
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mOrientation:I

    .line 890
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/AviaryMainController;->onConfigurationChanged(Landroid/content/res/Configuration;)Z

    .line 895
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mOrientation:I

    .line 896
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 939
    invoke-super {p0}, Lcom/aviary/android/feather/library/MonitoredActivity;->onContentChanged()V

    .line 941
    sget v0, Lcom/aviary/android/feather/R$id;->dragLayer:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/FeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/drag/DragLayer;

    iput-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mDragLayer:Lcom/aviary/android/feather/library/services/drag/DragLayer;

    .line 943
    sget v0, Lcom/aviary/android/feather/R$id;->aviary_navbar:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/FeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    iput-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    .line 944
    sget v0, Lcom/aviary/android/feather/R$id;->aviary_bottombar:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/FeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    iput-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mBottomBarFlipper:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    .line 946
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mBottomBarFlipper:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->getToolsListView()Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolsList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    .line 948
    sget v0, Lcom/aviary/android/feather/R$id;->image:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/FeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iput-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .line 949
    sget v0, Lcom/aviary/android/feather/R$id;->drawing_view_container:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/FeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mDrawingViewContainer:Landroid/view/ViewGroup;

    .line 950
    sget v0, Lcom/aviary/android/feather/R$id;->image_loading_view:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/FeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mInlineProgressLoader:Landroid/view/View;

    .line 952
    sget v0, Lcom/aviary/android/feather/R$id;->feather_dialogs_container:I

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/FeatherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mPopupContainer:Landroid/view/ViewGroup;

    .line 954
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mBottomBarFlipper:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->setDisplayedChild(I)V

    .line 955
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 565
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->onPreCreate()V

    .line 567
    invoke-super {p0, p1}, Lcom/aviary/android/feather/library/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 571
    invoke-static {p0}, Lcom/aviary/android/feather/library/utils/ScreenUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 572
    invoke-virtual {p0, v6}, Lcom/aviary/android/feather/FeatherActivity;->setRequestedOrientation(I)V

    .line 575
    :cond_0
    sget v2, Lcom/aviary/android/feather/R$layout;->aviary_main_view:I

    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/FeatherActivity;->setContentView(I)V

    .line 578
    new-instance v2, Lcom/aviary/android/feather/AviaryMainController;

    iget-object v3, p0, Lcom/aviary/android/feather/FeatherActivity;->mUIHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/aviary/android/feather/FeatherActivity;->getApiKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/aviary/android/feather/AviaryMainController;-><init>(Lcom/aviary/android/feather/AviaryMainController$FeatherContext;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    .line 580
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    const-class v3, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 581
    .local v0, "dataService":Lcom/aviary/android/feather/library/services/LocalDataService;
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/library/services/LocalDataService;->setOriginalIntent(Landroid/content/Intent;)V

    .line 583
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->onInitializeUtils()V

    .line 584
    invoke-direct {p0}, Lcom/aviary/android/feather/FeatherActivity;->onInitializeUI()V

    .line 585
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->onRegisterReceiver()V

    .line 588
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v2, p0}, Lcom/aviary/android/feather/AviaryMainController;->setOnToolListener(Lcom/aviary/android/feather/AviaryMainController$OnToolListener;)V

    .line 589
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v2, p0}, Lcom/aviary/android/feather/AviaryMainController;->setOnBitmapChangeListener(Lcom/aviary/android/feather/AviaryMainController$OnBitmapChangeListener;)V

    .line 590
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    iget-object v3, p0, Lcom/aviary/android/feather/FeatherActivity;->mDragLayer:Lcom/aviary/android/feather/library/services/drag/DragLayer;

    invoke-virtual {v2, v3}, Lcom/aviary/android/feather/AviaryMainController;->setDragLayer(Lcom/aviary/android/feather/library/services/drag/DragLayer;)V

    .line 593
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/FeatherActivity;->handleIntent(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    .line 595
    .local v1, "srcUri":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 596
    const/4 v2, 0x0

    invoke-virtual {p0, v5, v2}, Lcom/aviary/android/feather/FeatherActivity;->onSetResult(ILandroid/content/Intent;)V

    .line 597
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->finish()V

    .line 611
    :goto_0
    return-void

    .line 601
    :cond_1
    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/LocalDataService;->setSourceImageUri(Landroid/net/Uri;)V

    .line 604
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/FeatherActivity;->loadImage(Landroid/net/Uri;)V

    .line 607
    invoke-direct {p0}, Lcom/aviary/android/feather/FeatherActivity;->delayedInitializeTools()V

    .line 609
    sget-object v2, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "MAX MEMORY"

    aput-object v4, v3, v5

    invoke-static {}, Lcom/aviary/android/feather/library/utils/SystemUtils;->getApplicationTotalMemory()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 610
    const-string/jumbo v2, "feather: opened"

    invoke-static {v2}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 723
    const/4 v0, 0x0

    .line 725
    .local v0, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 778
    :goto_0
    return-object v0

    .line 727
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/aviary/android/feather/R$string;->feather_confirm:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$string;->confirm_quit_message:I

    .line 728
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$string;->feather_yes_leave:I

    new-instance v3, Lcom/aviary/android/feather/FeatherActivity$4;

    invoke-direct {v3, p0}, Lcom/aviary/android/feather/FeatherActivity$4;-><init>(Lcom/aviary/android/feather/FeatherActivity;)V

    .line 729
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$string;->feather_keep_editing:I

    new-instance v3, Lcom/aviary/android/feather/FeatherActivity$3;

    invoke-direct {v3, p0}, Lcom/aviary/android/feather/FeatherActivity$3;-><init>(Lcom/aviary/android/feather/FeatherActivity;)V

    .line 736
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 742
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 743
    goto :goto_0

    .line 746
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/aviary/android/feather/R$string;->feather_attention:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$string;->feather_error_download_image_message:I

    .line 747
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 748
    goto :goto_0

    .line 751
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/aviary/android/feather/R$string;->feather_revert_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$string;->feather_revert_dialog_message:I

    .line 752
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/aviary/android/feather/FeatherActivity$6;

    invoke-direct {v3, p0}, Lcom/aviary/android/feather/FeatherActivity$6;-><init>(Lcom/aviary/android/feather/FeatherActivity;)V

    .line 753
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/aviary/android/feather/FeatherActivity$5;

    invoke-direct {v3, p0}, Lcom/aviary/android/feather/FeatherActivity$5;-><init>(Lcom/aviary/android/feather/FeatherActivity;)V

    .line 760
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 766
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 767
    goto :goto_0

    .line 770
    :pswitch_3
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->createFeedbackDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 771
    goto :goto_0

    .line 774
    :pswitch_4
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->createAboutDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 725
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 669
    sget-object v0, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onDestroy"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 671
    iget v0, p0, Lcom/aviary/android/feather/FeatherActivity;->pResultCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "feather: cancelled"

    invoke-static {v0}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 673
    :cond_0
    invoke-super {p0}, Lcom/aviary/android/feather/library/MonitoredActivity;->onDestroy()V

    .line 675
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mDefaultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/FeatherActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 677
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setOnToolbarClickListener(Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$OnToolbarClickListener;)V

    .line 678
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mBottomBarFlipper:Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;

    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper;->setOnBottomBarItemClickListener(Lcom/aviary/android/feather/widget/AviaryBottomBarViewFlipper$OnBottomBarItemClickListener;)V

    .line 679
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/AviaryMainController;->setOnBitmapChangeListener(Lcom/aviary/android/feather/AviaryMainController$OnBitmapChangeListener;)V

    .line 680
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/AviaryMainController;->setOnToolListener(Lcom/aviary/android/feather/AviaryMainController$OnToolListener;)V

    .line 682
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mDownloadTask:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mDownloadTask:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;

    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;->setOnLoadListener(Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask$OnImageDownloadListener;)V

    .line 684
    iput-object v4, p0, Lcom/aviary/android/feather/FeatherActivity;->mDownloadTask:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    if-eqz v0, :cond_2

    .line 688
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v0}, Lcom/aviary/android/feather/AviaryMainController;->dispose()V

    .line 691
    :cond_2
    iput-object v4, p0, Lcom/aviary/android/feather/FeatherActivity;->mUIHandler:Landroid/os/Handler;

    .line 692
    iput-object v4, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    .line 693
    return-void
.end method

.method public onDoneClick()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1191
    iget-object v4, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    if-eqz v4, :cond_1

    .line 1192
    iget-object v4, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v4}, Lcom/aviary/android/feather/AviaryMainController;->getEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1194
    iget-object v4, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    const-class v5, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {v4, v5}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 1196
    .local v2, "dataService":Lcom/aviary/android/feather/library/services/LocalDataService;
    iget-object v4, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v4}, Lcom/aviary/android/feather/AviaryMainController;->getBitmapIsChanged()Z

    move-result v1

    .line 1197
    .local v1, "changed":Z
    const-string/jumbo v4, "save-on-no-changes"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/aviary/android/feather/library/services/LocalDataService;->getIntentValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1199
    .local v3, "saveWithNoChanges":Z
    sget-boolean v4, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    if-eqz v4, :cond_0

    .line 1200
    sget-object v4, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v5, v8, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bitmap changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-interface {v4, v5}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 1201
    sget-object v4, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v5, v8, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "save with no changes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-interface {v4, v5}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 1207
    :cond_0
    if-nez v1, :cond_2

    if-nez v3, :cond_2

    .line 1208
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->exitWithNoModifications()V

    .line 1220
    .end local v1    # "changed":Z
    .end local v2    # "dataService":Lcom/aviary/android/feather/library/services/LocalDataService;
    .end local v3    # "saveWithNoChanges":Z
    :cond_1
    :goto_0
    return-void

    .line 1212
    .restart local v1    # "changed":Z
    .restart local v2    # "dataService":Lcom/aviary/android/feather/library/services/LocalDataService;
    .restart local v3    # "saveWithNoChanges":Z
    :cond_2
    iget-object v4, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v4}, Lcom/aviary/android/feather/AviaryMainController;->onSave()V

    .line 1214
    iget-object v4, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v4}, Lcom/aviary/android/feather/AviaryMainController;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1215
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 1216
    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/FeatherActivity;->performSave(Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method public onDownloadComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;)V
    .locals 8
    .param p1, "result"    # Landroid/graphics/Bitmap;
    .param p2, "sizes"    # Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1310
    sget-object v2, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "onDownloadComplete"

    aput-object v4, v3, v7

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1312
    iput-object v5, p0, Lcom/aviary/android/feather/FeatherActivity;->mDownloadTask:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;

    .line 1314
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v2, p1, v5, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V

    .line 1316
    const/high16 v2, 0x10a0000

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1317
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1319
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2, v7}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setVisibility(I)V

    .line 1320
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1322
    invoke-direct {p0}, Lcom/aviary/android/feather/FeatherActivity;->hideProgressLoader()V

    .line 1324
    const/4 v2, 0x2

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 1325
    .local v1, "originalSize":[I
    if-eqz p2, :cond_0

    .line 1326
    invoke-virtual {p2}, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->getRealSize()[I

    move-result-object v1

    .line 1327
    invoke-virtual {p2}, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->getOriginalSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->getNewSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/aviary/android/feather/library/utils/ImageLoader$ImageSizes;->getBucketSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/aviary/android/feather/FeatherActivity;->onImageSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    :cond_0
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    if-eqz v2, :cond_1

    .line 1331
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v2}, Lcom/aviary/android/feather/AviaryMainController;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1332
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v2, p1, v1}, Lcom/aviary/android/feather/AviaryMainController;->onReplaceImage(Landroid/graphics/Bitmap;[I)V

    .line 1338
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    array-length v2, v1

    if-le v2, v6, :cond_2

    .line 1339
    sget-object v2, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "original.size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 1340
    sget-object v2, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "final.size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 1343
    :cond_2
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->computeOriginalFilePath()V

    .line 1344
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->loadExif()V

    .line 1345
    return-void

    .line 1334
    :cond_3
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v2, p1, v1}, Lcom/aviary/android/feather/AviaryMainController;->onActivate(Landroid/graphics/Bitmap;[I)V

    goto :goto_0

    .line 1324
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public onDownloadError(Ljava/lang/String;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1350
    sget-object v0, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onDownloadError"

    aput-object v3, v1, v2

    aput-object p1, v1, v4

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 1351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mDownloadTask:Lcom/aviary/android/feather/async_tasks/DownloadImageAsyncTask;

    .line 1352
    invoke-direct {p0}, Lcom/aviary/android/feather/FeatherActivity;->hideProgressLoader()V

    .line 1353
    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/FeatherActivity;->showDialog(I)V

    .line 1354
    return-void
.end method

.method public onDownloadStart()V
    .locals 2

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setVisibility(I)V

    .line 1382
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mInlineProgressLoader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1383
    return-void
.end method

.method protected onImageSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "originalSize"    # Ljava/lang/String;
    .param p2, "scaledSize"    # Ljava/lang/String;
    .param p3, "bucket"    # Ljava/lang/String;

    .prologue
    .line 1687
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1688
    .local v0, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "originalSize"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    const-string/jumbo v1, "newSize"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    const-string/jumbo v1, "bucketSize"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    const-string/jumbo v1, "image: scaled"

    invoke-static {v1, v0}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 1692
    return-void
.end method

.method protected onInitializeUtils()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 633
    invoke-static {p0}, Lcom/aviary/android/feather/FeatherActivity;->getApiKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "api_key":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, v0}, Lcom/aviary/android/feather/headless/filters/NativeFilterProxy;->init(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/aviary/android/feather/headless/AviaryInitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 645
    :cond_0
    sget-object v3, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "Attention. API-KEY cannot be found or is invalid"

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 646
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->finish()V

    .line 649
    :cond_1
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/Moa;->getEnterpriseVersion()Z

    move-result v3

    if-nez v3, :cond_2

    .line 650
    iget-object v3, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    const-class v4, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {v3, v4}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 651
    .local v1, "dataService":Lcom/aviary/android/feather/library/services/LocalDataService;
    const-string/jumbo v3, "white-label"

    invoke-virtual {v1, v3}, Lcom/aviary/android/feather/library/services/LocalDataService;->remove(Ljava/lang/String;)V

    .line 653
    .end local v1    # "dataService":Lcom/aviary/android/feather/library/services/LocalDataService;
    :cond_2
    return-void

    .line 637
    :catch_0
    move-exception v2

    .line 638
    .local v2, "e":Lcom/aviary/android/feather/headless/AviaryInitializationException;
    invoke-virtual {v2}, Lcom/aviary/android/feather/headless/AviaryInitializationException;->printStackTrace()V

    .line 640
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sorry an error occurred: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/aviary/android/feather/headless/AviaryInitializationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 641
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->finish()V

    goto :goto_0
.end method

.method public onInvalidateBitmap()V
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate()V

    .line 1418
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1850
    sget-object v2, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onItemClick: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1851
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1852
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v1

    .line 1854
    .local v1, "type":I
    if-nez v1, :cond_1

    .line 1856
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1858
    .local v0, "tag":Ljava/lang/Object;
    instance-of v2, v0, Lcom/aviary/android/feather/library/content/ToolEntry;

    if-eqz v2, :cond_0

    .line 1859
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/aviary/android/feather/FeatherActivity$16;

    invoke-direct {v3, p0, v0}, Lcom/aviary/android/feather/FeatherActivity$16;-><init>(Lcom/aviary/android/feather/FeatherActivity;Ljava/lang/Object;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1876
    .end local v0    # "tag":Ljava/lang/Object;
    .end local v1    # "type":I
    :cond_0
    :goto_0
    return v6

    .line 1868
    .restart local v1    # "type":I
    :cond_1
    if-ne v1, v7, :cond_0

    .line 1870
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/FeatherActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1671
    invoke-super {p0}, Lcom/aviary/android/feather/library/MonitoredActivity;->onPause()V

    .line 1672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mIsRunning:Z

    .line 1674
    return-void
.end method

.method protected onPreCreate()V
    .locals 0

    .prologue
    .line 613
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 900
    iget-boolean v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mSaving:Z

    if-eqz v1, :cond_1

    .line 904
    :cond_0
    :goto_0
    return v0

    .line 901
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v1}, Lcom/aviary/android/feather/AviaryMainController;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    invoke-virtual {v1}, Lcom/aviary/android/feather/AviaryMainController;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 902
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPreviewChange(Landroid/graphics/Bitmap;Z)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "reset"    # Z

    .prologue
    .line 1396
    const/4 v0, 0x1

    .line 1398
    .local v0, "changed":Z
    if-nez p2, :cond_0

    .line 1399
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lit/sephiroth/android/library/imagezoom/graphics/IBitmapDrawable;

    invoke-interface {v2}, Lit/sephiroth/android/library/imagezoom/graphics/IBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->compareBySize(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 1402
    :cond_0
    sget-object v2, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPreviewChange: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1404
    const/4 v1, 0x0

    .line 1405
    .local v1, "matrix":Landroid/graphics/Matrix;
    if-nez v0, :cond_1

    .line 1406
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 1409
    :cond_1
    iget-object v2, p0, Lcom/aviary/android/feather/FeatherActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v2, p1, v1, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V

    .line 1410
    return-void
.end method

.method protected onRegisterReceiver()V
    .locals 2

    .prologue
    .line 620
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 621
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "aviary.android.intent.ACTION_PLUGIN_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 622
    const-string/jumbo v1, "aviary.android.intent.ACTION_PLUGIN_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 623
    const-string/jumbo v1, "aviary.android.intent.ACTION_PLUGIN_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 624
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 625
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mDefaultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/aviary/android/feather/FeatherActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 626
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 1660
    invoke-super {p0}, Lcom/aviary/android/feather/library/MonitoredActivity;->onRestart()V

    .line 1661
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 663
    sget-object v0, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRestoreInstanceState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 664
    invoke-super {p0, p1}, Lcom/aviary/android/feather/library/MonitoredActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 665
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 1665
    invoke-super {p0}, Lcom/aviary/android/feather/library/MonitoredActivity;->onResume()V

    .line 1666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mIsRunning:Z

    .line 1667
    return-void
.end method

.method protected onSaveCustomTags(Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;)V
    .locals 0
    .param p1, "exif"    # Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;

    .prologue
    .line 1601
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 657
    sget-object v0, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onSaveInstanceState"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 658
    invoke-super {p0, p1}, Lcom/aviary/android/feather/library/MonitoredActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 659
    return-void
.end method

.method protected final onSetResult(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 546
    iput p1, p0, Lcom/aviary/android/feather/FeatherActivity;->pResultCode:I

    .line 548
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    if-eqz v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    const-class v2, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 553
    .local v0, "service":Lcom/aviary/android/feather/library/services/LocalDataService;
    const-string/jumbo v1, "output-hires-session-id"

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/LocalDataService;->getIntentContainsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    const-string/jumbo v2, "output-hires-session-id"

    const-string/jumbo v1, "output-hires-session-id"

    const-string/jumbo v3, ""

    .line 555
    invoke-virtual {v0, v1, v3}, Lcom/aviary/android/feather/library/services/LocalDataService;->getIntentValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 554
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    .end local v0    # "service":Lcom/aviary/android/feather/library/services/LocalDataService;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/FeatherActivity;->setResult(ILandroid/content/Intent;)V

    .line 560
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 1649
    invoke-super {p0}, Lcom/aviary/android/feather/library/MonitoredActivity;->onStart()V

    .line 1650
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mOrientation:I

    .line 1651
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1655
    invoke-super {p0}, Lcom/aviary/android/feather/library/MonitoredActivity;->onStop()V

    .line 1656
    return-void
.end method

.method public onToolCompleted()V
    .locals 0

    .prologue
    .line 1604
    return-void
.end method

.method protected onToolsLoaded(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/library/content/ToolEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1125
    .local p1, "listEntries":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/library/content/ToolEntry;>;"
    iput-object p1, p0, Lcom/aviary/android/feather/FeatherActivity;->mListEntries:Ljava/util/List;

    .line 1126
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    const-class v2, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 1128
    .local v0, "dataService":Lcom/aviary/android/feather/library/services/LocalDataService;
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolsList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    new-instance v2, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;

    iget-object v3, p0, Lcom/aviary/android/feather/FeatherActivity;->mListEntries:Ljava/util/List;

    const-string/jumbo v4, "white-label"

    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/library/services/LocalDataService;->getIntentContainsKey(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;-><init>(Lcom/aviary/android/feather/FeatherActivity;Landroid/content/Context;Ljava/util/List;Z)V

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1129
    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolsList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    invoke-virtual {v1, p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOnItemClickedListener(Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;)V

    .line 1130
    return-void
.end method

.method protected performSave(Landroid/graphics/Bitmap;Z)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "changed"    # Z

    .prologue
    .line 1439
    iget-boolean v3, p0, Lcom/aviary/android/feather/FeatherActivity;->mSaving:Z

    if-eqz v3, :cond_0

    .line 1469
    :goto_0
    return-void

    .line 1441
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/aviary/android/feather/FeatherActivity;->mSaving:Z

    .line 1442
    const-string/jumbo v3, "feather: saved"

    invoke-static {v3}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 1445
    iget-object v3, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/aviary/android/feather/AviaryMainController;->setEnabled(Z)V

    .line 1447
    iget-object v3, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    const-class v4, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {v3, v4}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 1449
    .local v2, "service":Lcom/aviary/android/feather/library/services/LocalDataService;
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1453
    .local v1, "myExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    const-string/jumbo v3, "return-data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1455
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1456
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v3, "data"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1457
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/services/LocalDataService;->getDestImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "inline-data"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/aviary/android/feather/FeatherActivity;->onSetResult(ILandroid/content/Intent;)V

    .line 1458
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity;->finish()V

    goto :goto_0

    .line 1461
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    const/4 v3, 0x0

    sget v4, Lcom/aviary/android/feather/R$string;->feather_save_progress:I

    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/FeatherActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/aviary/android/feather/FeatherActivity$14;

    invoke-direct {v5, p0, p1, p2}, Lcom/aviary/android/feather/FeatherActivity$14;-><init>(Lcom/aviary/android/feather/FeatherActivity;Landroid/graphics/Bitmap;Z)V

    iget-object v6, p0, Lcom/aviary/android/feather/FeatherActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v3, v4, v5, v6}, Lcom/aviary/android/feather/utils/ThreadUtils;->startBackgroundJob(Lcom/aviary/android/feather/library/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected saveExif(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1546
    sget-object v0, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveExif: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 1547
    if-eqz p1, :cond_0

    .line 1548
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/FeatherActivity;->saveExif(Ljava/lang/String;)V

    .line 1550
    :cond_0
    return-void
.end method

.method protected saveExif(Ljava/lang/String;)V
    .locals 13
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1553
    sget-object v7, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v8, v12, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "saveExif: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-interface {v7, v8}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 1555
    if-nez p1, :cond_1

    .line 1599
    :cond_0
    :goto_0
    return-void

    .line 1559
    :cond_1
    iget-object v7, p0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    const-class v8, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-virtual {v7, v8}, Lcom/aviary/android/feather/AviaryMainController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 1560
    .local v1, "data":Lcom/aviary/android/feather/library/services/LocalDataService;
    const/4 v5, 0x0

    .line 1562
    .local v5, "newexif":Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;
    if-eqz v1, :cond_0

    .line 1564
    :try_start_0
    new-instance v5, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;

    .end local v5    # "newexif":Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;
    invoke-direct {v5, p1}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1572
    .restart local v5    # "newexif":Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;
    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/LocalDataService;->getOriginalExifBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 1573
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1576
    :try_start_1
    const-string/jumbo v7, "ImageWidth"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 1577
    .local v4, "imageWidth":I
    const-string/jumbo v7, "ImageLength"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 1581
    .local v3, "imageLength":I
    invoke-virtual {v5, v0}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->copyFrom(Landroid/os/Bundle;)V

    .line 1583
    const-string/jumbo v7, "ImageWidth"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    const-string/jumbo v7, "ImageLength"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    const-string/jumbo v7, "Orientation"

    const-string/jumbo v8, "0"

    invoke-virtual {v5, v7, v8}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    const-string/jumbo v7, "Software"

    const-string/jumbo v8, "Aviary for Android 3.0.0"

    invoke-virtual {v5, v7, v8}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    invoke-virtual {p0, v5}, Lcom/aviary/android/feather/FeatherActivity;->onSaveCustomTags(Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;)V

    .line 1592
    invoke-virtual {v5}, Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;->saveAttributes()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1593
    .end local v3    # "imageLength":I
    .end local v4    # "imageWidth":I
    :catch_0
    move-exception v6

    .line 1594
    .local v6, "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1595
    sget-object v7, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v8, v12, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-interface {v7, v8}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    goto :goto_0

    .line 1565
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "newexif":Lcom/aviary/android/feather/headless/media/ExifInterfaceWrapper;
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 1566
    .local v2, "e":Ljava/io/IOException;
    sget-object v7, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v8, v12, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-interface {v7, v8}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 1567
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public showModalProgress()V
    .locals 1

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mToastLoader:Lcom/aviary/android/feather/widget/AviaryToast;

    if-nez v0, :cond_0

    .line 1626
    invoke-static {p0}, Lcom/aviary/android/feather/utils/UIUtils;->createModalLoaderToast(Landroid/content/Context;)Lcom/aviary/android/feather/widget/AviaryToast;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mToastLoader:Lcom/aviary/android/feather/widget/AviaryToast;

    .line 1628
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mToastLoader:Lcom/aviary/android/feather/widget/AviaryToast;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryToast;->show()V

    .line 1629
    return-void
.end method

.method public showToolProgress()V
    .locals 2

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity;->mToolbar:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->setApplyProgressVisible(Z)V

    .line 1612
    return-void
.end method
