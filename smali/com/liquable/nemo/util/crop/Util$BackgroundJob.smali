.class Lcom/liquable/nemo/util/crop/Util$BackgroundJob;
.super Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleAdapter;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/crop/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundJob"
.end annotation


# instance fields
.field private final mActivity:Lcom/liquable/nemo/util/crop/MonitoredActivity;

.field private final mCleanupRunner:Ljava/lang/Runnable;

.field private final mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mJob:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/util/crop/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1
    .param p1, "activity"    # Lcom/liquable/nemo/util/crop/MonitoredActivity;
    .param p2, "job"    # Ljava/lang/Runnable;
    .param p3, "dialog"    # Landroid/app/ProgressDialog;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleAdapter;-><init>()V

    .line 44
    new-instance v0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/util/crop/Util$BackgroundJob$1;-><init>(Lcom/liquable/nemo/util/crop/Util$BackgroundJob;)V

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mActivity:Lcom/liquable/nemo/util/crop/MonitoredActivity;

    .line 59
    iput-object p3, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    .line 60
    iput-object p2, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;

    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mActivity:Lcom/liquable/nemo/util/crop/MonitoredActivity;

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/util/crop/MonitoredActivity;->addLifeCycleListener(Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;)V

    .line 62
    iput-object p4, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/util/crop/Util$BackgroundJob;)Lcom/liquable/nemo/util/crop/MonitoredActivity;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/Util$BackgroundJob;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mActivity:Lcom/liquable/nemo/util/crop/MonitoredActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/util/crop/Util$BackgroundJob;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/Util$BackgroundJob;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onActivityDestroyed(Lcom/liquable/nemo/util/crop/MonitoredActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/liquable/nemo/util/crop/MonitoredActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public onActivityStarted(Lcom/liquable/nemo/util/crop/MonitoredActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/liquable/nemo/util/crop/MonitoredActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 76
    return-void
.end method

.method public onActivityStopped(Lcom/liquable/nemo/util/crop/MonitoredActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/liquable/nemo/util/crop/MonitoredActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 81
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
