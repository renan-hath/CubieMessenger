.class final Lcom/liquable/nemo/endpoint/frame/RpcResponseModule$RpcResponseSerializer;
.super Lorg/codehaus/jackson/map/JsonSerializer;
.source "RpcResponseModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/endpoint/frame/RpcResponseModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RpcResponseSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/JsonSerializer",
        "<",
        "Lcom/liquable/nemo/endpoint/frame/RpcResponse;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonSerializer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/endpoint/frame/RpcResponseModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/endpoint/frame/RpcResponseModule$1;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/liquable/nemo/endpoint/frame/RpcResponseModule$RpcResponseSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/liquable/nemo/endpoint/frame/RpcResponse;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 4
    .param p1, "response"    # Lcom/liquable/nemo/endpoint/frame/RpcResponse;
    .param p2, "jgen"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p3, "provider"    # Lorg/codehaus/jackson/map/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 92
    const-string/jumbo v2, "@type"

    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v2, "RpcResponse"

    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v2, "id"

    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->getResult()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 105
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->getResult()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 106
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 107
    .local v1, "resultList":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string/jumbo v2, "result"

    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 108
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "object":Ljava/lang/Object;
    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    .end local v0    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 117
    .end local v1    # "resultList":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 118
    return-void

    .line 113
    :cond_2
    const-string/jumbo v2, "result"

    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/RpcResponse;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 86
    check-cast p1, Lcom/liquable/nemo/endpoint/frame/RpcResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/liquable/nemo/endpoint/frame/RpcResponseModule$RpcResponseSerializer;->serialize(Lcom/liquable/nemo/endpoint/frame/RpcResponse;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
