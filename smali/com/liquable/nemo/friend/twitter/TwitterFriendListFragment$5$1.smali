.class Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5$1;
.super Ljava/lang/Object;
.source "TwitterFriendListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5$1;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5$1;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendListAdapter:Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1600(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5$1;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$5;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterFriendsOnScreen:Ljava/util/List;
    invoke-static {v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1500(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListAdapter;->reset(Ljava/util/List;)V

    .line 720
    return-void
.end method
