.class public final Lcom/liquable/nemo/model/InvalidSubAccountSessionKeyException;
.super Lcom/liquable/nemo/model/DomainException;
.source "InvalidSubAccountSessionKeyException.java"


# annotations
.annotation runtime Lcom/liquable/nemo/rpc/LogAsWarn;
.end annotation

.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x439406dba8a65de0L


# instance fields
.field private final sessionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionKey"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "sessionKey"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/liquable/nemo/model/DomainException;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/liquable/nemo/model/InvalidSubAccountSessionKeyException;->sessionKey:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getI18nKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "invalid_sub_account_session_key"

    return-object v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/liquable/nemo/model/InvalidSubAccountSessionKeyException;->sessionKey:Ljava/lang/String;

    return-object v0
.end method
