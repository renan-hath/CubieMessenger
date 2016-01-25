.class public final enum Lcom/liquable/nemo/json/SimpleJsonMapper;
.super Ljava/lang/Enum;
.source "SimpleJsonMapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/json/SimpleJsonMapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/json/SimpleJsonMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/json/SimpleJsonMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/liquable/nemo/json/SimpleJsonMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/json/SimpleJsonMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/json/SimpleJsonMapper;->INSTANCE:Lcom/liquable/nemo/json/SimpleJsonMapper;

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/json/SimpleJsonMapper;

    sget-object v1, Lcom/liquable/nemo/json/SimpleJsonMapper;->INSTANCE:Lcom/liquable/nemo/json/SimpleJsonMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/json/SimpleJsonMapper;->$VALUES:[Lcom/liquable/nemo/json/SimpleJsonMapper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/liquable/nemo/json/SimpleJsonMapper;->INSTANCE:Lcom/liquable/nemo/json/SimpleJsonMapper;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/json/SimpleJsonMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/liquable/nemo/json/SimpleJsonMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/json/SimpleJsonMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/json/SimpleJsonMapper;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/liquable/nemo/json/SimpleJsonMapper;->$VALUES:[Lcom/liquable/nemo/json/SimpleJsonMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/json/SimpleJsonMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/json/SimpleJsonMapper;

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "raw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getSimple()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/lang/String;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 1
    .param p1, "raw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "typeReference":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<TT;>;"
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getSimple()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 60
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getSimple()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonGenerationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lorg/codehaus/jackson/JsonGenerationException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 63
    .end local v0    # "e":Lorg/codehaus/jackson/JsonGenerationException;
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

.method public readTree(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getSimple()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->readTree(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "raw"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getSimple()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BLorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 1
    .param p1, "raw"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "typeReference":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<TT;>;"
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getSimple()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue([BLorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeValueAsBytes(Ljava/lang/Object;)[B
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 81
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getSimple()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsBytes(Ljava/lang/Object;)[B
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonGenerationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lorg/codehaus/jackson/JsonGenerationException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 84
    .end local v0    # "e":Lorg/codehaus/jackson/JsonGenerationException;
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Lorg/codehaus/jackson/map/JsonMappingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 86
    .end local v0    # "e":Lorg/codehaus/jackson/map/JsonMappingException;
    :catch_2
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
