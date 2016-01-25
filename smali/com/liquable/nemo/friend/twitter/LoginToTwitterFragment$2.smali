.class Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$2;
.super Landroid/os/AsyncTask;
.source "LoginToTwitterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

.field final synthetic val$webview:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$2;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    iput-object p2, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$2;->val$webview:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$2;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$2;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->mTwitter:Ltwitter4j/Twitter;
    invoke-static {v2}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->access$000(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)Ltwitter4j/Twitter;

    move-result-object v2

    const-string/jumbo v3, "http://liquable.com"

    invoke-interface {v2, v3}, Ltwitter4j/Twitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v2

    # setter for: Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->mRequestToken:Ltwitter4j/auth/RequestToken;
    invoke-static {v1, v2}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->access$602(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/RequestToken;

    .line 168
    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$2;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->mRequestToken:Ltwitter4j/auth/RequestToken;
    invoke-static {v1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->access$600(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)Ltwitter4j/auth/RequestToken;

    move-result-object v1

    invoke-virtual {v1}, Ltwitter4j/auth/RequestToken;->getAuthenticationURL()Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 174
    :goto_0
    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ltwitter4j/TwitterException;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->cancelOrFailOnLoginToTwitter(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$2;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {v1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->access$100(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)Lcom/liquable/nemo/util/Logger;

    move-result-object v1

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 174
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 162
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$2;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->access$700(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;I)V

    .line 182
    if-nez p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$2;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    # getter for: Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->twitterErrorToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->access$200(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$2;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    # invokes: Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->close()V
    invoke-static {v0}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->access$800(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$2;->val$webview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$2;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->access$900(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;I)V

    .line 193
    return-void
.end method
