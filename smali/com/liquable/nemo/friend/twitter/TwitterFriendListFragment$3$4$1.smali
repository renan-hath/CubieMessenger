.class Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4$1;
.super Landroid/os/AsyncTask;
.source "TwitterFriendListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;->onClick(Landroid/content/DialogInterface;I)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;)V
    .locals 0
    .param p1, "this$2"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 585
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitter:Ltwitter4j/Twitter;
    invoke-static {v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$000(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ltwitter4j/Twitter;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;

    iget-object v2, v2, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;->val$friend:Lcom/liquable/nemo/friend/twitter/TwitterFriend;

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->getTwitterId()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;

    iget-object v5, v5, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;->val$dmOnTwitterEditText:Landroid/widget/EditText;

    .line 586
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->twitter_dm:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 587
    invoke-static {v5}, Lcom/liquable/nemo/util/CubieProfileUrl;->getUrl(Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 585
    invoke-interface {v1, v2, v3, v4}, Ltwitter4j/Twitter;->sendDirectMessage(JLjava/lang/String;)Ltwitter4j/DirectMessage;

    .line 588
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 592
    :goto_0
    return-object v1

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ltwitter4j/TwitterException;
    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$100(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Lcom/liquable/nemo/util/Logger;

    move-result-object v1

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 591
    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterErrorToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$800(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 592
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 581
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 598
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$2200(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V

    .line 599
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->shareAppSuccessFromTwitterDM()V

    .line 601
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0475

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 606
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterErrorToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$800(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 581
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$2300(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V

    .line 611
    return-void
.end method
