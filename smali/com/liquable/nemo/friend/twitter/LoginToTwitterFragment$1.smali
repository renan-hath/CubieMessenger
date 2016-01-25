.class Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;
.super Landroid/webkit/WebViewClient;
.source "LoginToTwitterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;->this$0:Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 73
    const-string/jumbo v0, "http://liquable.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 76
    new-instance v0, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;

    invoke-direct {v0, p0, p2}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;-><init>(Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 145
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/twitter/LoginToTwitterFragment$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    :cond_0
    return-void
.end method
