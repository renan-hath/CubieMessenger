.class public final enum Lcom/liquable/nemo/client/ServerType;
.super Ljava/lang/Enum;
.source "ServerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/ServerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/ServerType;

.field public static final enum LOCAL:Lcom/liquable/nemo/client/ServerType;

.field public static final enum PRODUCTION:Lcom/liquable/nemo/client/ServerType;

.field public static final enum TEST:Lcom/liquable/nemo/client/ServerType;

.field public static final enum TEST_ON_PRODUCTION:Lcom/liquable/nemo/client/ServerType;


# instance fields
.field private final endpointServerInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/client/ServerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final homeUrlHost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v6, 0x1bb

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 14
    new-instance v0, Lcom/liquable/nemo/client/ServerType;

    const-string/jumbo v1, "PRODUCTION"

    const-string/jumbo v2, "nemo7.liquable.com"

    new-array v3, v10, [Lcom/liquable/nemo/client/ServerInfo;

    new-instance v4, Lcom/liquable/nemo/client/ServerInfo;

    const-string/jumbo v5, "nemo7.liquable.com"

    invoke-direct {v4, v5, v6}, Lcom/liquable/nemo/client/ServerInfo;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v7

    new-instance v4, Lcom/liquable/nemo/client/ServerInfo;

    const-string/jumbo v5, "nemo8.liquable.com"

    invoke-direct {v4, v5, v6}, Lcom/liquable/nemo/client/ServerInfo;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v8

    new-instance v4, Lcom/liquable/nemo/client/ServerInfo;

    const-string/jumbo v5, "nemo9.liquable.com"

    invoke-direct {v4, v5, v6}, Lcom/liquable/nemo/client/ServerInfo;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v9

    .line 15
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/liquable/nemo/client/ServerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/liquable/nemo/client/ServerType;->PRODUCTION:Lcom/liquable/nemo/client/ServerType;

    .line 18
    new-instance v0, Lcom/liquable/nemo/client/ServerType;

    const-string/jumbo v1, "TEST_ON_PRODUCTION"

    const-string/jumbo v2, "nemo7.liquable.com"

    new-array v3, v10, [Lcom/liquable/nemo/client/ServerInfo;

    new-instance v4, Lcom/liquable/nemo/client/ServerInfo;

    const-string/jumbo v5, "nemo8.liquable.com"

    invoke-direct {v4, v5, v6}, Lcom/liquable/nemo/client/ServerInfo;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v7

    new-instance v4, Lcom/liquable/nemo/client/ServerInfo;

    const-string/jumbo v5, "nemo9.liquable.com"

    invoke-direct {v4, v5, v6}, Lcom/liquable/nemo/client/ServerInfo;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v8

    new-instance v4, Lcom/liquable/nemo/client/ServerInfo;

    const-string/jumbo v5, "nemo9.liquable.com"

    invoke-direct {v4, v5, v6}, Lcom/liquable/nemo/client/ServerInfo;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v9

    .line 19
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/liquable/nemo/client/ServerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/liquable/nemo/client/ServerType;->TEST_ON_PRODUCTION:Lcom/liquable/nemo/client/ServerType;

    .line 22
    new-instance v0, Lcom/liquable/nemo/client/ServerType;

    const-string/jumbo v1, "TEST"

    const-string/jumbo v2, "zoro.liquable.com"

    new-array v3, v9, [Lcom/liquable/nemo/client/ServerInfo;

    new-instance v4, Lcom/liquable/nemo/client/ServerInfo;

    const-string/jumbo v5, "zoro.liquable.com"

    const/16 v6, 0xde1

    invoke-direct {v4, v5, v6}, Lcom/liquable/nemo/client/ServerInfo;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v7

    new-instance v4, Lcom/liquable/nemo/client/ServerInfo;

    const-string/jumbo v5, "zoro.liquable.com"

    const/16 v6, 0x5c01

    invoke-direct {v4, v5, v6}, Lcom/liquable/nemo/client/ServerInfo;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v8

    .line 23
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/liquable/nemo/client/ServerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/liquable/nemo/client/ServerType;->TEST:Lcom/liquable/nemo/client/ServerType;

    .line 26
    new-instance v0, Lcom/liquable/nemo/client/ServerType;

    const-string/jumbo v1, "LOCAL"

    const-string/jumbo v2, "10.0.3.2"

    new-array v3, v8, [Lcom/liquable/nemo/client/ServerInfo;

    new-instance v4, Lcom/liquable/nemo/client/ServerInfo;

    const-string/jumbo v5, "192.168.56.1"

    const/16 v6, 0xde1

    invoke-direct {v4, v5, v6}, Lcom/liquable/nemo/client/ServerInfo;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v7

    .line 27
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/liquable/nemo/client/ServerType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/liquable/nemo/client/ServerType;->LOCAL:Lcom/liquable/nemo/client/ServerType;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/liquable/nemo/client/ServerType;

    sget-object v1, Lcom/liquable/nemo/client/ServerType;->PRODUCTION:Lcom/liquable/nemo/client/ServerType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/liquable/nemo/client/ServerType;->TEST_ON_PRODUCTION:Lcom/liquable/nemo/client/ServerType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/liquable/nemo/client/ServerType;->TEST:Lcom/liquable/nemo/client/ServerType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/liquable/nemo/client/ServerType;->LOCAL:Lcom/liquable/nemo/client/ServerType;

    aput-object v1, v0, v10

    sput-object v0, Lcom/liquable/nemo/client/ServerType;->$VALUES:[Lcom/liquable/nemo/client/ServerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p3, "homeUrlHost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/client/ServerInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p4, "endpointServerInfos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ServerInfo;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/liquable/nemo/client/ServerType;->homeUrlHost:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/liquable/nemo/client/ServerType;->endpointServerInfos:Ljava/util/List;

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/ServerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/liquable/nemo/client/ServerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/ServerType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/ServerType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/liquable/nemo/client/ServerType;->$VALUES:[Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/ServerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/ServerType;

    return-object v0
.end method


# virtual methods
.method public createEndPointServerInfo(Ljava/lang/String;I)Lcom/liquable/nemo/client/ServerInfo;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 40
    sget-object v0, Lcom/liquable/nemo/client/ServerType;->LOCAL:Lcom/liquable/nemo/client/ServerType;

    if-ne p0, v0, :cond_0

    .line 41
    sget-object v0, Lcom/liquable/nemo/client/ServerType;->LOCAL:Lcom/liquable/nemo/client/ServerType;

    iget-object v0, v0, Lcom/liquable/nemo/client/ServerType;->endpointServerInfos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/ServerInfo;

    .line 43
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/liquable/nemo/client/ServerInfo;

    invoke-direct {v0, p1, p2}, Lcom/liquable/nemo/client/ServerInfo;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public createSocketFactory()Ljavax/net/SocketFactory;
    .locals 3

    .prologue
    const/16 v2, 0x7530

    .line 47
    sget-object v0, Lcom/liquable/nemo/client/ServerType$1;->$SwitchMap$com$liquable$nemo$client$ServerType:[I

    invoke-virtual {p0}, Lcom/liquable/nemo/client/ServerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 51
    invoke-static {v2}, Landroid/net/SSLCertificateSocketFactory;->getDefault(I)Ljavax/net/SocketFactory;

    move-result-object v0

    :goto_0
    return-object v0

    .line 49
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroid/net/SSLCertificateSocketFactory;->getInsecure(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getEndpointServerInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/client/ServerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/liquable/nemo/client/ServerType;->endpointServerInfos:Ljava/util/List;

    return-object v0
.end method

.method public getHomeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/client/ServerType;->homeUrlHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelayServerRegions()Lcom/liquable/nemo/util/ServerRegions;
    .locals 4

    .prologue
    const/16 v3, 0x1bb

    .line 73
    sget-object v0, Lcom/liquable/nemo/client/ServerType$1;->$SwitchMap$com$liquable$nemo$client$ServerType:[I

    invoke-virtual {p0}, Lcom/liquable/nemo/client/ServerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 76
    :pswitch_0
    new-instance v0, Lcom/liquable/nemo/util/ServerRegions$Builder;

    invoke-direct {v0}, Lcom/liquable/nemo/util/ServerRegions$Builder;-><init>()V

    const-string/jumbo v1, "jp"

    const-string/jumbo v2, "re2.liquable.com"

    .line 77
    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/util/ServerRegions$Builder;->put(Ljava/lang/String;Ljava/lang/String;I)Lcom/liquable/nemo/util/ServerRegions$Builder;

    move-result-object v0

    const-string/jumbo v1, "jp"

    const-string/jumbo v2, "re3.liquable.com"

    .line 78
    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/util/ServerRegions$Builder;->put(Ljava/lang/String;Ljava/lang/String;I)Lcom/liquable/nemo/util/ServerRegions$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/liquable/nemo/util/ServerRegions$Builder;->build()Lcom/liquable/nemo/util/ServerRegions;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 82
    :pswitch_1
    new-instance v1, Lcom/liquable/nemo/util/ServerRegions$Builder;

    invoke-direct {v1}, Lcom/liquable/nemo/util/ServerRegions$Builder;-><init>()V

    .line 83
    invoke-virtual {p0}, Lcom/liquable/nemo/client/ServerType;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/liquable/nemo/client/ServerType;->endpointServerInfos:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/ServerInfo;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/ServerInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xdac

    invoke-virtual {v1, v2, v0, v3}, Lcom/liquable/nemo/util/ServerRegions$Builder;->put(Ljava/lang/String;Ljava/lang/String;I)Lcom/liquable/nemo/util/ServerRegions$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/liquable/nemo/util/ServerRegions$Builder;->build()Lcom/liquable/nemo/util/ServerRegions;

    move-result-object v0

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isProduction()Z
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/liquable/nemo/client/ServerType;->PRODUCTION:Lcom/liquable/nemo/client/ServerType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTestOnProduction()Z
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/liquable/nemo/client/ServerType;->TEST_ON_PRODUCTION:Lcom/liquable/nemo/client/ServerType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
