.class Lcom/liquable/volley/request/RequestBuilder$DefaultUrlComposer;
.super Lcom/liquable/volley/request/UrlPrefixComposer;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/volley/request/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultUrlComposer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/liquable/volley/request/UrlPrefixComposer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/volley/request/RequestBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/volley/request/RequestBuilder$1;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/liquable/volley/request/RequestBuilder$DefaultUrlComposer;-><init>()V

    return-void
.end method


# virtual methods
.method protected createUrlPrefix(Lcom/liquable/volley/request/RequestInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "requestInfo"    # Lcom/liquable/volley/request/RequestInfo;

    .prologue
    .line 43
    invoke-interface {p1}, Lcom/liquable/volley/request/RequestInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "no host configured"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lcom/liquable/volley/request/RequestInfo;->isRequireSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :goto_0
    invoke-interface {p1}, Lcom/liquable/volley/request/RequestInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-interface {p1}, Lcom/liquable/volley/request/RequestInfo;->getPort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 56
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-interface {p1}, Lcom/liquable/volley/request/RequestInfo;->getPort()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 51
    :cond_2
    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
