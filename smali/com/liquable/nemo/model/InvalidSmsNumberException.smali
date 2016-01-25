.class public final Lcom/liquable/nemo/model/InvalidSmsNumberException;
.super Lcom/liquable/nemo/model/DomainException;
.source "InvalidSmsNumberException.java"


# annotations
.annotation runtime Lcom/liquable/nemo/rpc/LogAsWarn;
.end annotation

.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4284d199c07bbdf4L


# instance fields
.field private final rawPhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "rawPhoneNumber"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "rawPhoneNumber"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/liquable/nemo/model/DomainException;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/liquable/nemo/model/InvalidSmsNumberException;->rawPhoneNumber:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    if-ne p0, p1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v1

    .line 26
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 27
    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 30
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 32
    check-cast v0, Lcom/liquable/nemo/model/InvalidSmsNumberException;

    .line 33
    .local v0, "other":Lcom/liquable/nemo/model/InvalidSmsNumberException;
    iget-object v3, p0, Lcom/liquable/nemo/model/InvalidSmsNumberException;->rawPhoneNumber:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 34
    iget-object v3, v0, Lcom/liquable/nemo/model/InvalidSmsNumberException;->rawPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 35
    goto :goto_0

    .line 37
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/InvalidSmsNumberException;->rawPhoneNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/InvalidSmsNumberException;->rawPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 38
    goto :goto_0
.end method

.method public getI18nKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "invalid_sms_number"

    return-object v0
.end method

.method public getRawPhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/model/InvalidSmsNumberException;->rawPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 55
    const/16 v0, 0x1f

    .line 56
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 57
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/InvalidSmsNumberException;->rawPhoneNumber:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 58
    return v1

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/InvalidSmsNumberException;->rawPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InvalidSmsNumberException [rawPhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/InvalidSmsNumberException;->rawPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
