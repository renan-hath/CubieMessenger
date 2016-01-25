.class public Lcom/liquable/nemo/external/ExternalUrlHandler;
.super Ljava/lang/Object;
.source "ExternalUrlHandler.java"

# interfaces
.implements Lcom/liquable/nemo/external/IExternalUrlHandler;


# static fields
.field static debugLogger:Lcom/liquable/nemo/util/Logger;

.field private static externalUrlHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/external/IExternalUrlHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-class v0, Lcom/liquable/nemo/external/ExternalUrlHandler;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/external/ExternalUrlHandler;->debugLogger:Lcom/liquable/nemo/util/Logger;

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/liquable/nemo/external/ExternalUrlHandler;->externalUrlHandlers:Ljava/util/List;

    .line 18
    sget-object v0, Lcom/liquable/nemo/external/ExternalUrlHandler;->externalUrlHandlers:Ljava/util/List;

    new-instance v1, Lcom/liquable/nemo/external/ChannelHandler;

    invoke-direct {v1}, Lcom/liquable/nemo/external/ChannelHandler;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/liquable/nemo/external/ExternalUrlHandler;->externalUrlHandlers:Ljava/util/List;

    new-instance v1, Lcom/liquable/nemo/external/FallbackHandler;

    invoke-direct {v1}, Lcom/liquable/nemo/external/FallbackHandler;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/external/ExternalUrlHandler;->findHandler(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method findHandler(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/external/IExternalUrlHandler;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 28
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "cubie://external"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-object v1

    .line 32
    :cond_1
    sget-object v2, Lcom/liquable/nemo/external/ExternalUrlHandler;->externalUrlHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/external/IExternalUrlHandler;

    .line 33
    .local v0, "handler":Lcom/liquable/nemo/external/IExternalUrlHandler;
    invoke-interface {v0, p1}, Lcom/liquable/nemo/external/IExternalUrlHandler;->canHandle(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public handle(Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;Landroid/net/Uri;)V
    .locals 3
    .param p1, "activity"    # Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 42
    sget-object v1, Lcom/liquable/nemo/external/ExternalUrlHandler;->externalUrlHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/external/IExternalUrlHandler;

    .line 43
    .local v0, "handler":Lcom/liquable/nemo/external/IExternalUrlHandler;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/liquable/nemo/external/IExternalUrlHandler;->canHandle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-interface {v0, p1, p2}, Lcom/liquable/nemo/external/IExternalUrlHandler;->handle(Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;Landroid/net/Uri;)V

    .line 48
    .end local v0    # "handler":Lcom/liquable/nemo/external/IExternalUrlHandler;
    :cond_1
    return-void
.end method
