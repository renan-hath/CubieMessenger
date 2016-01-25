.class Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;
.super Landroid/os/AsyncTask;
.source "TiltShiftPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/TiltShiftPanel;
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

.field final synthetic this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/TiltShiftPanel;)V
    .locals 2
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/TiltShiftPanel;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 500
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 497
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 515
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    # getter for: Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->access$400(Lcom/aviary/android/feather/effects/TiltShiftPanel;)Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 517
    :goto_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    # getter for: Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->access$400(Lcom/aviary/android/feather/effects/TiltShiftPanel;)Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    # getter for: Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->access$400(Lcom/aviary/android/feather/effects/TiltShiftPanel;)Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waiting.... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    # getter for: Lcom/aviary/android/feather/effects/TiltShiftPanel;->mBackgroundDrawThread:Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;
    invoke-static {v4}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->access$400(Lcom/aviary/android/feather/effects/TiltShiftPanel;)Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aviary/android/feather/effects/TiltShiftPanel$BackgroundDrawThread;->getQueueSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 520
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 527
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    # getter for: Lcom/aviary/android/feather/effects/TiltShiftPanel;->mFilter:Lcom/aviary/android/feather/library/filters/TiltShiftFilter;
    invoke-static {v2}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->access$200(Lcom/aviary/android/feather/effects/TiltShiftPanel;)Lcom/aviary/android/feather/library/filters/TiltShiftFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/TiltShiftFilter;->getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->add(Lcom/aviary/android/feather/headless/moa/MoaAction;)Z

    .line 528
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 497
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 533
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 535
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mPreview:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    iget-object v2, v2, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 504
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 505
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$string;->feather_loading_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$string;->feather_effect_loading_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 508
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 509
    iget-object v0, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 510
    return-void
.end method
