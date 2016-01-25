.class Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob$1;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob$1;->this$0:Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob$1;->this$0:Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;

    # getter for: Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mActivity:Lcom/aviary/android/feather/library/MonitoredActivity;
    invoke-static {v0}, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->access$000(Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;)Lcom/aviary/android/feather/library/MonitoredActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob$1;->this$0:Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/MonitoredActivity;->removeLifeCycleListener(Lcom/aviary/android/feather/library/MonitoredActivity$LifeCycleListener;)V

    .line 52
    iget-object v0, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob$1;->this$0:Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;

    # getter for: Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->access$100(Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob$1;->this$0:Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;

    # getter for: Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;->access$100(Lcom/aviary/android/feather/utils/ThreadUtils$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 53
    :cond_0
    return-void
.end method
