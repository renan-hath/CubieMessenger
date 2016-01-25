.class public final enum Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;
.super Ljava/lang/Enum;
.source "SystemNoticeDtoMapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;


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
    new-instance v0, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;->INSTANCE:Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;

    sget-object v1, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;->INSTANCE:Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;->$VALUES:[Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;

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

    iput-object v0, p0, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private fallbackToEmptyUnknown(Ljava/lang/Exception;)Lcom/liquable/nemo/notice/ISystemNoticeDto;
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 71
    sget-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Maybe your jackson model has written in wrong format. It\'s almost impossible to receive undecodable data, without classnotfoundException."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 76
    :cond_0
    new-instance v0, Lcom/liquable/nemo/notice/UnknownNoticeDto;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/notice/UnknownNoticeDto;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getInstance()Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;->INSTANCE:Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;

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
    .line 80
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

.method private resolveClass(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/Class;
    .locals 7
    .param p1, "typeNode"    # Lorg/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonNode;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 84
    if-nez p1, :cond_1

    move-object v0, v4

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonNode;->asText()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "type":Ljava/lang/String;
    iget-object v5, p0, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 89
    .local v0, "cached":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 93
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 94
    .local v2, "parsed":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v2}, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;->isAnnotatedWithJsonTypeInfo(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v0, v4

    .line 95
    goto :goto_0

    .line 97
    :cond_2
    iget-object v5, p0, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 98
    goto :goto_0

    .line 99
    .end local v2    # "parsed":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v0, v4

    .line 100
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;->$VALUES:[Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Lcom/liquable/nemo/notice/ISystemNoticeDto;
    .locals 12
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    .line 33
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getAnnotationOnly()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v11

    invoke-virtual {v11, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->readTree(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v9

    .line 34
    .local v9, "tree":Lorg/codehaus/jackson/JsonNode;
    const-string/jumbo v11, "@type"

    invoke-virtual {v9, v11}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v10

    .line 35
    .local v10, "typeNode":Lorg/codehaus/jackson/JsonNode;
    invoke-direct {p0, v10}, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;->resolveClass(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/Class;

    move-result-object v4

    .line 36
    .local v4, "resolved":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_0

    .line 37
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getAnnotationOnly()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v11

    invoke-virtual {v11, v9, v4}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Lorg/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/liquable/nemo/notice/ISystemNoticeDto;

    .line 50
    .end local v4    # "resolved":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "tree":Lorg/codehaus/jackson/JsonNode;
    .end local v10    # "typeNode":Lorg/codehaus/jackson/JsonNode;
    :goto_0
    return-object v11

    .line 39
    .restart local v4    # "resolved":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "tree":Lorg/codehaus/jackson/JsonNode;
    .restart local v10    # "typeNode":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    const-string/jumbo v11, "publishTime"

    invoke-virtual {v9, v11}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 40
    .local v1, "publishTime":Lorg/codehaus/jackson/JsonNode;
    if-nez v1, :cond_1

    const-wide/16 v2, 0x0

    .line 41
    .local v2, "publishTimeValue":J
    :goto_1
    const-string/jumbo v11, "systemId"

    invoke-virtual {v9, v11}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    .line 42
    .local v5, "systemId":Lorg/codehaus/jackson/JsonNode;
    if-nez v5, :cond_2

    const/4 v6, 0x0

    .line 43
    .local v6, "systemIdValue":Ljava/lang/String;
    :goto_2
    const-string/jumbo v11, "title"

    invoke-virtual {v9, v11}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v7

    .line 44
    .local v7, "title":Lorg/codehaus/jackson/JsonNode;
    if-nez v7, :cond_3

    const-string/jumbo v8, "[EmptyTitle]"

    .line 45
    .local v8, "titleValue":Ljava/lang/String;
    :goto_3
    new-instance v11, Lcom/liquable/nemo/notice/UnknownNoticeDto;

    invoke-direct {v11, v8, v6, v2, v3}, Lcom/liquable/nemo/notice/UnknownNoticeDto;-><init>(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 47
    .end local v1    # "publishTime":Lorg/codehaus/jackson/JsonNode;
    .end local v2    # "publishTimeValue":J
    .end local v4    # "resolved":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "systemId":Lorg/codehaus/jackson/JsonNode;
    .end local v6    # "systemIdValue":Ljava/lang/String;
    .end local v7    # "title":Lorg/codehaus/jackson/JsonNode;
    .end local v8    # "titleValue":Ljava/lang/String;
    .end local v9    # "tree":Lorg/codehaus/jackson/JsonNode;
    .end local v10    # "typeNode":Lorg/codehaus/jackson/JsonNode;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;->fallbackToEmptyUnknown(Ljava/lang/Exception;)Lcom/liquable/nemo/notice/ISystemNoticeDto;

    move-result-object v11

    goto :goto_0

    .line 40
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "publishTime":Lorg/codehaus/jackson/JsonNode;
    .restart local v4    # "resolved":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "tree":Lorg/codehaus/jackson/JsonNode;
    .restart local v10    # "typeNode":Lorg/codehaus/jackson/JsonNode;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->getLongValue()J

    move-result-wide v2

    goto :goto_1

    .line 42
    .restart local v2    # "publishTimeValue":J
    .restart local v5    # "systemId":Lorg/codehaus/jackson/JsonNode;
    :cond_2
    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 44
    .restart local v6    # "systemIdValue":Ljava/lang/String;
    .restart local v7    # "title":Lorg/codehaus/jackson/JsonNode;
    :cond_3
    invoke-virtual {v7}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    goto :goto_3

    .line 49
    .end local v1    # "publishTime":Lorg/codehaus/jackson/JsonNode;
    .end local v2    # "publishTimeValue":J
    .end local v4    # "resolved":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "systemId":Lorg/codehaus/jackson/JsonNode;
    .end local v6    # "systemIdValue":Ljava/lang/String;
    .end local v7    # "title":Lorg/codehaus/jackson/JsonNode;
    .end local v9    # "tree":Lorg/codehaus/jackson/JsonNode;
    .end local v10    # "typeNode":Lorg/codehaus/jackson/JsonNode;
    :catch_1
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;->fallbackToEmptyUnknown(Ljava/lang/Exception;)Lcom/liquable/nemo/notice/ISystemNoticeDto;

    move-result-object v11

    goto :goto_0
.end method

.method public encode(Lcom/liquable/nemo/notice/ISystemNoticeDto;)Ljava/lang/String;
    .locals 4
    .param p1, "frame"    # Lcom/liquable/nemo/notice/ISystemNoticeDto;

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;->isAnnotatedWithJsonTypeInfo(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected notice object, because it doesnt have jsonTypeInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 58
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

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lorg/codehaus/jackson/JsonGenerationException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 60
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

    .line 63
    :catch_1
    move-exception v0

    .line 64
    .local v0, "e":Lorg/codehaus/jackson/map/JsonMappingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 65
    .end local v0    # "e":Lorg/codehaus/jackson/map/JsonMappingException;
    :catch_2
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
