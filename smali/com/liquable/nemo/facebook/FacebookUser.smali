.class public Lcom/liquable/nemo/facebook/FacebookUser;
.super Ljava/lang/Object;
.source "FacebookUser.java"


# instance fields
.field private final birthday:Ljava/lang/String;

.field private final fbuid:Ljava/lang/String;

.field private final gender:Ljava/lang/String;

.field private final locale:Ljava/lang/String;

.field private final nickname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/model/GraphObject;)V
    .locals 1
    .param p1, "graphObj"    # Lcom/facebook/model/GraphObject;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, "id"

    invoke-interface {p1, v0}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/liquable/nemo/facebook/FacebookUser;->fbuid:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "name"

    invoke-interface {p1, v0}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/liquable/nemo/facebook/FacebookUser;->nickname:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "gender"

    invoke-interface {p1, v0}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/liquable/nemo/facebook/FacebookUser;->gender:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "birthday"

    invoke-interface {p1, v0}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/liquable/nemo/facebook/FacebookUser;->birthday:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "locale"

    invoke-interface {p1, v0}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/liquable/nemo/facebook/FacebookUser;->locale:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/facebook/FacebookUser;->fbuid:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/facebook/FacebookUser;->nickname:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "gender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/facebook/FacebookUser;->gender:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "birthday"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/facebook/FacebookUser;->birthday:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "locale"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/facebook/FacebookUser;->locale:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookUser;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getFbuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookUser;->fbuid:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookUser;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookUser;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookUser;->nickname:Ljava/lang/String;

    return-object v0
.end method
