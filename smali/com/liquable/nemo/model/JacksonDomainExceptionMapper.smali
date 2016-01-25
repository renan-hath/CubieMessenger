.class public final enum Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;
.super Ljava/lang/Enum;
.source "JacksonDomainExceptionMapper.java"

# interfaces
.implements Lcom/liquable/nemo/model/IDomainExceptionMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;",
        ">;",
        "Lcom/liquable/nemo/model/IDomainExceptionMapper;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;


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

    .line 24
    new-instance v0, Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;->INSTANCE:Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;

    sget-object v1, Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;->INSTANCE:Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;->$VALUES:[Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static getInstance()Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;->INSTANCE:Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;

    return-object v0
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
    .line 68
    iget-object v1, p0, Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 69
    .local v0, "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 70
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

    .line 71
    iget-object v1, p0, Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;->types:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;->$VALUES:[Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Lcom/liquable/nemo/model/DomainException;
    .locals 7
    .param p1, "raw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/model/ExceptionMappingException;
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getAnnotationOnly()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->readTree(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 37
    .local v2, "tree":Lorg/codehaus/jackson/JsonNode;
    const-string/jumbo v4, "@type"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 38
    new-instance v4, Lcom/liquable/nemo/model/ExceptionMappingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "missing @type error, source - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/liquable/nemo/model/ExceptionMappingException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 43
    .end local v2    # "tree":Lorg/codehaus/jackson/JsonNode;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Lorg/codehaus/jackson/JsonParseException;
    new-instance v4, Lcom/liquable/nemo/model/ExceptionMappingException;

    const-string/jumbo v5, "unexpected"

    invoke-direct {v4, v5, v0}, Lcom/liquable/nemo/model/ExceptionMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 40
    .end local v0    # "e":Lorg/codehaus/jackson/JsonParseException;
    .restart local v2    # "tree":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    :try_start_1
    const-string/jumbo v4, "@type"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonNode;->asText()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "type":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;->restoreClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 42
    .local v1, "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getAnnotationOnly()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Lorg/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/model/DomainException;
    :try_end_1
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    return-object v4

    .line 45
    .end local v1    # "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "tree":Lorg/codehaus/jackson/JsonNode;
    .end local v3    # "type":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 46
    .local v0, "e":Lorg/codehaus/jackson/map/JsonMappingException;
    new-instance v4, Lcom/liquable/nemo/model/ExceptionMappingException;

    const-string/jumbo v5, "unexpected"

    invoke-direct {v4, v5, v0}, Lcom/liquable/nemo/model/ExceptionMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 47
    .end local v0    # "e":Lorg/codehaus/jackson/map/JsonMappingException;
    :catch_2
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lcom/liquable/nemo/model/ExceptionMappingException;

    const-string/jumbo v5, "unexpected"

    invoke-direct {v4, v5, v0}, Lcom/liquable/nemo/model/ExceptionMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 49
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lcom/liquable/nemo/model/ExceptionMappingException;

    const-string/jumbo v5, "unexpected"

    invoke-direct {v4, v5, v0}, Lcom/liquable/nemo/model/ExceptionMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public encode(Lcom/liquable/nemo/model/DomainException;)Ljava/lang/String;
    .locals 3
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/model/ExceptionMappingException;
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getAnnotationOnly()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonGenerationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lorg/codehaus/jackson/JsonGenerationException;
    new-instance v1, Lcom/liquable/nemo/model/ExceptionMappingException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Lcom/liquable/nemo/model/ExceptionMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 60
    .end local v0    # "e":Lorg/codehaus/jackson/JsonGenerationException;
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Lorg/codehaus/jackson/map/JsonMappingException;
    new-instance v1, Lcom/liquable/nemo/model/ExceptionMappingException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Lcom/liquable/nemo/model/ExceptionMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 62
    .end local v0    # "e":Lorg/codehaus/jackson/map/JsonMappingException;
    :catch_2
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/liquable/nemo/model/ExceptionMappingException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Lcom/liquable/nemo/model/ExceptionMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
