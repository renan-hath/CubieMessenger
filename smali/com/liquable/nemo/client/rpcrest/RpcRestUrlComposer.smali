.class final Lcom/liquable/nemo/client/rpcrest/RpcRestUrlComposer;
.super Lcom/liquable/volley/request/UrlPrefixComposer;
.source "RpcRestUrlComposer.java"


# instance fields
.field private final serverType:Lcom/liquable/nemo/client/ServerType;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/ServerType;)V
    .locals 0
    .param p1, "serverType"    # Lcom/liquable/nemo/client/ServerType;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/liquable/volley/request/UrlPrefixComposer;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/liquable/nemo/client/rpcrest/RpcRestUrlComposer;->serverType:Lcom/liquable/nemo/client/ServerType;

    .line 12
    return-void
.end method


# virtual methods
.method protected createUrlPrefix(Lcom/liquable/volley/request/RequestInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "requestInfo"    # Lcom/liquable/volley/request/RequestInfo;

    .prologue
    .line 17
    sget-object v0, Lcom/liquable/nemo/client/rpcrest/RpcRestUrlComposer$1;->$SwitchMap$com$liquable$nemo$client$ServerType:[I

    iget-object v1, p0, Lcom/liquable/nemo/client/rpcrest/RpcRestUrlComposer;->serverType:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v1}, Lcom/liquable/nemo/client/ServerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 26
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 19
    :pswitch_0
    const-string/jumbo v0, "http://10.0.3.2:5580/rpc-api"

    .line 24
    :goto_0
    return-object v0

    .line 21
    :pswitch_1
    const-string/jumbo v0, "http://stage.palplus.me:5580/rpc-api"

    goto :goto_0

    .line 24
    :pswitch_2
    const-string/jumbo v0, "https://rpc.palplus.me/rpc-api"

    goto :goto_0

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
