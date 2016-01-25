.class Lcom/liquable/nemo/regist/RestoreDataActivity$5;
.super Landroid/os/AsyncTask;
.source "RestoreDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/RestoreDataActivity;->step3RecoverFriends(Ljava/util/List;)V
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
        "Lcom/liquable/nemo/friend/model/Account;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/RestoreDataActivity;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$5;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    iput-object p2, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$5;->val$result:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity$5;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->registrationManager:Lcom/liquable/nemo/regist/model/RegistrationManager;

    iget-object v1, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$5;->val$result:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/model/RegistrationManager;->saveFriendsDataFromServer(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 182
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity$5;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    iget-object v0, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$5;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    # invokes: Lcom/liquable/nemo/regist/RestoreDataActivity;->step4RecoverOneToOneChatGroups(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->access$800(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/util/List;)V

    .line 192
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method
