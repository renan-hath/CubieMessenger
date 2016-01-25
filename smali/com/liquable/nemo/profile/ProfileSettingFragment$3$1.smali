.class Lcom/liquable/nemo/profile/ProfileSettingFragment$3$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ProfileSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ProfileSettingFragment$3;->onClick(Landroid/content/DialogInterface;I)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$3;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ProfileSettingFragment$3;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/profile/ProfileSettingFragment$3;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$3$1;->this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$3;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 195
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ProfileSettingFragment$3$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 198
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->userManager:Lcom/liquable/nemo/user/model/UserManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/user/model/UserManager;->discardIcon()V

    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$3$1;->this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$3;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ProfileSettingFragment$3;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/profile/ProfileSettingFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->access$500(Lcom/liquable/nemo/profile/ProfileSettingFragment;I)V

    .line 205
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$3$1;->this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$3;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ProfileSettingFragment$3;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/profile/ProfileSettingFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->access$600(Lcom/liquable/nemo/profile/ProfileSettingFragment;I)V

    .line 210
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 195
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ProfileSettingFragment$3$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$3$1;->this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$3;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ProfileSettingFragment$3;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$3$1;->this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$3;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ProfileSettingFragment$3;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->loadUserIcon()V

    goto :goto_0
.end method
