.class Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "LoginToTwitterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;->onPostExecute(Ltwitter4j/auth/AccessToken;)V
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
.field final synthetic this$2:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;

.field final synthetic val$accessToken:Ltwitter4j/auth/AccessToken;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;Landroid/content/Context;Ltwitter4j/auth/AccessToken;)V
    .locals 0
    .param p1, "this$2"    # Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1$1;->this$2:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;

    iput-object p3, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1$1;->val$accessToken:Ltwitter4j/auth/AccessToken;

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
    .line 101
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 107
    :try_start_0
    iget-object v5, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1$1;->this$2:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;

    iget-object v5, v5, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;->this$1:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;

    iget-object v5, v5, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->mTwitter:Ltwitter4j/Twitter;
    invoke-static {v5}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->access$000(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)Ltwitter4j/Twitter;

    move-result-object v5

    invoke-interface {v5}, Ltwitter4j/Twitter;->getId()J

    move-result-wide v2

    .line 108
    .local v2, "twitterId":J
    iget-object v5, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1$1;->this$2:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;

    iget-object v5, v5, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;->this$1:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;

    iget-object v5, v5, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->mTwitter:Ltwitter4j/Twitter;
    invoke-static {v5}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->access$000(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)Ltwitter4j/Twitter;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [J

    const/4 v7, 0x0

    aput-wide v2, v6, v7

    invoke-interface {v5, v6}, Ltwitter4j/Twitter;->lookupUsers([J)Ltwitter4j/ResponseList;

    move-result-object v1

    .line 110
    .local v1, "lookupUsers":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ltwitter4j/ResponseList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltwitter4j/User;

    .line 111
    .local v4, "user":Ltwitter4j/User;
    if-eqz v4, :cond_0

    .line 112
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->accountService:Lcom/liquable/nemo/client/service/AccountService;

    sget-object v6, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v6}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v6

    .line 114
    invoke-interface {v4}, Ltwitter4j/User;->getLang()Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-virtual {v5, v6, v2, v3, v7}, Lcom/liquable/nemo/client/service/AccountService;->connectTwitter(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    .end local v1    # "lookupUsers":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    .end local v2    # "twitterId":J
    .end local v4    # "user":Ltwitter4j/User;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v5, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1$1;->this$2:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;

    iget-object v5, v5, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;->this$1:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;

    iget-object v5, v5, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {v5}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->access$100(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)Lcom/liquable/nemo/util/Logger;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 119
    .local v0, "e":Ltwitter4j/TwitterException;
    iget-object v5, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1$1;->this$2:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;

    iget-object v5, v5, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;->this$1:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;

    iget-object v5, v5, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {v5}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->access$100(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)Lcom/liquable/nemo/util/Logger;

    move-result-object v5

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1$1;->this$2:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;->this$1:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->access$400(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;I)V

    .line 127
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 131
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->connectToTwitter()V

    .line 132
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    new-instance v1, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;

    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1$1;->val$accessToken:Ltwitter4j/auth/AccessToken;

    invoke-virtual {v2}, Ltwitter4j/auth/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1$1;->val$accessToken:Ltwitter4j/auth/AccessToken;

    .line 133
    invoke-virtual {v3}, Ltwitter4j/auth/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->saveTwitterCredential(Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;)V

    .line 134
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1$1;->this$2:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;->this$1:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$LoginToTwitterCallback;

    invoke-interface {v0}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$LoginToTwitterCallback;->goToTwitterFriends()V

    .line 135
    return-void
.end method
