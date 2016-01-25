.class Lcom/liquable/nemo/util/crop/Util$BackgroundJob$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/crop/Util$BackgroundJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/util/crop/Util$BackgroundJob;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/crop/Util$BackgroundJob;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/crop/Util$BackgroundJob;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob$1;->this$0:Lcom/liquable/nemo/util/crop/Util$BackgroundJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob$1;->this$0:Lcom/liquable/nemo/util/crop/Util$BackgroundJob;

    # getter for: Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mActivity:Lcom/liquable/nemo/util/crop/MonitoredActivity;
    invoke-static {v0}, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->access$000(Lcom/liquable/nemo/util/crop/Util$BackgroundJob;)Lcom/liquable/nemo/util/crop/MonitoredActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob$1;->this$0:Lcom/liquable/nemo/util/crop/Util$BackgroundJob;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/crop/MonitoredActivity;->removeLifeCycleListener(Lcom/liquable/nemo/util/crop/MonitoredActivity$LifeCycleListener;)V

    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob$1;->this$0:Lcom/liquable/nemo/util/crop/Util$BackgroundJob;

    # getter for: Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->access$100(Lcom/liquable/nemo/util/crop/Util$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Util$BackgroundJob$1;->this$0:Lcom/liquable/nemo/util/crop/Util$BackgroundJob;

    # getter for: Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/liquable/nemo/util/crop/Util$BackgroundJob;->access$100(Lcom/liquable/nemo/util/crop/Util$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 51
    :cond_0
    return-void
.end method
