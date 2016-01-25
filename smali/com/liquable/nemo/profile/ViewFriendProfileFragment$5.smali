.class Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;
.super Ljava/lang/Object;
.source "ViewFriendProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->unsubscribeChannel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->unsubscibeChannelTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$500(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)Lcom/liquable/nemo/util/RpcAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    new-instance v1, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5$1;

    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5$1;-><init>(Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;Landroid/content/Context;)V

    # setter for: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->unsubscibeChannelTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$502(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 303
    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->unsubscibeChannelTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$500(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)Lcom/liquable/nemo/util/RpcAsyncTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method
