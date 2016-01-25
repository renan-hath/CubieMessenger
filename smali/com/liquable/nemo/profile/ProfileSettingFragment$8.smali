.class Lcom/liquable/nemo/profile/ProfileSettingFragment$8;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ProfileSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ProfileSettingFragment;->uploadAndUpdateUserIcon()V
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
.field final synthetic this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ProfileSettingFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/ProfileSettingFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$8;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 444
    iget-object v2, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$8;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    # invokes: Lcom/liquable/nemo/profile/ProfileSettingFragment;->getTempUserIcon()Ljava/io/File;
    invoke-static {v2}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->access$400(Lcom/liquable/nemo/profile/ProfileSettingFragment;)Ljava/io/File;

    move-result-object v1

    .line 445
    .local v1, "tempFile":Ljava/io/File;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->userManager:Lcom/liquable/nemo/user/model/UserManager;

    iget-object v3, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$8;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v3}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/liquable/nemo/user/model/UserManager;->updateMyAccountIcon(Landroid/content/Context;Ljava/io/File;)Z

    move-result v0

    .line 446
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 447
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 449
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
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
    .line 441
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ProfileSettingFragment$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$8;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/profile/ProfileSettingFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->access$1200(Lcom/liquable/nemo/profile/ProfileSettingFragment;I)V

    .line 455
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$8;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/profile/ProfileSettingFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->access$1300(Lcom/liquable/nemo/profile/ProfileSettingFragment;I)V

    .line 460
    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$8;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 468
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$8;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d01c6

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$8;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    # invokes: Lcom/liquable/nemo/profile/ProfileSettingFragment;->resetShareItem()V
    invoke-static {v0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->access$900(Lcom/liquable/nemo/profile/ProfileSettingFragment;)V

    .line 475
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$8;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->loadUserIcon()V

    .line 476
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$8;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d04f4

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 441
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ProfileSettingFragment$8;->postExecuteSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
