.class public Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;
.super Ljava/lang/Object;
.source "JacksonEpFrameMapper.java"

# interfaces
.implements Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;


# instance fields
.field private final mapperWithModule:Lorg/codehaus/jackson/map/ObjectMapper;

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
    .locals 7

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;->mapperWithModule:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    .line 28
    iget-object v6, p0, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;->mapperWithModule:Lorg/codehaus/jackson/map/ObjectMapper;

    new-instance v0, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    sget-object v3, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    sget-object v4, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    sget-object v5, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    invoke-virtual {v6, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->setVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)V

    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;->mapperWithModule:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;->mapperWithModule:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/ObjectMapper;->copySerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 42
    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/SerializationConfig;->withSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->setSerializationConfig(Lorg/codehaus/jackson/map/SerializationConfig;)Lorg/codehaus/jackson/map/ObjectMapper;

    .line 44
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;->mapperWithModule:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;->mapperWithModule:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/ObjectMapper;->copyDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v3, 0x0

    sget-object v4, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    aput-object v4, v2, v3

    .line 45
    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/DeserializationConfig;->without([Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->setDeserializationConfig(Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/ObjectMapper;

    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;->mapperWithModule:Lorg/codehaus/jackson/map/ObjectMapper;

    new-instance v1, Lcom/liquable/nemo/endpoint/frame/RpcResponseModule;

    invoke-direct {v1}, Lcom/liquable/nemo/endpoint/frame/RpcResponseModule;-><init>()V

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->registerModule(Lorg/codehaus/jackson/map/Module;)V

    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;->mapperWithModule:Lorg/codehaus/jackson/map/ObjectMapper;

    new-instance v1, Lcom/liquable/nemo/NemoVersionModule;

    invoke-direct {v1}, Lcom/liquable/nemo/NemoVersionModule;-><init>()V

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->registerModule(Lorg/codehaus/jackson/map/Module;)V

    .line 49
    return-void
.end method

.method private decodeFromTree(Lorg/codehaus/jackson/JsonNode;)Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    .locals 6
    .param p1, "tree"    # Lorg/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/endpoint/frame/FrameMappingException;
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    const-string/jumbo v3, "@type"

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/JsonNode;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    new-instance v3, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "missing @type error, source - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Lorg/codehaus/jackson/JsonProcessingException;
    new-instance v3, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;

    const-string/jumbo v4, "unexpected"

    invoke-direct {v3, v4, v0}, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 78
    .end local v0    # "e":Lorg/codehaus/jackson/JsonProcessingException;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "@type"

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonNode;->getValueAsText()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "type":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;->restoreClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 80
    .local v1, "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;->mapperWithModule:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v3, p1, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Lorg/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    :try_end_1
    .catch Lorg/codehaus/jackson/JsonProcessingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 86
    .end local v1    # "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "type":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 83
    :catch_1
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;

    const-string/jumbo v4, "unexpected"

    invoke-direct {v3, v4, v0}, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lcom/liquable/nemo/endpoint/frame/UnknownTypeFrame;

    invoke-direct {v3}, Lcom/liquable/nemo/endpoint/frame/UnknownTypeFrame;-><init>()V

    goto :goto_0
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
    .line 118
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 119
    .local v0, "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 120
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

    .line 121
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    return-object v0
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;)Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/endpoint/frame/FrameMappingException;
        }
    .end annotation

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;->mapperWithModule:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->readTree(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;->decodeFromTree(Lorg/codehaus/jackson/JsonNode;)Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Lorg/codehaus/jackson/JsonProcessingException;
    new-instance v1, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 57
    .end local v0    # "e":Lorg/codehaus/jackson/JsonProcessingException;
    :catch_1
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public decode(Ljava/lang/String;)Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    .locals 3
    .param p1, "raw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/endpoint/frame/FrameMappingException;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;->mapperWithModule:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->readTree(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;->decodeFromTree(Lorg/codehaus/jackson/JsonNode;)Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lorg/codehaus/jackson/JsonProcessingException;
    new-instance v1, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 68
    .end local v0    # "e":Lorg/codehaus/jackson/JsonProcessingException;
    :catch_1
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encode(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)Ljava/lang/String;
    .locals 3
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/endpoint/frame/FrameMappingException;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;->mapperWithModule:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonGenerationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Lorg/codehaus/jackson/JsonGenerationException;
    new-instance v1, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 96
    .end local v0    # "e":Lorg/codehaus/jackson/JsonGenerationException;
    :catch_1
    move-exception v0

    .line 97
    .local v0, "e":Lorg/codehaus/jackson/map/JsonMappingException;
    new-instance v1, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 98
    .end local v0    # "e":Lorg/codehaus/jackson/map/JsonMappingException;
    :catch_2
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encodeInto(Lcom/liquable/nemo/endpoint/frame/IEpFrame;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/endpoint/frame/FrameMappingException;
        }
    .end annotation

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;->mapperWithModule:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v1, p2, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonGenerationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 115
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Lorg/codehaus/jackson/JsonGenerationException;
    new-instance v1, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 110
    .end local v0    # "e":Lorg/codehaus/jackson/JsonGenerationException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Lorg/codehaus/jackson/map/JsonMappingException;
    new-instance v1, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 112
    .end local v0    # "e":Lorg/codehaus/jackson/map/JsonMappingException;
    :catch_2
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Lcom/liquable/nemo/endpoint/frame/FrameMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
