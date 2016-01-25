.class Lcom/liquable/nemo/MainActivity$7;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/MainActivity;->reloadUnacceptInvitationCount()V
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
.field final synthetic this$0:Lcom/liquable/nemo/MainActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/MainActivity;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/liquable/nemo/MainActivity$7;->this$0:Lcom/liquable/nemo/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 543
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/MainActivity$7;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
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
    .line 546
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/FriendManager;->listWaitConfirmFriends()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 543
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/MainActivity$7;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
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
    .line 551
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity$7;->this$0:Lcom/liquable/nemo/MainActivity;

    # getter for: Lcom/liquable/nemo/MainActivity;->unacceptInvitationCountTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/liquable/nemo/MainActivity;->access$1200(Lcom/liquable/nemo/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity$7;->this$0:Lcom/liquable/nemo/MainActivity;

    # getter for: Lcom/liquable/nemo/MainActivity;->unacceptInvitationCountTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/liquable/nemo/MainActivity;->access$1200(Lcom/liquable/nemo/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity$7;->this$0:Lcom/liquable/nemo/MainActivity;

    # getter for: Lcom/liquable/nemo/MainActivity;->unacceptInvitationCountTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/liquable/nemo/MainActivity;->access$1200(Lcom/liquable/nemo/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
