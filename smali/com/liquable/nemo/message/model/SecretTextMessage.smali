.class public Lcom/liquable/nemo/message/model/SecretTextMessage;
.super Lcom/liquable/nemo/message/model/DomainMessage;
.source "SecretTextMessage.java"

# interfaces
.implements Lcom/liquable/nemo/message/model/ISecret;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final EXPIRE_DURATION:J = 0x2710L

.field private static final serialVersionUID:J = -0x6465e469df5c1994L


# instance fields
.field private final content:Ljava/lang/String;

.field private final deleteTimeSecret:Lcom/liquable/nemo/message/model/DeleteTimeSecret;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "content"
        .end annotation
    .end param
    .param p2, "deleteTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "deleteTime"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/liquable/nemo/message/model/DeleteTimeSecret;

    const-wide/16 v1, 0x2710

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;-><init>(JJ)V

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/message/model/SecretTextMessage;-><init>(Ljava/lang/String;Lcom/liquable/nemo/message/model/DeleteTimeSecret;)V

    .line 48
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/liquable/nemo/message/model/DeleteTimeSecret;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "deleteTimeSecret"    # Lcom/liquable/nemo/message/model/DeleteTimeSecret;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/DomainMessage;-><init>()V

    .line 39
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "content should not be null"

    invoke-static {v0, v1}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/liquable/nemo/message/model/SecretTextMessage;->content:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/liquable/nemo/message/model/SecretTextMessage;->deleteTimeSecret:Lcom/liquable/nemo/message/model/DeleteTimeSecret;

    .line 42
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createBySender(Ljava/lang/String;)Lcom/liquable/nemo/message/model/SecretTextMessage;
    .locals 4
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcom/liquable/nemo/message/model/SecretTextMessage;

    invoke-static {}, Lcom/liquable/nemo/crypt/Encryption;->createAESEncryption()Lcom/liquable/nemo/crypt/Encryption;

    move-result-object v1

    .line 21
    invoke-virtual {v1, p0}, Lcom/liquable/nemo/crypt/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->create(J)Lcom/liquable/nemo/message/model/DeleteTimeSecret;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/message/model/SecretTextMessage;-><init>(Ljava/lang/String;Lcom/liquable/nemo/message/model/DeleteTimeSecret;)V

    .line 22
    .local v0, "textMessage":Lcom/liquable/nemo/message/model/SecretTextMessage;
    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/SecretTextMessage;->initial()V

    .line 23
    return-object v0
.end method

.method private getDeleteTime()J
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/message/model/SecretTextMessage;->deleteTimeSecret:Lcom/liquable/nemo/message/model/DeleteTimeSecret;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->getDeleteTime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/message/model/SecretTextMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDecryptedContent()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Lcom/liquable/nemo/crypt/Encryption;->createAESEncryption()Lcom/liquable/nemo/crypt/Encryption;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/SecretTextMessage;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/crypt/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/SecretTextMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->SECRET_TEXT_SELF:Lcom/liquable/nemo/message/model/MessageItemViewType;

    .line 74
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/MessageItemViewType;->SECRET_TEXT_OTHER:Lcom/liquable/nemo/message/model/MessageItemViewType;

    goto :goto_0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 79
    const v0, 0x7f0d0326

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "params":[Ljava/lang/String;
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAutoCountDown(Ljava/lang/String;)Z
    .locals 1
    .param p1, "myUid"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public isCopyable()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public isState(Lcom/liquable/nemo/message/model/ISecret$State;)Z
    .locals 1
    .param p1, "state"    # Lcom/liquable/nemo/message/model/ISecret$State;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/liquable/nemo/message/model/SecretTextMessage;->deleteTimeSecret:Lcom/liquable/nemo/message/model/DeleteTimeSecret;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->isState(Lcom/liquable/nemo/message/model/ISecret$State;)Z

    move-result v0

    return v0
.end method

.method public open()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/liquable/nemo/message/model/SecretTextMessage;->deleteTimeSecret:Lcom/liquable/nemo/message/model/DeleteTimeSecret;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->open()V

    .line 106
    return-void
.end method

.method public requirePush()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public timeToExpireInMilli()J
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/liquable/nemo/message/model/SecretTextMessage;->deleteTimeSecret:Lcom/liquable/nemo/message/model/DeleteTimeSecret;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/DeleteTimeSecret;->timeToExpireInMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SecretTextMessage [content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/SecretTextMessage;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deleteTimeSecret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/model/SecretTextMessage;->deleteTimeSecret:Lcom/liquable/nemo/message/model/DeleteTimeSecret;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
