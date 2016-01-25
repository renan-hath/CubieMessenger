.class public final enum Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;
.super Ljava/lang/Enum;
.source "JacksonMessageDataMapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;


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
    new-instance v0, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;->INSTANCE:Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;

    sget-object v1, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;->INSTANCE:Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;->$VALUES:[Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;

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

    iput-object v0, p0, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private checkFeatureLock(Ljava/lang/String;Lcom/liquable/nemo/message/model/MessageInfo;Ljava/lang/Class;)Lcom/liquable/nemo/message/model/DomainMessage;
    .locals 1
    .param p1, "raw"    # Ljava/lang/String;
    .param p2, "messageInfo"    # Lcom/liquable/nemo/message/model/MessageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/message/model/MessageInfo;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/liquable/nemo/message/model/DomainMessage;"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;->INSTANCE:Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;

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
    .line 96
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
    .line 100
    iget-object v1, p0, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 101
    .local v0, "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 102
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

    .line 103
    invoke-direct {p0, v0}, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;->isAnnotatedWithJsonTypeInfo(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
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

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;->$VALUES:[Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/String;Lcom/liquable/nemo/message/model/MessageInfo;)Lcom/liquable/nemo/message/model/DomainMessage;
    .locals 10
    .param p1, "raw"    # Ljava/lang/String;
    .param p2, "messageInfo"    # Lcom/liquable/nemo/message/model/MessageInfo;

    .prologue
    .line 38
    const/4 v6, 0x0

    .line 40
    .local v6, "unknownHidden":Lorg/codehaus/jackson/JsonNode;
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getAnnotationOnly()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->readTree(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    .line 41
    .local v3, "tree":Lorg/codehaus/jackson/JsonNode;
    const-string/jumbo v8, "@type"

    invoke-virtual {v3, v8}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    .line 42
    .local v5, "typeNode":Lorg/codehaus/jackson/JsonNode;
    const-string/jumbo v8, "unknownHidden"

    invoke-virtual {v3, v8}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v6

    .line 43
    if-nez v5, :cond_2

    .line 44
    if-nez v6, :cond_1

    .line 45
    invoke-static {p1, p2}, Lcom/liquable/nemo/message/model/UnknownMessage;->fallback(Ljava/lang/String;Lcom/liquable/nemo/message/model/MessageInfo;)Lcom/liquable/nemo/message/model/UnknownMessage;

    move-result-object v7

    .line 74
    .end local v3    # "tree":Lorg/codehaus/jackson/JsonNode;
    .end local v5    # "typeNode":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    :goto_0
    return-object v7

    .line 47
    .restart local v3    # "tree":Lorg/codehaus/jackson/JsonNode;
    .restart local v5    # "typeNode":Lorg/codehaus/jackson/JsonNode;
    :cond_1
    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonNode;->getBooleanValue()Z

    move-result v8

    invoke-static {p1, p2, v8}, Lcom/liquable/nemo/message/model/UnknownMessage;->fallback(Ljava/lang/String;Lcom/liquable/nemo/message/model/MessageInfo;Z)Lcom/liquable/nemo/message/model/UnknownMessage;

    move-result-object v7

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonNode;->getValueAsText()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "type":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;->restoreClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 51
    .local v2, "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, v2}, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;->checkFeatureLock(Ljava/lang/String;Lcom/liquable/nemo/message/model/MessageInfo;Ljava/lang/Class;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v7

    .line 52
    .local v7, "unknownMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    if-nez v7, :cond_0

    .line 56
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getAnnotationOnly()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v8

    .line 57
    invoke-virtual {v8, v3, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Lorg/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 58
    .local v0, "domainMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {v0, p2}, Lcom/liquable/nemo/message/model/DomainMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v0

    .line 59
    goto :goto_0

    .line 60
    .end local v0    # "domainMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    .end local v2    # "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "tree":Lorg/codehaus/jackson/JsonNode;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "typeNode":Lorg/codehaus/jackson/JsonNode;
    .end local v7    # "unknownMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    if-nez v6, :cond_3

    .line 62
    invoke-static {p1, p2}, Lcom/liquable/nemo/message/model/UnknownMessage;->fallback(Ljava/lang/String;Lcom/liquable/nemo/message/model/MessageInfo;)Lcom/liquable/nemo/message/model/UnknownMessage;

    move-result-object v7

    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonNode;->getBooleanValue()Z

    move-result v8

    invoke-static {p1, p2, v8}, Lcom/liquable/nemo/message/model/UnknownMessage;->fallback(Ljava/lang/String;Lcom/liquable/nemo/message/model/MessageInfo;Z)Lcom/liquable/nemo/message/model/UnknownMessage;

    move-result-object v7

    goto :goto_0

    .line 65
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v8}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v8

    if-nez v8, :cond_4

    .line 67
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Maybe your jackson model has written in wrong format. It\'s almost impossible to receive undecodable data, without classnotfoundException."

    invoke-direct {v8, v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 71
    :cond_4
    if-nez v6, :cond_5

    .line 72
    invoke-static {p1, p2}, Lcom/liquable/nemo/message/model/UnknownMessage;->fallback(Ljava/lang/String;Lcom/liquable/nemo/message/model/MessageInfo;)Lcom/liquable/nemo/message/model/UnknownMessage;

    move-result-object v7

    goto :goto_0

    .line 74
    :cond_5
    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonNode;->getBooleanValue()Z

    move-result v8

    invoke-static {p1, p2, v8}, Lcom/liquable/nemo/message/model/UnknownMessage;->fallback(Ljava/lang/String;Lcom/liquable/nemo/message/model/MessageInfo;Z)Lcom/liquable/nemo/message/model/UnknownMessage;

    move-result-object v7

    goto :goto_0
.end method

.method public encode(Lcom/liquable/nemo/message/model/IDomainMessage;)Ljava/lang/String;
    .locals 4
    .param p1, "frame"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    .line 81
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/message/model/JacksonMessageDataMapper;->isAnnotatedWithJsonTypeInfo(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected domain message, because it doesnt have jsonTypeInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 83
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

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Lorg/codehaus/jackson/JsonGenerationException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 85
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

    .line 88
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Lorg/codehaus/jackson/map/JsonMappingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 90
    .end local v0    # "e":Lorg/codehaus/jackson/map/JsonMappingException;
    :catch_2
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
