.class Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;
.super Ljava/lang/Object;
.source "TwitterFriendListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;

.field final synthetic val$shareOnTwitterEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;

    iput-object p2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;->val$shareOnTwitterEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;->val$shareOnTwitterEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d01ba

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 226
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->shareAppFromTwitterTimelines()V

    .line 198
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$700(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V

    .line 199
    new-instance v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2$1;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 225
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
