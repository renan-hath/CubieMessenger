.class public Lcom/liquable/nemo/endpoint/frame/RpcResponseModule;
.super Lorg/codehaus/jackson/map/module/SimpleModule;
.source "RpcResponseModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/endpoint/frame/RpcResponseModule$RpcResponseSerializer;,
        Lcom/liquable/nemo/endpoint/frame/RpcResponseModule$RpcResponseDeserializer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 122
    const-string/jumbo v0, "RpcResponseModule"

    new-instance v1, Lorg/codehaus/jackson/Version;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3, v3, v4}, Lorg/codehaus/jackson/Version;-><init>(IIILjava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/module/SimpleModule;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/Version;)V

    .line 123
    const-class v0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;

    new-instance v1, Lcom/liquable/nemo/endpoint/frame/RpcResponseModule$RpcResponseSerializer;

    invoke-direct {v1, v4}, Lcom/liquable/nemo/endpoint/frame/RpcResponseModule$RpcResponseSerializer;-><init>(Lcom/liquable/nemo/endpoint/frame/RpcResponseModule$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/endpoint/frame/RpcResponseModule;->addSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    .line 124
    const-class v0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;

    new-instance v1, Lcom/liquable/nemo/endpoint/frame/RpcResponseModule$RpcResponseDeserializer;

    invoke-direct {v1}, Lcom/liquable/nemo/endpoint/frame/RpcResponseModule$RpcResponseDeserializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/endpoint/frame/RpcResponseModule;->addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    .line 125
    return-void
.end method
