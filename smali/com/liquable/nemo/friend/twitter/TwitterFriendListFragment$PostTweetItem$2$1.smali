.class Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2$1;
.super Landroid/os/AsyncTask;
.source "TwitterFriendListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;->onClick(Landroid/content/DialogInterface;I)V
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
        "Ltwitter4j/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2$1;->doInBackground([Ljava/lang/Void;)Ltwitter4j/Status;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ltwitter4j/Status;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitter:Ltwitter4j/Twitter;
    invoke-static {v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$000(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Ltwitter4j/Twitter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;

    iget-object v3, v3, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;->val$shareOnTwitterEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->twitter_feed:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 204
    invoke-static {v3}, Lcom/liquable/nemo/util/CubieProfileUrl;->getUrl(Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-interface {v1, v2}, Ltwitter4j/Twitter;->updateStatus(Ljava/lang/String;)Ltwitter4j/Status;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 209
    :goto_0
    return-object v1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ltwitter4j/TwitterException;
    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$100(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Lcom/liquable/nemo/util/Logger;

    move-result-object v1

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->twitterErrorToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$800(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 209
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 199
    check-cast p1, Ltwitter4j/Status;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2$1;->onPostExecute(Ltwitter4j/Status;)V

    return-void
.end method

.method protected onPostExecute(Ltwitter4j/Status;)V
    .locals 2
    .param p1, "result"    # Ltwitter4j/Status;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$900(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V

    .line 215
    if-eqz p1, :cond_0

    .line 216
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->shareAppSuccessFromTwitterTimelines()V

    .line 217
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d03ee

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 219
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2$1;->this$2:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;->this$1:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->access$1000(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;I)V

    .line 224
    return-void
.end method
