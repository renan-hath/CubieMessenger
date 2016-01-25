.class public Lcom/liquable/nemo/util/crop/App;
.super Ljava/lang/Object;
.source "App.java"


# static fields
.field public static final CURRENT_TIME_ZONE:Ljava/util/TimeZone;

.field public static PIXEL_DENSITY:F

.field private static final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/liquable/nemo/util/crop/App;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mPaused:Z

.field private mReverseGeocoder:Lcom/liquable/nemo/util/crop/ReverseGeocoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/liquable/nemo/util/crop/App;->mMap:Ljava/util/HashMap;

    .line 38
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/util/crop/App;->CURRENT_TIME_ZONE:Ljava/util/TimeZone;

    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/liquable/nemo/util/crop/App;->PIXEL_DENSITY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "AppHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/liquable/nemo/util/crop/App;->mHandlerThread:Landroid/os/HandlerThread;

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/liquable/nemo/util/crop/App;->mReverseGeocoder:Lcom/liquable/nemo/util/crop/ReverseGeocoder;

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/App;->mPaused:Z

    .line 51
    sget-object v1, Lcom/liquable/nemo/util/crop/App;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/App;->mContext:Landroid/content/Context;

    .line 55
    sget v1, Lcom/liquable/nemo/util/crop/App;->PIXEL_DENSITY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 56
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 57
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/App;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 58
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/liquable/nemo/util/crop/App;->PIXEL_DENSITY:F

    .line 61
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/App;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 62
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/liquable/nemo/util/crop/App;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/liquable/nemo/util/crop/App;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v1, Lcom/liquable/nemo/util/crop/ReverseGeocoder;

    iget-object v2, p0, Lcom/liquable/nemo/util/crop/App;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/liquable/nemo/util/crop/App;->mReverseGeocoder:Lcom/liquable/nemo/util/crop/ReverseGeocoder;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/util/crop/App;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/App;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/App;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/liquable/nemo/util/crop/App;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-object v0, Lcom/liquable/nemo/util/crop/App;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/App;

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/App;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 72
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/App;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/App;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getReverseGeocoder()Lcom/liquable/nemo/util/crop/ReverseGeocoder;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/App;->mReverseGeocoder:Lcom/liquable/nemo/util/crop/ReverseGeocoder;

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/App;->mPaused:Z

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/App;->mReverseGeocoder:Lcom/liquable/nemo/util/crop/ReverseGeocoder;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->flushCache()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/util/crop/App;->mPaused:Z

    .line 90
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/util/crop/App;->mPaused:Z

    .line 103
    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/App;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/util/crop/App$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/liquable/nemo/util/crop/App$1;-><init>(Lcom/liquable/nemo/util/crop/App;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/App;->mReverseGeocoder:Lcom/liquable/nemo/util/crop/ReverseGeocoder;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/ReverseGeocoder;->shutdown()V

    .line 125
    sget-object v0, Lcom/liquable/nemo/util/crop/App;->mMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/App;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method
