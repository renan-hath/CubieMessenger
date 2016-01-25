.class Lcom/liquable/nemo/profile/ProfileSettingFragment$2$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ProfileSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ProfileSettingFragment$2;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$2;

.field final synthetic val$newContent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ProfileSettingFragment$2;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/profile/ProfileSettingFragment$2;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$2$1;->this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$2;

    iput-object p3, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$2$1;->val$newContent:Ljava/lang/String;

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
    .line 136
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ProfileSettingFragment$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->userManager:Lcom/liquable/nemo/user/model/UserManager;

    iget-object v1, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$2$1;->this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$2;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ProfileSettingFragment$2;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$2$1;->val$newContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/user/model/UserManager;->updateNickname(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$2$1;->this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$2;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ProfileSettingFragment$2;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/profile/ProfileSettingFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->access$200(Lcom/liquable/nemo/profile/ProfileSettingFragment;I)V

    .line 147
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$2$1;->this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$2;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ProfileSettingFragment$2;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/profile/ProfileSettingFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->access$300(Lcom/liquable/nemo/profile/ProfileSettingFragment;I)V

    .line 153
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 136
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ProfileSettingFragment$2$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 157
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->changeProfileNickname()V

    .line 158
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$2$1;->this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$2;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ProfileSettingFragment$2;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ProfileSettingFragment;->nicknameTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$2$1;->this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$2;

    iget-object v0, v0, Lcom/liquable/nemo/profile/ProfileSettingFragment$2;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d04f5

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 162
    return-void
.end method
