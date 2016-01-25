.class Lcom/liquable/nemo/util/DebugReporter$1;
.super Ljava/lang/Object;
.source "DebugReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/DebugReporter;->debug(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/util/DebugReporter;

.field final synthetic val$data:Ljava/util/Map;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/DebugReporter;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/DebugReporter;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/liquable/nemo/util/DebugReporter$1;->this$0:Lcom/liquable/nemo/util/DebugReporter;

    iput-object p2, p0, Lcom/liquable/nemo/util/DebugReporter$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/liquable/nemo/util/DebugReporter$1;->val$data:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 39
    :try_start_0
    iget-object v4, p0, Lcom/liquable/nemo/util/DebugReporter$1;->this$0:Lcom/liquable/nemo/util/DebugReporter;

    # invokes: Lcom/liquable/nemo/util/DebugReporter;->createNemoHttpServiceForPost()Lcom/liquable/nemo/http/NemoHttpService;
    invoke-static {v4}, Lcom/liquable/nemo/util/DebugReporter;->access$000(Lcom/liquable/nemo/util/DebugReporter;)Lcom/liquable/nemo/http/NemoHttpService;

    move-result-object v2

    .line 41
    .local v2, "httpService":Lcom/liquable/nemo/http/NemoHttpService;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "@level"

    const-string/jumbo v6, "debug"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "@title"

    iget-object v6, p0, Lcom/liquable/nemo/util/DebugReporter$1;->val$title:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v4, p0, Lcom/liquable/nemo/util/DebugReporter$1;->val$data:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v7, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "httpService":Lcom/liquable/nemo/http/NemoHttpService;
    .end local v3    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v1

    .line 52
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/liquable/nemo/util/DebugReporter$1;->this$0:Lcom/liquable/nemo/util/DebugReporter;

    # getter for: Lcom/liquable/nemo/util/DebugReporter;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {v4}, Lcom/liquable/nemo/util/DebugReporter;->access$100(Lcom/liquable/nemo/util/DebugReporter;)Lcom/liquable/nemo/util/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ErrorReporter.report:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 54
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 48
    .restart local v2    # "httpService":Lcom/liquable/nemo/http/NemoHttpService;
    .restart local v3    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_0
    :try_start_1
    sget-object v4, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    const-string/jumbo v5, "/api/dumpRequest"

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/client/ServerType;->getHomeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 48
    invoke-virtual {v2, v4, v3, v5}, Lcom/liquable/nemo/http/NemoHttpService;->post(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lcom/liquable/nemo/http/NemoHttpResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
