.class Lcom/liquable/nemo/regist/RestoreDataActivity$8;
.super Landroid/os/AsyncTask;
.source "RestoreDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/RestoreDataActivity;->step6SaveMultiChatGroup(Ljava/util/List;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/group/model/ChatGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

.field final synthetic val$chatGroupDtos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/RestoreDataActivity;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$8;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    iput-object p2, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$8;->val$chatGroupDtos:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 270
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity$8;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->registrationManager:Lcom/liquable/nemo/regist/model/RegistrationManager;

    iget-object v1, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$8;->val$chatGroupDtos:Ljava/util/List;

    iget-object v2, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$8;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    .line 275
    # getter for: Lcom/liquable/nemo/regist/RestoreDataActivity;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;
    invoke-static {v2}, Lcom/liquable/nemo/regist/RestoreDataActivity;->access$300(Lcom/liquable/nemo/regist/RestoreDataActivity;)Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/regist/model/RegistrationManager;->saveMultiChatGroups(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 270
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity$8;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v0, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$8;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    # invokes: Lcom/liquable/nemo/regist/RestoreDataActivity;->step7ProcessMissingMultiChatGroups(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->access$1100(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/util/List;)V

    .line 281
    return-void
.end method
