.class Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;
.super Landroid/os/AsyncTask;
.source "LoginToTwitterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
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
        "Ltwitter4j/auth/AccessToken;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;->this$1:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;

    iput-object p2, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;->doInBackground([Ljava/lang/Void;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ltwitter4j/auth/AccessToken;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 80
    iget-object v3, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;->val$url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 81
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v3, "oauth_verifier"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "oauthVerifier":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;->this$1:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;

    iget-object v3, v3, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->mTwitter:Ltwitter4j/Twitter;
    invoke-static {v3}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->access$000(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)Ltwitter4j/Twitter;

    move-result-object v3

    invoke-interface {v3, v1}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 90
    :goto_0
    return-object v3

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ltwitter4j/TwitterException;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v3

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService;->cancelOrFailOnLoginToTwitter(Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;->this$1:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;

    iget-object v3, v3, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {v3}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->access$100(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)Lcom/liquable/nemo/util/Logger;

    move-result-object v3

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 90
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Ltwitter4j/auth/AccessToken;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;->onPostExecute(Ltwitter4j/auth/AccessToken;)V

    return-void
.end method

.method protected onPostExecute(Ltwitter4j/auth/AccessToken;)V
    .locals 2
    .param p1, "accessToken"    # Ltwitter4j/auth/AccessToken;

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;->this$1:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->twitterErrorToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->access$200(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;->this$1:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    # invokes: Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->close()V
    invoke-static {v0}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->access$300(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)V

    .line 138
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1$1;

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;->this$1:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1$1;-><init>(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;Landroid/content/Context;Ltwitter4j/auth/AccessToken;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 136
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1$1;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;->this$1:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->access$500(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;I)V

    .line 143
    return-void
.end method
