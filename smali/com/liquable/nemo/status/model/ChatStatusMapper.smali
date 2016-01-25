.class public final enum Lcom/liquable/nemo/status/model/ChatStatusMapper;
.super Ljava/lang/Enum;
.source "ChatStatusMapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/status/model/ChatStatusMapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/status/model/ChatStatusMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/status/model/ChatStatusMapper;


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
    new-instance v0, Lcom/liquable/nemo/status/model/ChatStatusMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/status/model/ChatStatusMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/status/model/ChatStatusMapper;->INSTANCE:Lcom/liquable/nemo/status/model/ChatStatusMapper;

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/status/model/ChatStatusMapper;

    sget-object v1, Lcom/liquable/nemo/status/model/ChatStatusMapper;->INSTANCE:Lcom/liquable/nemo/status/model/ChatStatusMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/status/model/ChatStatusMapper;->$VALUES:[Lcom/liquable/nemo/status/model/ChatStatusMapper;

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

    iput-object v0, p0, Lcom/liquable/nemo/status/model/ChatStatusMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static getInstance()Lcom/liquable/nemo/status/model/ChatStatusMapper;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/liquable/nemo/status/model/ChatStatusMapper;->INSTANCE:Lcom/liquable/nemo/status/model/ChatStatusMapper;

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
    .line 69
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
    .line 73
    iget-object v1, p0, Lcom/liquable/nemo/status/model/ChatStatusMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 74
    .local v0, "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 75
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

    .line 76
    invoke-direct {p0, v0}, Lcom/liquable/nemo/status/model/ChatStatusMapper;->isAnnotatedWithJsonTypeInfo(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
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

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/status/model/ChatStatusMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/status/model/ChatStatusMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/liquable/nemo/status/model/ChatStatusMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/status/model/ChatStatusMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/status/model/ChatStatusMapper;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/liquable/nemo/status/model/ChatStatusMapper;->$VALUES:[Lcom/liquable/nemo/status/model/ChatStatusMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/status/model/ChatStatusMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/status/model/ChatStatusMapper;

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Lcom/liquable/nemo/status/model/IChatStatus;
    .locals 7
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    .line 33
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getAnnotationOnly()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->readTree(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 34
    .local v2, "tree":Lorg/codehaus/jackson/JsonNode;
    const-string/jumbo v5, "@type"

    invoke-virtual {v2, v5}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    .line 36
    .local v4, "typeNode":Lorg/codehaus/jackson/JsonNode;
    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonNode;->asText()Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "type":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/liquable/nemo/status/model/ChatStatusMapper;->restoreClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 39
    .local v1, "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getAnnotationOnly()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Lorg/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/status/model/IChatStatus;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    .end local v1    # "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "tree":Lorg/codehaus/jackson/JsonNode;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "typeNode":Lorg/codehaus/jackson/JsonNode;
    :goto_0
    return-object v5

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v5, Lcom/liquable/nemo/status/model/UnknownStatus;->INSTANCE:Lcom/liquable/nemo/status/model/UnknownStatus;

    goto :goto_0

    .line 42
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v5}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v5

    if-nez v5, :cond_0

    .line 44
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Maybe your jackson model has written in wrong format. It\'s almost impossible to receive undecodable data, without classnotfoundException."

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 48
    :cond_0
    sget-object v5, Lcom/liquable/nemo/status/model/UnknownStatus;->INSTANCE:Lcom/liquable/nemo/status/model/UnknownStatus;

    goto :goto_0
.end method

.method public encode(Lcom/liquable/nemo/status/model/IChatStatus;)Ljava/lang/String;
    .locals 4
    .param p1, "chatStatus"    # Lcom/liquable/nemo/status/model/IChatStatus;

    .prologue
    .line 54
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/status/model/ChatStatusMapper;->isAnnotatedWithJsonTypeInfo(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected chat status, because it doesnt have jsonTypeInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 56
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

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lorg/codehaus/jackson/JsonGenerationException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 58
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

    .line 61
    :catch_1
    move-exception v0

    .line 62
    .local v0, "e":Lorg/codehaus/jackson/map/JsonMappingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 63
    .end local v0    # "e":Lorg/codehaus/jackson/map/JsonMappingException;
    :catch_2
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
