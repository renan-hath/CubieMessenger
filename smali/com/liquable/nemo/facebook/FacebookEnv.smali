.class public final enum Lcom/liquable/nemo/facebook/FacebookEnv;
.super Ljava/lang/Enum;
.source "FacebookEnv.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/facebook/FacebookEnv;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/facebook/FacebookEnv;

.field public static final enum FB_PRODUCTION:Lcom/liquable/nemo/facebook/FacebookEnv;

.field public static final enum FB_STAGE:Lcom/liquable/nemo/facebook/FacebookEnv;


# instance fields
.field private final appId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/liquable/nemo/facebook/FacebookEnv;

    const-string/jumbo v1, "FB_PRODUCTION"

    const-string/jumbo v2, "293341020696426"

    invoke-direct {v0, v1, v3, v2}, Lcom/liquable/nemo/facebook/FacebookEnv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/facebook/FacebookEnv;->FB_PRODUCTION:Lcom/liquable/nemo/facebook/FacebookEnv;

    .line 11
    new-instance v0, Lcom/liquable/nemo/facebook/FacebookEnv;

    const-string/jumbo v1, "FB_STAGE"

    const-string/jumbo v2, "325748750826780"

    invoke-direct {v0, v1, v4, v2}, Lcom/liquable/nemo/facebook/FacebookEnv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/facebook/FacebookEnv;->FB_STAGE:Lcom/liquable/nemo/facebook/FacebookEnv;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/liquable/nemo/facebook/FacebookEnv;

    sget-object v1, Lcom/liquable/nemo/facebook/FacebookEnv;->FB_PRODUCTION:Lcom/liquable/nemo/facebook/FacebookEnv;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/facebook/FacebookEnv;->FB_STAGE:Lcom/liquable/nemo/facebook/FacebookEnv;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liquable/nemo/facebook/FacebookEnv;->$VALUES:[Lcom/liquable/nemo/facebook/FacebookEnv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/liquable/nemo/facebook/FacebookEnv;->appId:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/liquable/nemo/facebook/FacebookEnv;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    sget-object v1, Lcom/liquable/nemo/client/ServerType;->PRODUCTION:Lcom/liquable/nemo/client/ServerType;

    if-ne v0, v1, :cond_0

    .line 15
    sget-object v0, Lcom/liquable/nemo/facebook/FacebookEnv;->FB_PRODUCTION:Lcom/liquable/nemo/facebook/FacebookEnv;

    .line 17
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/liquable/nemo/facebook/FacebookEnv;->FB_STAGE:Lcom/liquable/nemo/facebook/FacebookEnv;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/facebook/FacebookEnv;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/liquable/nemo/facebook/FacebookEnv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/facebook/FacebookEnv;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/facebook/FacebookEnv;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/liquable/nemo/facebook/FacebookEnv;->$VALUES:[Lcom/liquable/nemo/facebook/FacebookEnv;

    invoke-virtual {v0}, [Lcom/liquable/nemo/facebook/FacebookEnv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/facebook/FacebookEnv;

    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookEnv;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getGraphApiUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "https://graph.facebook.com/v2.1/"

    return-object v0
.end method

.method public getPublishPermissions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "publish_actions"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReadPermissions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "public_profile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "user_friends"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
