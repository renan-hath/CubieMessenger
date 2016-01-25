.class Lcom/liquable/nemo/forum/EditBoardFragment$2$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "EditBoardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/EditBoardFragment$2;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/liquable/nemo/forum/EditBoardFragment$2;

.field final synthetic val$boardDescription:Ljava/lang/String;

.field final synthetic val$boardTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/EditBoardFragment$2;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/forum/EditBoardFragment$2;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->this$1:Lcom/liquable/nemo/forum/EditBoardFragment$2;

    iput-object p3, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->val$boardTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->val$boardDescription:Ljava/lang/String;

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
    .line 142
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->this$1:Lcom/liquable/nemo/forum/EditBoardFragment$2;

    iget-object v0, v0, Lcom/liquable/nemo/forum/EditBoardFragment$2;->this$0:Lcom/liquable/nemo/forum/EditBoardFragment;

    # getter for: Lcom/liquable/nemo/forum/EditBoardFragment;->iconUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/liquable/nemo/forum/EditBoardFragment;->access$100(Lcom/liquable/nemo/forum/EditBoardFragment;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->this$1:Lcom/liquable/nemo/forum/EditBoardFragment$2;

    iget-object v1, v1, Lcom/liquable/nemo/forum/EditBoardFragment$2;->val$editBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->val$boardTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->val$boardDescription:Ljava/lang/String;

    iget-object v4, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->this$1:Lcom/liquable/nemo/forum/EditBoardFragment$2;

    iget-object v4, v4, Lcom/liquable/nemo/forum/EditBoardFragment$2;->val$editBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 152
    invoke-virtual {v4}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/liquable/nemo/model/forum/BoardCategory;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/BoardCategory;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->this$1:Lcom/liquable/nemo/forum/EditBoardFragment$2;

    iget-object v5, v5, Lcom/liquable/nemo/forum/EditBoardFragment$2;->this$0:Lcom/liquable/nemo/forum/EditBoardFragment;

    .line 153
    # getter for: Lcom/liquable/nemo/forum/EditBoardFragment;->iconUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/liquable/nemo/forum/EditBoardFragment;->access$100(Lcom/liquable/nemo/forum/EditBoardFragment;)Landroid/net/Uri;

    move-result-object v5

    .line 149
    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/forum/ForumDaemon;->editForumBoard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/model/forum/BoardCategory;Landroid/net/Uri;)V

    .line 161
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->this$1:Lcom/liquable/nemo/forum/EditBoardFragment$2;

    iget-object v1, v1, Lcom/liquable/nemo/forum/EditBoardFragment$2;->val$editBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->val$boardTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->val$boardDescription:Ljava/lang/String;

    iget-object v4, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->this$1:Lcom/liquable/nemo/forum/EditBoardFragment$2;

    iget-object v4, v4, Lcom/liquable/nemo/forum/EditBoardFragment$2;->val$editBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 158
    invoke-virtual {v4}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/liquable/nemo/model/forum/BoardCategory;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/BoardCategory;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->this$1:Lcom/liquable/nemo/forum/EditBoardFragment$2;

    iget-object v5, v5, Lcom/liquable/nemo/forum/EditBoardFragment$2;->val$editBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 159
    invoke-virtual {v5}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getIcon()Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/forum/ForumDaemon;->editForumBoardWithoutIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/model/forum/BoardCategory;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->this$1:Lcom/liquable/nemo/forum/EditBoardFragment$2;

    iget-object v0, v0, Lcom/liquable/nemo/forum/EditBoardFragment$2;->this$0:Lcom/liquable/nemo/forum/EditBoardFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/forum/EditBoardFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/EditBoardFragment;->access$200(Lcom/liquable/nemo/forum/EditBoardFragment;I)V

    .line 167
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->this$1:Lcom/liquable/nemo/forum/EditBoardFragment$2;

    iget-object v0, v0, Lcom/liquable/nemo/forum/EditBoardFragment$2;->this$0:Lcom/liquable/nemo/forum/EditBoardFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/forum/EditBoardFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/forum/EditBoardFragment;->access$300(Lcom/liquable/nemo/forum/EditBoardFragment;I)V

    .line 173
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->this$1:Lcom/liquable/nemo/forum/EditBoardFragment$2;

    iget-object v0, v0, Lcom/liquable/nemo/forum/EditBoardFragment$2;->this$0:Lcom/liquable/nemo/forum/EditBoardFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/EditBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToastFromI18nKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 142
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->this$1:Lcom/liquable/nemo/forum/EditBoardFragment$2;

    iget-object v0, v0, Lcom/liquable/nemo/forum/EditBoardFragment$2;->this$0:Lcom/liquable/nemo/forum/EditBoardFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/EditBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "edit board success"

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->this$1:Lcom/liquable/nemo/forum/EditBoardFragment$2;

    iget-object v0, v0, Lcom/liquable/nemo/forum/EditBoardFragment$2;->this$0:Lcom/liquable/nemo/forum/EditBoardFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/EditBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 185
    return-void
.end method
