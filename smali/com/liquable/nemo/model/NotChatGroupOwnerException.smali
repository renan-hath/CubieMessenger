.class public Lcom/liquable/nemo/model/NotChatGroupOwnerException;
.super Lcom/liquable/nemo/model/DomainException;
.source "NotChatGroupOwnerException.java"


# annotations
.annotation runtime Lcom/liquable/nemo/rpc/LogAsWarn;
.end annotation

.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1001b0d161d4d406L


# instance fields
.field private final topic:Ljava/lang/String;

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "topic"
        .end annotation
    .end param
    .param p2, "uid"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "uid"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/liquable/nemo/model/DomainException;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/liquable/nemo/model/NotChatGroupOwnerException;->topic:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/liquable/nemo/model/NotChatGroupOwnerException;->uid:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getI18nKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "not_chat_group_owner"

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/model/NotChatGroupOwnerException;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/model/NotChatGroupOwnerException;->uid:Ljava/lang/String;

    return-object v0
.end method
