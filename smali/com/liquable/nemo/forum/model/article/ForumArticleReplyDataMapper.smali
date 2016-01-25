.class public Lcom/liquable/nemo/forum/model/article/ForumArticleReplyDataMapper;
.super Ljava/lang/Object;
.source "ForumArticleReplyDataMapper.java"


# instance fields
.field private final types:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/forum/model/article/ForumArticleReplyDataMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    .line 16
    return-void
.end method

.method private restoreClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ForumArticleReplyDataMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 39
    .local v0, "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ForumArticleReplyDataMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;
    .locals 7
    .param p1, "raw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getSimple()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->readTree(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 22
    .local v2, "tree":Lorg/codehaus/jackson/JsonNode;
    const-string/jumbo v4, "@type"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 23
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "missing @type error, source - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v2    # "tree":Lorg/codehaus/jackson/JsonNode;
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "ClassNotFoundException"

    invoke-direct {v4, v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 25
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "tree":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    :try_start_1
    const-string/jumbo v4, "@type"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonNode;->asText()Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, "type":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/liquable/nemo/forum/model/article/ForumArticleReplyDataMapper;->restoreClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 27
    .local v1, "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getSimple()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Lorg/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4
.end method

.method public encode(Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;)Ljava/lang/String;
    .locals 1
    .param p1, "adItem"    # Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getSimple()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
