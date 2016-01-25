.class Lcom/liquable/nemo/external/ChannelHandler;
.super Ljava/lang/Object;
.source "ChannelHandler.java"

# interfaces
.implements Lcom/liquable/nemo/external/IExternalUrlHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .locals 3
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    .line 19
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/channel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 21
    :goto_0
    return v1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/net/URISyntaxException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handle(Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;Landroid/net/Uri;)V
    .locals 2
    .param p1, "activity"    # Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 27
    new-instance v0, Lcom/liquable/nemo/external/ChannelHandler$1;

    invoke-direct {v0, p0, p1, p2, p1}, Lcom/liquable/nemo/external/ChannelHandler$1;-><init>(Lcom/liquable/nemo/external/ChannelHandler;Landroid/content/Context;Landroid/net/Uri;Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 61
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/external/ChannelHandler$1;->execute([Ljava/lang/Object;)V

    .line 63
    return-void
.end method
