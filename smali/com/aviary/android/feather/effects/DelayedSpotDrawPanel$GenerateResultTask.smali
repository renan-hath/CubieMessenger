.class Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;
.super Landroid/os/AsyncTask;
.source "DelayedSpotDrawPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GenerateResultTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mProgress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;)V
    .locals 2
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 568
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 566
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 583
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    # getter for: Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->access$200(Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;)Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 585
    :goto_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    # getter for: Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->access$200(Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;)Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    # getter for: Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->access$200(Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;)Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "waiting.... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    # getter for: Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;
    invoke-static {v5}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->access$200(Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;)Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$MyHandlerThread;->queueSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 588
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 595
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 566
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 600
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 602
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    :goto_0
    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mPreview:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    iget-object v2, v2, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 572
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 573
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$string;->feather_loading_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$string;->feather_effect_loading_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 576
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 577
    iget-object v0, p0, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 578
    return-void
.end method
