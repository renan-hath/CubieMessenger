.class Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$6;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "SelectMyAccountIconActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->onOK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/RpcAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

.field final synthetic val$inputName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$6;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    iput-object p3, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$6;->val$inputName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 193
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->needToInputName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->userManager:Lcom/liquable/nemo/user/model/UserManager;

    iget-object v1, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$6;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    iget-object v2, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$6;->val$inputName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/user/model/UserManager;->updateNickname(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$6;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    # getter for: Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->iconFile:Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->access$000(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 197
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->userManager:Lcom/liquable/nemo/user/model/UserManager;

    iget-object v1, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$6;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    iget-object v2, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$6;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    .line 200
    # getter for: Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->iconFile:Ljava/io/File;
    invoke-static {v2}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->access$000(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)Ljava/io/File;

    move-result-object v2

    .line 199
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/user/model/UserManager;->updateMyAccountIcon(Landroid/content/Context;Ljava/io/File;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 189
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$6;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->showDialog(I)V

    .line 206
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$6;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->removeDialog(I)V

    .line 211
    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 215
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$6;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    const v1, 0x7f0d01c6

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->selectMyAccountIcon()V

    .line 220
    iget-object v0, p0, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$6;->this$0:Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;

    # invokes: Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->finishAndGoToMain()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;->access$400(Lcom/liquable/nemo/regist/SelectMyAccountIconActivity;)V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/SelectMyAccountIconActivity$6;->postExecuteSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
