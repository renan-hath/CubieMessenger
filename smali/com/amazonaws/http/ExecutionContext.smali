.class public Lcom/amazonaws/http/ExecutionContext;
.super Ljava/lang/Object;
.source "ExecutionContext.java"


# instance fields
.field private backoffStrategy:Lcom/amazonaws/internal/CustomBackoffStrategy;

.field private contextUserAgent:Ljava/lang/String;

.field private credentials:Lcom/amazonaws/auth/AWSCredentials;

.field private requestHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/handlers/RequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private signer:Lcom/amazonaws/auth/Signer;

.field private timingInfo:Lcom/amazonaws/util/TimingInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/handlers/RequestHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "requestHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/handlers/RequestHandler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->requestHandlers:Ljava/util/List;

    .line 49
    return-void
.end method


# virtual methods
.method public getContextUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->contextUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentials()Lcom/amazonaws/auth/AWSCredentials;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->credentials:Lcom/amazonaws/auth/AWSCredentials;

    return-object v0
.end method

.method public getCustomBackoffStrategy()Lcom/amazonaws/internal/CustomBackoffStrategy;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->backoffStrategy:Lcom/amazonaws/internal/CustomBackoffStrategy;

    return-object v0
.end method

.method public getRequestHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/handlers/RequestHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->requestHandlers:Ljava/util/List;

    return-object v0
.end method

.method public getSigner()Lcom/amazonaws/auth/Signer;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->signer:Lcom/amazonaws/auth/Signer;

    return-object v0
.end method

.method public getTimingInfo()Lcom/amazonaws/util/TimingInfo;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    return-object v0
.end method

.method public setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 0
    .param p1, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->credentials:Lcom/amazonaws/auth/AWSCredentials;

    .line 119
    return-void
.end method

.method public setSigner(Lcom/amazonaws/auth/Signer;)V
    .locals 0
    .param p1, "signer"    # Lcom/amazonaws/auth/Signer;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->signer:Lcom/amazonaws/auth/Signer;

    .line 145
    return-void
.end method

.method public setTimingInfo(Lcom/amazonaws/util/TimingInfo;)V
    .locals 0
    .param p1, "timingInfo"    # Lcom/amazonaws/util/TimingInfo;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    .line 150
    return-void
.end method
