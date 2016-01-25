.class Lcom/liquable/nemo/client/service/NemoRpcService$4;
.super Ljava/lang/Object;
.source "NemoRpcService.java"

# interfaces
.implements Lcom/liquable/nemo/client/ReceiveDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/client/service/NemoRpcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/nemo/client/ReceiveDataListener",
        "<",
        "Lcom/liquable/nemo/endpoint/frame/RpcError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/service/NemoRpcService;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/service/NemoRpcService;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$4;->this$0:Lcom/liquable/nemo/client/service/NemoRpcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceive(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .locals 0

    .prologue
    .line 145
    check-cast p1, Lcom/liquable/nemo/endpoint/frame/RpcError;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/service/NemoRpcService$4;->onReceive(Lcom/liquable/nemo/endpoint/frame/RpcError;)V

    return-void
.end method

.method public onReceive(Lcom/liquable/nemo/endpoint/frame/RpcError;)V
    .locals 6
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/RpcError;

    .prologue
    .line 149
    iget-object v4, p0, Lcom/liquable/nemo/client/service/NemoRpcService$4;->this$0:Lcom/liquable/nemo/client/service/NemoRpcService;

    # getter for: Lcom/liquable/nemo/client/service/NemoRpcService;->completers:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->access$000(Lcom/liquable/nemo/client/service/NemoRpcService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/RpcError;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/future/Completer;

    .line 150
    .local v0, "completer":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/RpcError;->getCode()Ljava/lang/Integer;

    move-result-object v2

    .line 156
    .local v2, "errorCode":Ljava/lang/Integer;
    if-nez v2, :cond_1

    .line 157
    new-instance v4, Lcom/liquable/nemo/client/NoSuchErrorCodeException;

    invoke-direct {v4}, Lcom/liquable/nemo/client/NoSuchErrorCodeException;-><init>()V

    invoke-virtual {v0, v4}, Lcom/liquable/future/Completer;->completeError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 158
    :cond_1
    sget-object v4, Lcom/liquable/nemo/endpoint/frame/RpcError;->VERSION_INCOMPATIBLE_CODE:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/RpcError;->getCode()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    new-instance v4, Lcom/liquable/nemo/client/VersionIncompatibleErrorException;

    invoke-direct {v4}, Lcom/liquable/nemo/client/VersionIncompatibleErrorException;-><init>()V

    invoke-virtual {v0, v4}, Lcom/liquable/future/Completer;->completeError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 160
    :cond_2
    sget-object v4, Lcom/liquable/nemo/rpc/RpcErrorCode;->DOMAIN_ERROR:Lcom/liquable/nemo/rpc/RpcErrorCode;

    invoke-virtual {v4}, Lcom/liquable/nemo/rpc/RpcErrorCode;->getValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 162
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;->getInstance()Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;

    move-result-object v4

    .line 163
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/RpcError;->getError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/model/JacksonDomainExceptionMapper;->decode(Ljava/lang/String;)Lcom/liquable/nemo/model/DomainException;

    move-result-object v3

    .line 164
    .local v3, "exception":Lcom/liquable/nemo/model/DomainException;
    invoke-virtual {v0, v3}, Lcom/liquable/future/Completer;->completeError(Ljava/lang/Exception;)V
    :try_end_0
    .catch Lcom/liquable/nemo/model/ExceptionMappingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    .end local v3    # "exception":Lcom/liquable/nemo/model/DomainException;
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Lcom/liquable/nemo/model/ExceptionMappingException;
    new-instance v4, Lcom/liquable/nemo/client/UnknownException;

    invoke-direct {v4}, Lcom/liquable/nemo/client/UnknownException;-><init>()V

    invoke-virtual {v0, v4}, Lcom/liquable/future/Completer;->completeError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 168
    .end local v1    # "e":Lcom/liquable/nemo/model/ExceptionMappingException;
    :cond_3
    sget-object v4, Lcom/liquable/nemo/rpc/RpcErrorCode;->SYNTAX_ERROR:Lcom/liquable/nemo/rpc/RpcErrorCode;

    invoke-virtual {v4}, Lcom/liquable/nemo/rpc/RpcErrorCode;->getValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 169
    new-instance v4, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v4}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    invoke-virtual {v0, v4}, Lcom/liquable/future/Completer;->completeError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 170
    :cond_4
    sget-object v4, Lcom/liquable/nemo/rpc/RpcErrorCode;->SECURITY_ERROR:Lcom/liquable/nemo/rpc/RpcErrorCode;

    invoke-virtual {v4}, Lcom/liquable/nemo/rpc/RpcErrorCode;->getValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 171
    new-instance v4, Lcom/liquable/nemo/client/SecurityErrorException;

    invoke-direct {v4}, Lcom/liquable/nemo/client/SecurityErrorException;-><init>()V

    invoke-virtual {v0, v4}, Lcom/liquable/future/Completer;->completeError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 172
    :cond_5
    sget-object v4, Lcom/liquable/nemo/rpc/RpcErrorCode;->PLATFORM_ERROR:Lcom/liquable/nemo/rpc/RpcErrorCode;

    invoke-virtual {v4}, Lcom/liquable/nemo/rpc/RpcErrorCode;->getValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 173
    new-instance v4, Lcom/liquable/nemo/client/PlatformErrorException;

    invoke-direct {v4}, Lcom/liquable/nemo/client/PlatformErrorException;-><init>()V

    invoke-virtual {v0, v4}, Lcom/liquable/future/Completer;->completeError(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 175
    :cond_6
    new-instance v4, Lcom/liquable/nemo/client/NoSuchErrorCodeException;

    invoke-direct {v4}, Lcom/liquable/nemo/client/NoSuchErrorCodeException;-><init>()V

    invoke-virtual {v0, v4}, Lcom/liquable/future/Completer;->completeError(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method
