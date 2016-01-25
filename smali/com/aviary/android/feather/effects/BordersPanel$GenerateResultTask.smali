.class Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;
.super Landroid/os/AsyncTask;
.source "BordersPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/BordersPanel;
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

.field final synthetic this$0:Lcom/aviary/android/feather/effects/BordersPanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/BordersPanel;)V
    .locals 2
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/BordersPanel;

    .prologue
    .line 1963
    iput-object p1, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1965
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1963
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1980
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/BordersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "GenerateResultTask::doInBackground"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v2, v2, Lcom/aviary/android/feather/effects/BordersPanel;->mIsRendering:Ljava/lang/Boolean;

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1982
    :goto_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/BordersPanel;->mIsRendering:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1983
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/BordersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "waiting...."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 1986
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1963
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1991
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1993
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v0, v0, Lcom/aviary/android/feather/effects/BordersPanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "GenerateResultTask::onPostExecute"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 1995
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v0}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1999
    :goto_0
    return-void

    .line 1996
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1998
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/BordersPanel;->mPreview:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v2, v2, Lcom/aviary/android/feather/effects/BordersPanel;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/effects/BordersPanel;->onComplete(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/headless/moa/MoaActionList;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 1969
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1970
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$string;->feather_loading_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1971
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/effects/BordersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$string;->feather_effect_loading_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1972
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1973
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1974
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$GenerateResultTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1975
    return-void
.end method
