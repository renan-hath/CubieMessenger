.class public final Lcom/liquable/nemo/endpoint/frame/RpcResponseModule$RpcResponseDeserializer;
.super Lorg/codehaus/jackson/map/JsonDeserializer;
.source "RpcResponseModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/endpoint/frame/RpcResponseModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RpcResponseDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/JsonDeserializer",
        "<",
        "Lcom/liquable/nemo/endpoint/frame/RpcResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private fieldNames:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonDeserializer;-><init>()V

    return-void
.end method

.method private resolveClass(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/Class;
    .locals 2
    .param p1, "classNode"    # Lorg/codehaus/jackson/JsonNode;
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
    .line 75
    if-nez p1, :cond_0

    .line 76
    const-class v1, Ljava/lang/Object;

    .line 81
    :goto_0
    return-object v1

    .line 79
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-class v1, Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lcom/liquable/nemo/endpoint/frame/RpcResponse;
    .locals 15
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lorg/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->readValueAsTree()Lorg/codehaus/jackson/JsonNode;

    move-result-object v11

    .line 34
    .local v11, "tree":Lorg/codehaus/jackson/JsonNode;
    if-nez v11, :cond_0

    .line 35
    const/4 v13, 0x0

    .line 68
    :goto_0
    return-object v13

    .line 37
    :cond_0
    const-string/jumbo v13, "id"

    invoke-virtual {v11, v13}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v13

    invoke-virtual {v13}, Lorg/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "id":Ljava/lang/String;
    const-string/jumbo v13, "result"

    invoke-virtual {v11, v13}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v9

    .line 41
    .local v9, "resultNode":Lorg/codehaus/jackson/JsonNode;
    if-nez v9, :cond_1

    .line 42
    new-instance v13, Lcom/liquable/nemo/endpoint/frame/RpcResponse;

    const/4 v14, 0x0

    invoke-direct {v13, v5, v14}, Lcom/liquable/nemo/endpoint/frame/RpcResponse;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v9}, Lorg/codehaus/jackson/JsonNode;->isArray()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 46
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v10, "resultObjects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v9}, Lorg/codehaus/jackson/JsonNode;->size()I

    move-result v13

    if-ge v4, v13, :cond_2

    .line 48
    invoke-virtual {v9, v4}, Lorg/codehaus/jackson/JsonNode;->get(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 49
    .local v0, "childNode":Lorg/codehaus/jackson/JsonNode;
    const-string/jumbo v13, "@class"

    invoke-virtual {v0, v13}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 50
    .local v1, "classNode":Lorg/codehaus/jackson/JsonNode;
    invoke-direct {p0, v1}, Lcom/liquable/nemo/endpoint/frame/RpcResponseModule$RpcResponseDeserializer;->resolveClass(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/Class;

    move-result-object v2

    .line 51
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v13

    invoke-virtual {v13, v0, v2}, Lorg/codehaus/jackson/ObjectCodec;->treeToValue(Lorg/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 53
    .end local v0    # "childNode":Lorg/codehaus/jackson/JsonNode;
    .end local v1    # "classNode":Lorg/codehaus/jackson/JsonNode;
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    new-instance v13, Lcom/liquable/nemo/endpoint/frame/RpcResponse;

    invoke-direct {v13, v5, v10}, Lcom/liquable/nemo/endpoint/frame/RpcResponse;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    .end local v4    # "i":I
    .end local v10    # "resultObjects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_3
    const-string/jumbo v13, "@class"

    invoke-virtual {v9, v13}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 56
    .restart local v1    # "classNode":Lorg/codehaus/jackson/JsonNode;
    invoke-direct {p0, v1}, Lcom/liquable/nemo/endpoint/frame/RpcResponseModule$RpcResponseDeserializer;->resolveClass(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/Class;

    move-result-object v2

    .line 57
    .restart local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v13, Ljava/lang/Object;

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v9}, Lorg/codehaus/jackson/JsonNode;->isValueNode()Z

    move-result v13

    if-nez v13, :cond_5

    .line 58
    invoke-virtual {v9}, Lorg/codehaus/jackson/JsonNode;->getFieldNames()Ljava/util/Iterator;

    move-result-object v7

    .line 59
    .local v7, "resultFieldNames":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 60
    .local v8, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 61
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 62
    .local v3, "fieldName":Ljava/lang/String;
    invoke-virtual {v9, v3}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v12

    .line 63
    .local v12, "valueNode":Lorg/codehaus/jackson/JsonNode;
    const-string/jumbo v13, "@class"

    invoke-virtual {v12, v13}, Lorg/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/liquable/nemo/endpoint/frame/RpcResponseModule$RpcResponseDeserializer;->resolveClass(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/Class;

    move-result-object v6

    .line 64
    .local v6, "resultCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v13

    invoke-virtual {v13, v12, v6}, Lorg/codehaus/jackson/ObjectCodec;->treeToValue(Lorg/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v8, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 66
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v6    # "resultCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "valueNode":Lorg/codehaus/jackson/JsonNode;
    :cond_4
    new-instance v13, Lcom/liquable/nemo/endpoint/frame/RpcResponse;

    invoke-direct {v13, v5, v8}, Lcom/liquable/nemo/endpoint/frame/RpcResponse;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 68
    .end local v7    # "resultFieldNames":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    new-instance v13, Lcom/liquable/nemo/endpoint/frame/RpcResponse;

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v14

    invoke-virtual {v14, v9, v2}, Lorg/codehaus/jackson/ObjectCodec;->treeToValue(Lorg/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v13, v5, v14}, Lcom/liquable/nemo/endpoint/frame/RpcResponse;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/endpoint/frame/RpcResponseModule$RpcResponseDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lcom/liquable/nemo/endpoint/frame/RpcResponse;

    move-result-object v0

    return-object v0
.end method
