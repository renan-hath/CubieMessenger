.class Lcom/liquable/nemo/setting/SettingActivity$3$1;
.super Landroid/os/AsyncTask;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/SettingActivity$3;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/setting/SettingActivity$3;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/SettingActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/setting/SettingActivity$3;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/liquable/nemo/setting/SettingActivity$3$1;->this$1:Lcom/liquable/nemo/setting/SettingActivity$3;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 82
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->backup:Lcom/liquable/nemo/db/Backup;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/db/Backup;->backup(Ljava/lang/String;)Z

    move-result v0

    .line 83
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 84
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/chat/model/ChattingManager;->archiveMessages(J)V

    .line 86
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/setting/SettingActivity$3$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/liquable/nemo/setting/SettingActivity$3$1;->this$1:Lcom/liquable/nemo/setting/SettingActivity$3;

    iget-object v0, v0, Lcom/liquable/nemo/setting/SettingActivity$3;->this$0:Lcom/liquable/nemo/setting/SettingActivity;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/setting/SettingActivity;->removeDialog(I)V

    .line 92
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/setting/SettingActivity$3$1;->this$1:Lcom/liquable/nemo/setting/SettingActivity$3;

    iget-object v0, v0, Lcom/liquable/nemo/setting/SettingActivity$3;->this$0:Lcom/liquable/nemo/setting/SettingActivity;

    # invokes: Lcom/liquable/nemo/setting/SettingActivity;->refreshBackupTime()V
    invoke-static {v0}, Lcom/liquable/nemo/setting/SettingActivity;->access$100(Lcom/liquable/nemo/setting/SettingActivity;)V

    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/setting/SettingActivity$3$1;->this$1:Lcom/liquable/nemo/setting/SettingActivity$3;

    iget-object v0, v0, Lcom/liquable/nemo/setting/SettingActivity$3;->this$0:Lcom/liquable/nemo/setting/SettingActivity;

    const v1, 0x7f0d00a3

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/setting/SettingActivity$3$1;->this$1:Lcom/liquable/nemo/setting/SettingActivity$3;

    iget-object v0, v0, Lcom/liquable/nemo/setting/SettingActivity$3;->this$0:Lcom/liquable/nemo/setting/SettingActivity;

    const v1, 0x7f0d00a4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 79
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/setting/SettingActivity$3$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/liquable/nemo/setting/SettingActivity$3$1;->this$1:Lcom/liquable/nemo/setting/SettingActivity$3;

    iget-object v0, v0, Lcom/liquable/nemo/setting/SettingActivity$3;->this$0:Lcom/liquable/nemo/setting/SettingActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/SettingActivity;->showDialog(I)V

    .line 105
    return-void
.end method
