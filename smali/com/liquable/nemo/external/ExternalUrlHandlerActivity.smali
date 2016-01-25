.class public Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;
.super Lcom/liquable/nemo/BaseFragmentActivity;
.source "ExternalUrlHandlerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;->finish()V

    .line 33
    :goto_0
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 19
    .local v0, "data":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;->finish()V

    goto :goto_0

    .line 24
    :cond_1
    new-instance v1, Lcom/liquable/nemo/external/ExternalUrlHandler;

    invoke-direct {v1}, Lcom/liquable/nemo/external/ExternalUrlHandler;-><init>()V

    .line 25
    .local v1, "externalUrlHandler":Lcom/liquable/nemo/external/ExternalUrlHandler;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/external/ExternalUrlHandler;->canHandle(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 26
    invoke-virtual {p0}, Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;->finish()V

    goto :goto_0

    .line 30
    :cond_2
    const v2, 0x7f03002b

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;->setContentView(I)V

    .line 32
    invoke-virtual {v1, p0, v0}, Lcom/liquable/nemo/external/ExternalUrlHandler;->handle(Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;Landroid/net/Uri;)V

    goto :goto_0
.end method
