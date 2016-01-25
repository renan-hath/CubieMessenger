.class Lcom/liquable/nemo/util/DebugReporter$2;
.super Ljava/lang/Object;
.source "DebugReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/DebugReporter;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/util/DebugReporter;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/DebugReporter;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/DebugReporter;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/liquable/nemo/util/DebugReporter$2;->this$0:Lcom/liquable/nemo/util/DebugReporter;

    iput-object p2, p0, Lcom/liquable/nemo/util/DebugReporter$2;->val$errorMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/liquable/nemo/util/DebugReporter$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 65
    :try_start_0
    iget-object v6, p0, Lcom/liquable/nemo/util/DebugReporter$2;->this$0:Lcom/liquable/nemo/util/DebugReporter;

    # invokes: Lcom/liquable/nemo/util/DebugReporter;->createNemoHttpServiceForPost()Lcom/liquable/nemo/http/NemoHttpService;
    invoke-static {v6}, Lcom/liquable/nemo/util/DebugReporter;->access$000(Lcom/liquable/nemo/util/DebugReporter;)Lcom/liquable/nemo/http/NemoHttpService;

    move-result-object v1

    .line 67
    .local v1, "httpService":Lcom/liquable/nemo/http/NemoHttpService;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "@level"

    const-string/jumbo v8, "error"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "errorMessage"

    iget-object v8, p0, Lcom/liquable/nemo/util/DebugReporter$2;->val$errorMessage:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v6, p0, Lcom/liquable/nemo/util/DebugReporter$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v6}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 72
    .local v3, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v5, "stackTraceStr":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/liquable/nemo/util/DebugReporter$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/liquable/nemo/util/DebugReporter$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    array-length v7, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v4, v3, v6

    .line 75
    .local v4, "stackTraceElement":Ljava/lang/StackTraceElement;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 77
    .end local v4    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_0
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "stackTrace"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v6, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    const-string/jumbo v7, "/api/dumpRequest"

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/client/ServerType;->getHomeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    .line 79
    invoke-virtual {v1, v6, v2, v7}, Lcom/liquable/nemo/http/NemoHttpService;->post(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lcom/liquable/nemo/http/NemoHttpResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "httpService":Lcom/liquable/nemo/http/NemoHttpService;
    .end local v2    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v3    # "stackTrace":[Ljava/lang/StackTraceElement;
    .end local v5    # "stackTraceStr":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/liquable/nemo/util/DebugReporter$2;->this$0:Lcom/liquable/nemo/util/DebugReporter;

    # getter for: Lcom/liquable/nemo/util/DebugReporter;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {v6}, Lcom/liquable/nemo/util/DebugReporter;->access$100(Lcom/liquable/nemo/util/DebugReporter;)Lcom/liquable/nemo/util/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ErrorReporter.report:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method
