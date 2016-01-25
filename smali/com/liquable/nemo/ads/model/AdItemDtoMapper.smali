.class public final enum Lcom/liquable/nemo/ads/model/AdItemDtoMapper;
.super Ljava/lang/Enum;
.source "AdItemDtoMapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/ads/model/AdItemDtoMapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/ads/model/AdItemDtoMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/ads/model/AdItemDtoMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/liquable/nemo/ads/model/AdItemDtoMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/ads/model/AdItemDtoMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/ads/model/AdItemDtoMapper;->INSTANCE:Lcom/liquable/nemo/ads/model/AdItemDtoMapper;

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/ads/model/AdItemDtoMapper;

    sget-object v1, Lcom/liquable/nemo/ads/model/AdItemDtoMapper;->INSTANCE:Lcom/liquable/nemo/ads/model/AdItemDtoMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/ads/model/AdItemDtoMapper;->$VALUES:[Lcom/liquable/nemo/ads/model/AdItemDtoMapper;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    return-void
.end method

.method private decodeSingle(Lorg/codehaus/jackson/JsonNode;)Lcom/liquable/nemo/model/ads/IAdItemDto;
    .locals 6
    .param p1, "dtoNode"    # Lorg/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const-string/jumbo v4, "@type"

    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    .line 45
    .local v3, "typeNode":Lorg/codehaus/jackson/JsonNode;
    if-nez v3, :cond_0

    .line 46
    sget-object v4, Lcom/liquable/nemo/ads/model/UnknownAdItemDto;->INSTANCE:Lcom/liquable/nemo/ads/model/UnknownAdItemDto;

    .line 54
    :goto_0
    return-object v4

    .line 48
    :cond_0
    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonNode;->getValueAsText()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "typeName":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/liquable/nemo/model/ads/IAdItemDto;

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getAnnotationOnly()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Lorg/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/model/ads/IAdItemDto;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lcom/liquable/nemo/ads/model/UnknownAdItemDto;->INSTANCE:Lcom/liquable/nemo/ads/model/UnknownAdItemDto;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/ads/model/AdItemDtoMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/liquable/nemo/ads/model/AdItemDtoMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/ads/model/AdItemDtoMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/ads/model/AdItemDtoMapper;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/liquable/nemo/ads/model/AdItemDtoMapper;->$VALUES:[Lcom/liquable/nemo/ads/model/AdItemDtoMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/ads/model/AdItemDtoMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/ads/model/AdItemDtoMapper;

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Lcom/liquable/nemo/model/ads/IAdItemDto;
    .locals 1
    .param p1, "raw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getAnnotationOnly()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->readTree(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/ads/model/AdItemDtoMapper;->decodeSingle(Lorg/codehaus/jackson/JsonNode;)Lcom/liquable/nemo/model/ads/IAdItemDto;

    move-result-object v0

    return-object v0
.end method

.method public decodeList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "rawJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/ads/IAdItemDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getAnnotationOnly()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->readTree(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    .line 34
    .local v3, "tree":Lorg/codehaus/jackson/JsonNode;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v1, "dtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/ads/IAdItemDto;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonNode;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 36
    invoke-virtual {v3, v2}, Lorg/codehaus/jackson/JsonNode;->get(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 37
    .local v0, "dtoNode":Lorg/codehaus/jackson/JsonNode;
    invoke-direct {p0, v0}, Lcom/liquable/nemo/ads/model/AdItemDtoMapper;->decodeSingle(Lorg/codehaus/jackson/JsonNode;)Lcom/liquable/nemo/model/ads/IAdItemDto;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "dtoNode":Lorg/codehaus/jackson/JsonNode;
    :cond_0
    return-object v1
.end method

.method public encode(Lcom/liquable/nemo/model/ads/IAdItemDto;)Ljava/lang/String;
    .locals 1
    .param p1, "dto"    # Lcom/liquable/nemo/model/ads/IAdItemDto;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {}, Lcom/liquable/nemo/util/ClientObjectMappers;->getAnnotationOnly()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
