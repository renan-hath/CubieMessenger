.class Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Lcom/liquable/volley/request/RequestInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/volley/request/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestInfoImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/volley/request/RequestBuilder;


# direct methods
.method public constructor <init>(Lcom/liquable/volley/request/RequestBuilder;)V
    .locals 2

    .prologue
    .line 208
    iput-object p1, p0, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    # getter for: Lcom/liquable/volley/request/RequestBuilder;->path:Ljava/lang/String;
    invoke-static {p1}, Lcom/liquable/volley/request/RequestBuilder;->access$1100(Lcom/liquable/volley/request/RequestBuilder;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "path should not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    # getter for: Lcom/liquable/volley/request/RequestBuilder;->jsonBody:Ljava/lang/Object;
    invoke-static {p1}, Lcom/liquable/volley/request/RequestBuilder;->access$000(Lcom/liquable/volley/request/RequestBuilder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->method:I
    invoke-static {p1}, Lcom/liquable/volley/request/RequestBuilder;->access$400(Lcom/liquable/volley/request/RequestBuilder;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "jsonBody must use Method.POST"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_1
    return-void
.end method


# virtual methods
.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->headers:Ljava/util/Map;
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$100(Lcom/liquable/volley/request/RequestBuilder;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->headers:Ljava/util/Map;
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$100(Lcom/liquable/volley/request/RequestBuilder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->host:Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$1200(Lcom/liquable/volley/request/RequestBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->params:Ljava/util/Map;
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$500(Lcom/liquable/volley/request/RequestBuilder;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 236
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->params:Ljava/util/Map;
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$500(Lcom/liquable/volley/request/RequestBuilder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->params:Ljava/util/Map;
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$500(Lcom/liquable/volley/request/RequestBuilder;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 242
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->params:Ljava/util/Map;
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$500(Lcom/liquable/volley/request/RequestBuilder;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->path:Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$1100(Lcom/liquable/volley/request/RequestBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->port:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$1300(Lcom/liquable/volley/request/RequestBuilder;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->priority:Lcom/android/volley/Request$Priority;
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$600(Lcom/liquable/volley/request/RequestBuilder;)Lcom/android/volley/Request$Priority;

    move-result-object v0

    return-object v0
.end method

.method public isAllowCache()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->allowCache:Z
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$900(Lcom/liquable/volley/request/RequestBuilder;)Z

    move-result v0

    return v0
.end method

.method public isHttpGet()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->method:I
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$400(Lcom/liquable/volley/request/RequestBuilder;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHttpPost()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 274
    iget-object v1, p0, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->method:I
    invoke-static {v1}, Lcom/liquable/volley/request/RequestBuilder;->access$400(Lcom/liquable/volley/request/RequestBuilder;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isJsonBody()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->jsonBody:Ljava/lang/Object;
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$000(Lcom/liquable/volley/request/RequestBuilder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequireSecure()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 284
    iget-object v1, p0, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->requireSecure:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/liquable/volley/request/RequestBuilder;->access$1400(Lcom/liquable/volley/request/RequestBuilder;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 285
    iget-object v0, p0, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->requireSecure:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/liquable/volley/request/RequestBuilder;->access$1400(Lcom/liquable/volley/request/RequestBuilder;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;->isHttpGet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/liquable/volley/request/RequestBuilder$RequestInfoImpl;->this$0:Lcom/liquable/volley/request/RequestBuilder;

    # getter for: Lcom/liquable/volley/request/RequestBuilder;->allowCache:Z
    invoke-static {v1}, Lcom/liquable/volley/request/RequestBuilder;->access$900(Lcom/liquable/volley/request/RequestBuilder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    const/4 v0, 0x0

    goto :goto_0
.end method
