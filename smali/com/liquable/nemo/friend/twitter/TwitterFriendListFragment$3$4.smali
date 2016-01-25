.class Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;
.super Ljava/lang/Object;
.source "TwitterFriendListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->sendDirectMessageToTwitterFriend(Lcom/liquable/nemo/friend/twitter/TwitterFriend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

.field final synthetic val$dmOnTwitterEditText:Landroid/widget/EditText;

.field final synthetic val$friend:Lcom/liquable/nemo/friend/twitter/TwitterFriend;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;Landroid/widget/EditText;Lcom/liquable/nemo/friend/twitter/TwitterFriend;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    iput-object p2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;->val$dmOnTwitterEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;->val$friend:Lcom/liquable/nemo/friend/twitter/TwitterFriend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 574
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;->val$dmOnTwitterEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d01ba

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 614
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->shareAppFromTwitterDM()V

    .line 581
    new-instance v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4$1;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 613
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
