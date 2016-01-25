.class public Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "LoginToTwitterFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$LoginToTwitterCallback;
    }
.end annotation


# static fields
.field public static final ACCESS_URL:Ljava/lang/String; = "http://api.twitter.com/oauth/access_token"

.field public static final AUTHORIZE_URL:Ljava/lang/String; = "http://api.twitter.com/oauth/authorize"

.field public static final CONSUMER_KEY:Ljava/lang/String; = "NsbRRqsFHd9kzOouTwbgg"

.field public static final CONSUMER_SECRET:Ljava/lang/String; = "CyP0bJ5wUWaJNVJOlKvsOToRhGH1stOQrDdDaI8"

.field public static final OAUTH_CALLBACK_URL:Ljava/lang/String; = "http://liquable.com"

.field public static final OAUTH_TOKEN:Ljava/lang/String; = "oauth_token"

.field public static final OAUTH_VERIFIER:Ljava/lang/String; = "oauth_verifier"

.field public static final REQUEST_URL:Ljava/lang/String; = "http://api.twitter.com/oauth/request_token"


# instance fields
.field private final logger:Lcom/liquable/nemo/util/Logger;

.field private mRequestToken:Ltwitter4j/auth/RequestToken;

.field private mTwitter:Ltwitter4j/Twitter;

.field private twitterErrorToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    .line 47
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstance()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)Ltwitter4j/Twitter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->mTwitter:Ltwitter4j/Twitter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)Lcom/liquable/nemo/util/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->twitterErrorToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->close()V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)Ltwitter4j/auth/RequestToken;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->mRequestToken:Ltwitter4j/auth/RequestToken;

    return-object v0
.end method

.method static synthetic access$602(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/RequestToken;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;
    .param p1, "x1"    # Ltwitter4j/auth/RequestToken;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->mRequestToken:Ltwitter4j/auth/RequestToken;

    return-object p1
.end method

.method static synthetic access$700(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->close()V

    return-void
.end method

.method static synthetic access$900(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->showDialog(I)V

    return-void
.end method


# virtual methods
.method protected getMustImplementedCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/BaseFragmentCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    const-class v0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$LoginToTwitterCallback;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 64
    const v3, 0x7f0300b9

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "fragmentView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0d01c9

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->twitterErrorToast:Landroid/widget/Toast;

    .line 70
    new-instance v1, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;-><init>(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)V

    .line 150
    .local v1, "webViewClient":Landroid/webkit/WebViewClient;
    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 151
    .local v2, "webview":Landroid/webkit/WebView;
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 152
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 153
    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 154
    const v3, 0x7f0801f4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v5, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 158
    new-instance v3, Ltwitter4j/TwitterFactory;

    invoke-direct {v3}, Ltwitter4j/TwitterFactory;-><init>()V

    invoke-virtual {v3}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->mTwitter:Ltwitter4j/Twitter;

    .line 159
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->mRequestToken:Ltwitter4j/auth/RequestToken;

    .line 160
    iget-object v3, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->mTwitter:Ltwitter4j/Twitter;

    const-string/jumbo v4, "NsbRRqsFHd9kzOouTwbgg"

    const-string/jumbo v5, "CyP0bJ5wUWaJNVJOlKvsOToRhGH1stOQrDdDaI8"

    invoke-interface {v3, v4, v5}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v3, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$2;

    invoke-direct {v3, p0, v2}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$2;-><init>(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;Landroid/webkit/WebView;)V

    new-array v4, v6, [Ljava/lang/Void;

    .line 196
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    return-object v0
.end method
