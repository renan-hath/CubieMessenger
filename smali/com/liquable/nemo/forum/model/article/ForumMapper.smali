.class public final enum Lcom/liquable/nemo/forum/model/article/ForumMapper;
.super Ljava/lang/Enum;
.source "ForumMapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/forum/model/article/ForumMapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/forum/model/article/ForumMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/forum/model/article/ForumMapper;


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
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/liquable/nemo/forum/model/article/ForumMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/forum/model/article/ForumMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/forum/model/article/ForumMapper;->INSTANCE:Lcom/liquable/nemo/forum/model/article/ForumMapper;

    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/forum/model/article/ForumMapper;

    sget-object v1, Lcom/liquable/nemo/forum/model/article/ForumMapper;->INSTANCE:Lcom/liquable/nemo/forum/model/article/ForumMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/forum/model/article/ForumMapper;->$VALUES:[Lcom/liquable/nemo/forum/model/article/ForumMapper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/forum/model/article/ForumMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private decode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getSimple()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->readTree(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 32
    .local v2, "tree":Lorg/codehaus/jackson/JsonNode;
    const-string/jumbo v6, "@type"

    invoke-virtual {v2, v6}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    .line 37
    .local v4, "typeNode":Lorg/codehaus/jackson/JsonNode;
    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "type":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->restoreClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 39
    .local v1, "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getSimple()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v6

    invoke-virtual {v6, v2, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Lorg/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 48
    .end local v1    # "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "tree":Lorg/codehaus/jackson/JsonNode;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "typeNode":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    :goto_0
    return-object v5

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 42
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/IOException;
    sget-object v6, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v6}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v6

    if-nez v6, :cond_0

    .line 44
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Maybe your jackson model has written in wrong format. It\'s almost impossible to receive undecodable data, without classnotfoundException."

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private encode(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 4
    .param p1, "body"    # Ljava/io/Serializable;

    .prologue
    .line 78
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->isAnnotatedWithJsonTypeInfo(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected body, because it doesnt have jsonTypeInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonGenerationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lorg/codehaus/jackson/JsonGenerationException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 82
    .end local v0    # "e":Lorg/codehaus/jackson/JsonGenerationException;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getSimple()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/codehaus/jackson/JsonGenerationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    return-object v1

    .line 85
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Lorg/codehaus/jackson/map/JsonMappingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 87
    .end local v0    # "e":Lorg/codehaus/jackson/map/JsonMappingException;
    :catch_2
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getInstance()Lcom/liquable/nemo/forum/model/article/ForumMapper;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/liquable/nemo/forum/model/article/ForumMapper;->INSTANCE:Lcom/liquable/nemo/forum/model/article/ForumMapper;

    return-object v0
.end method

.method private isAnnotatedWithJsonTypeInfo(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lorg/codehaus/jackson/annotate/JsonTypeInfo;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restoreClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
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
    .line 105
    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ForumMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 106
    .local v0, "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

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

    .line 108
    invoke-direct {p0, v0}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->isAnnotatedWithJsonTypeInfo(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " doesn\'t have JsonTypeInfo annotation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ForumMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/forum/model/article/ForumMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/liquable/nemo/forum/model/article/ForumMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/article/ForumMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/forum/model/article/ForumMapper;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/liquable/nemo/forum/model/article/ForumMapper;->$VALUES:[Lcom/liquable/nemo/forum/model/article/ForumMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/forum/model/article/ForumMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/forum/model/article/ForumMapper;

    return-object v0
.end method


# virtual methods
.method public decodeArticle(Lcom/liquable/nemo/model/forum/ForumArticleDto;)Lcom/liquable/nemo/forum/model/article/Article;
    .locals 4
    .param p1, "articleDto"    # Lcom/liquable/nemo/model/forum/ForumArticleDto;

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->decode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/article/IArticleBody;

    .line 54
    .local v0, "articleBody":Lcom/liquable/nemo/forum/model/article/IArticleBody;
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/liquable/nemo/forum/model/article/UnknownArticle;

    .end local v0    # "articleBody":Lcom/liquable/nemo/forum/model/article/IArticleBody;
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/forum/model/article/UnknownArticle;-><init>(Ljava/lang/String;)V

    .line 57
    .restart local v0    # "articleBody":Lcom/liquable/nemo/forum/model/article/IArticleBody;
    :cond_0
    new-instance v1, Lcom/liquable/nemo/forum/model/article/Article;

    new-instance v2, Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    invoke-direct {v2, p1}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;-><init>(Lcom/liquable/nemo/model/forum/ForumArticleDto;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/liquable/nemo/forum/model/article/Article;-><init>(Lcom/liquable/nemo/forum/model/article/ArticleInfo;Lcom/liquable/nemo/forum/model/article/IArticleBody;Z)V

    return-object v1
.end method

.method public decodeArticle(Lcom/liquable/nemo/model/forum/ForumArticleDto;Z)Lcom/liquable/nemo/forum/model/article/Article;
    .locals 3
    .param p1, "articleDto"    # Lcom/liquable/nemo/model/forum/ForumArticleDto;
    .param p2, "reported"    # Z

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->decode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/article/IArticleBody;

    .line 62
    .local v0, "articleBody":Lcom/liquable/nemo/forum/model/article/IArticleBody;
    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/liquable/nemo/forum/model/article/UnknownArticle;

    .end local v0    # "articleBody":Lcom/liquable/nemo/forum/model/article/IArticleBody;
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/forum/model/article/UnknownArticle;-><init>(Ljava/lang/String;)V

    .line 65
    .restart local v0    # "articleBody":Lcom/liquable/nemo/forum/model/article/IArticleBody;
    :cond_0
    new-instance v1, Lcom/liquable/nemo/forum/model/article/Article;

    new-instance v2, Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    invoke-direct {v2, p1}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;-><init>(Lcom/liquable/nemo/model/forum/ForumArticleDto;)V

    invoke-direct {v1, v2, v0, p2}, Lcom/liquable/nemo/forum/model/article/Article;-><init>(Lcom/liquable/nemo/forum/model/article/ArticleInfo;Lcom/liquable/nemo/forum/model/article/IArticleBody;Z)V

    return-object v1
.end method

.method public decodeArticleReply(Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;)Lcom/liquable/nemo/forum/model/article/ArticleReply;
    .locals 3
    .param p1, "articleReplyDto"    # Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->decode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;

    .line 70
    .local v0, "articleReplyBody":Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;
    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/liquable/nemo/forum/model/article/UnknownArticleReply;

    .end local v0    # "articleReplyBody":Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/forum/model/article/UnknownArticleReply;-><init>(Ljava/lang/String;)V

    .line 73
    .restart local v0    # "articleReplyBody":Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;
    :cond_0
    new-instance v1, Lcom/liquable/nemo/forum/model/article/ArticleReply;

    new-instance v2, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;

    invoke-direct {v2, p1}, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;-><init>(Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;)V

    invoke-direct {v1, v2, v0}, Lcom/liquable/nemo/forum/model/article/ArticleReply;-><init>(Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;)V

    return-object v1
.end method

.method public encodeArticleBody(Lcom/liquable/nemo/forum/model/article/IArticleBody;)Ljava/lang/String;
    .locals 1
    .param p1, "articleBody"    # Lcom/liquable/nemo/forum/model/article/IArticleBody;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->encode(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeArticleReplyBody(Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;)Ljava/lang/String;
    .locals 1
    .param p1, "articleReplyBody"    # Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->encode(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
