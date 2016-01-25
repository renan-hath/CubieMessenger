.class Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;
.super Landroid/os/AsyncTask;
.source "TwitterFriendListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->listMoreTwitterFriend(Z)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

.field final synthetic val$firstCall:Z


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    iput-boolean p2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;->val$firstCall:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 338
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->indexOfCurrentPage:I
    invoke-static {v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1100(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)I

    move-result v2

    mul-int/lit8 v1, v2, 0x64

    .line 339
    .local v1, "start":I
    add-int/lit8 v2, v1, 0x64

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .line 340
    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->allTwitterFriendIds:[J
    invoke-static {v3}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1200(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)[J

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 339
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 341
    .local v0, "end":I
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getMoreFriendsFromTwitter(II)V
    invoke-static {v2, v1, v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1300(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;II)V

    .line 343
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 334
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "end"    # Ljava/lang/Integer;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const/4 v1, 0x6

    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1400(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V

    .line 349
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendListAdapter:Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1600(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendsOnScreen:Ljava/util/List;
    invoke-static {v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1500(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->reset(Ljava/util/List;)V

    .line 351
    iget-boolean v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;->val$firstCall:Z

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1700(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->indexOfCurrentPage:I
    invoke-static {v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1100(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 354
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 334
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const/4 v1, 0x6

    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1800(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V

    .line 359
    return-void
.end method
