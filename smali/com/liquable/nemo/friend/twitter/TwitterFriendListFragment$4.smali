.class Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$4;
.super Ljava/lang/Object;
.source "TwitterFriendListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private loading:Z

.field private previousTotal:I

.field final synthetic this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$4;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$4;->previousTotal:I

    .line 628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$4;->loading:Z

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 635
    iget-boolean v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$4;->loading:Z

    if-eqz v0, :cond_0

    .line 636
    iget v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$4;->previousTotal:I

    if-le p4, v0, :cond_0

    .line 637
    iput-boolean v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$4;->loading:Z

    .line 638
    iput p4, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$4;->previousTotal:I

    .line 641
    :cond_0
    iget-boolean v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$4;->loading:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 642
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$4;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendsOnScreen:Ljava/util/List;
    invoke-static {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1500(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$4;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendsOnScreen:Ljava/util/List;
    invoke-static {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1500(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$4;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .line 643
    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->allTwitterFriendIds:[J
    invoke-static {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1200(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)[J

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$4;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->indexOfCurrentPage:I
    invoke-static {v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1100(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    if-gt v0, v1, :cond_2

    .line 651
    :cond_1
    :goto_0
    return-void

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$4;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->indexOfCurrentPage:I
    invoke-static {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1100(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)I

    move-result v0

    if-lez v0, :cond_1

    .line 647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$4;->loading:Z

    .line 648
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$4;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->listMoreTwitterFriend(Z)V
    invoke-static {v0, v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$2400(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;Z)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 654
    return-void
.end method
