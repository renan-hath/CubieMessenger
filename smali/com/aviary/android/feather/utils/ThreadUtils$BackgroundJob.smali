.class Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;
.super Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleAdapter;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/utils/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundJob"
.end annotation


# instance fields
.field private final mActivity:Lcom/aviary/android/feather/library/MonitoredActivity;

.field private final mCleanupRunner:Ljava/lang/Runnable;

.field private final mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mJob:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1
    .param p1, "activity"    # Lcom/aviary/android/feather/library/MonitoredActivity;
    .param p2, "job"    # Ljava/lang/Runnable;
    .param p3, "dialog"    # Landroid/app/ProgressDialog;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleAdapter;-><init>()V

    .line 47
    new-instance v0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob$1;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob$1;-><init>(Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;)V

    iput-object v0, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    .line 69
    iput-object p1, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mActivity:Lcom/aviary/android/feather/library/MonitoredActivity;

    .line 70
    iput-object p3, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    .line 71
    iput-object p2, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mJob:Ljava/lang/Runnable;

    .line 72
    iget-object v0, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mActivity:Lcom/aviary/android/feather/library/MonitoredActivity;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/library/MonitoredActivity;->addLifeCycleListener(Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;)V

    .line 73
    iput-object p4, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;)Lcom/aviary/android/feather/library/MonitoredActivity;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mActivity:Lcom/aviary/android/feather/library/MonitoredActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onActivityDestroyed(Lcom/aviary/android/feather/library/MonitoredActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/aviary/android/feather/library/MonitoredActivity;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 100
    iget-object v0, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public onActivityStarted(Lcom/aviary/android/feather/library/MonitoredActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/aviary/android/feather/library/MonitoredActivity;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 125
    return-void
.end method

.method public onActivityStopped(Lcom/aviary/android/feather/library/MonitoredActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/aviary/android/feather/library/MonitoredActivity;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 113
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mJob:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v0, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
