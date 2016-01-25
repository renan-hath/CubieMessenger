.class public Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;
.super Ljava/lang/Object;
.source "TwitterAccessToken.java"


# instance fields
.field private final token:Ljava/lang/String;

.field private final tokenSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "tokenSecret"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->token:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->tokenSecret:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    if-ne p0, p1, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v1

    .line 20
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 21
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 24
    check-cast v0, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;

    .line 26
    .local v0, "that":Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;
    iget-object v3, p0, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->token:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->token:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 27
    goto :goto_0

    .line 26
    :cond_5
    iget-object v3, v0, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->token:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 29
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->tokenSecret:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->tokenSecret:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->tokenSecret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 30
    goto :goto_0

    .line 29
    :cond_7
    iget-object v3, v0, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->tokenSecret:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->tokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->token:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->token:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 39
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->tokenSecret:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->tokenSecret:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 40
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 38
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TwitterAccessToken{token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tokenSecret=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterAccessToken;->tokenSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
