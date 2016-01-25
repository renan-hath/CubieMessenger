.class public final enum Lcom/liquable/nemo/notice/NoticeMapper;
.super Ljava/lang/Enum;
.source "NoticeMapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/notice/NoticeMapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/notice/NoticeMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/notice/NoticeMapper;


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

    .line 23
    new-instance v0, Lcom/liquable/nemo/notice/NoticeMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/notice/NoticeMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/notice/NoticeMapper;->INSTANCE:Lcom/liquable/nemo/notice/NoticeMapper;

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/notice/NoticeMapper;

    sget-object v1, Lcom/liquable/nemo/notice/NoticeMapper;->INSTANCE:Lcom/liquable/nemo/notice/NoticeMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/notice/NoticeMapper;->$VALUES:[Lcom/liquable/nemo/notice/NoticeMapper;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/notice/NoticeMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static getInstance()Lcom/liquable/nemo/notice/NoticeMapper;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/liquable/nemo/notice/NoticeMapper;->INSTANCE:Lcom/liquable/nemo/notice/NoticeMapper;

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
    .line 88
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
    .line 92
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 93
    .local v0, "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 94
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

    .line 95
    invoke-direct {p0, v0}, Lcom/liquable/nemo/notice/NoticeMapper;->isAnnotatedWithJsonTypeInfo(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
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

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/notice/NoticeMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/liquable/nemo/notice/NoticeMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/notice/NoticeMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/notice/NoticeMapper;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/liquable/nemo/notice/NoticeMapper;->$VALUES:[Lcom/liquable/nemo/notice/NoticeMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/notice/NoticeMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/notice/NoticeMapper;

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Lcom/liquable/nemo/notice/INotice;
    .locals 14
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v5, 0x0

    .line 33
    .local v5, "systemId":Lorg/codehaus/jackson/JsonNode;
    const/4 v2, 0x0

    .line 34
    .local v2, "publishTime":Lorg/codehaus/jackson/JsonNode;
    const/4 v7, 0x0

    .line 35
    .local v7, "title":Lorg/codehaus/jackson/JsonNode;
    const/4 v6, 0x0

    .line 36
    .local v6, "systemIdValue":Ljava/lang/String;
    const/4 v8, 0x0

    .line 37
    .local v8, "titleValue":Ljava/lang/String;
    const/4 v11, 0x0

    .line 38
    .local v11, "typeNode":Lorg/codehaus/jackson/JsonNode;
    const/4 v9, 0x0

    .line 39
    .local v9, "tree":Lorg/codehaus/jackson/JsonNode;
    const-wide/16 v3, 0x0

    .line 41
    .local v3, "publishTimeValue":J
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getAnnotationOnly()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v12

    invoke-virtual {v12, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->readTree(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v9

    .line 42
    const-string/jumbo v12, "@type"

    invoke-virtual {v9, v12}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v11

    .line 43
    const-string/jumbo v12, "systemId"

    invoke-virtual {v9, v12}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    .line 44
    const-string/jumbo v12, "title"

    invoke-virtual {v9, v12}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v7

    .line 45
    const-string/jumbo v12, "publishTime"

    invoke-virtual {v9, v12}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 46
    if-nez v5, :cond_0

    const/4 v6, 0x0

    .line 47
    :goto_0
    if-nez v2, :cond_1

    const-wide/16 v3, 0x0

    .line 48
    :goto_1
    if-nez v7, :cond_2

    const-string/jumbo v8, ""

    .line 50
    :goto_2
    if-nez v11, :cond_3

    .line 51
    invoke-static {v8, v6, v3, v4}, Lcom/liquable/nemo/notice/PlainNotice;->fallback(Ljava/lang/String;Ljava/lang/String;J)Lcom/liquable/nemo/notice/PlainNotice;

    move-result-object v12

    .line 68
    :goto_3
    return-object v12

    .line 46
    :cond_0
    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonNode;->getLongValue()J

    move-result-wide v3

    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {v7}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_2

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    sget-object v12, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v12}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v12

    if-nez v12, :cond_3

    .line 55
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Maybe your jackson model has written in wrong format. It\'s almost impossible to receive undecodable data, without classnotfoundException."

    invoke-direct {v12, v13, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-virtual {v11}, Lorg/codehaus/jackson/JsonNode;->asText()Ljava/lang/String;

    move-result-object v10

    .line 63
    .local v10, "type":Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/liquable/nemo/notice/NoticeMapper;->restoreClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 64
    .local v1, "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getAnnotationOnly()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v12

    invoke-virtual {v12, v9, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Lorg/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/liquable/nemo/notice/INotice;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 65
    .end local v1    # "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "type":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 66
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    invoke-static {v8, v6, v3, v4}, Lcom/liquable/nemo/notice/PlainNotice;->fallback(Ljava/lang/String;Ljava/lang/String;J)Lcom/liquable/nemo/notice/PlainNotice;

    move-result-object v12

    goto :goto_3
.end method

.method public encode(Lcom/liquable/nemo/notice/INotice;)Ljava/lang/String;
    .locals 4
    .param p1, "frame"    # Lcom/liquable/nemo/notice/INotice;

    .prologue
    .line 73
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/notice/NoticeMapper;->isAnnotatedWithJsonTypeInfo(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected notice object, because it doesnt have jsonTypeInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 75
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

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Lorg/codehaus/jackson/JsonGenerationException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 77
    .end local v0    # "e":Lorg/codehaus/jackson/JsonGenerationException;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getAnnotationOnly()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/codehaus/jackson/JsonGenerationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    return-object v1

    .line 80
    :catch_1
    move-exception v0

    .line 81
    .local v0, "e":Lorg/codehaus/jackson/map/JsonMappingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 82
    .end local v0    # "e":Lorg/codehaus/jackson/map/JsonMappingException;
    :catch_2
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
