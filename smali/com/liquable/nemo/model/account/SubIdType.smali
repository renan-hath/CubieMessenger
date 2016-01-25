.class final enum Lcom/liquable/nemo/model/account/SubIdType;
.super Ljava/lang/Enum;
.source "SubIdType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/model/account/SubIdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/model/account/SubIdType;

.field public static final enum INVALID:Lcom/liquable/nemo/model/account/SubIdType;

.field public static final enum OPEN_API_APP_SENDER:Lcom/liquable/nemo/model/account/SubIdType;

.field static final OPEN_API_APP_SENDER_SUB_ID:Ljava/lang/String; = "10000"

.field public static final enum PARENT:Lcom/liquable/nemo/model/account/SubIdType;

.field public static final enum PUB_CHANNEL_BROADCASTER:Lcom/liquable/nemo/model/account/SubIdType;

.field static final PUB_CHANNEL_BROADCASTER_SUB_ID:Ljava/lang/String; = "20000"

.field public static final enum SUB_ACCOUNT:Lcom/liquable/nemo/model/account/SubIdType;

.field private static final SUB_ACCOUNT_SUB_ID_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/liquable/nemo/model/account/SubIdType;

    const-string/jumbo v1, "PARENT"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/account/SubIdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/account/SubIdType;->PARENT:Lcom/liquable/nemo/model/account/SubIdType;

    new-instance v0, Lcom/liquable/nemo/model/account/SubIdType;

    const-string/jumbo v1, "SUB_ACCOUNT"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/model/account/SubIdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/account/SubIdType;->SUB_ACCOUNT:Lcom/liquable/nemo/model/account/SubIdType;

    new-instance v0, Lcom/liquable/nemo/model/account/SubIdType;

    const-string/jumbo v1, "OPEN_API_APP_SENDER"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/model/account/SubIdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/account/SubIdType;->OPEN_API_APP_SENDER:Lcom/liquable/nemo/model/account/SubIdType;

    new-instance v0, Lcom/liquable/nemo/model/account/SubIdType;

    const-string/jumbo v1, "INVALID"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/model/account/SubIdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/account/SubIdType;->INVALID:Lcom/liquable/nemo/model/account/SubIdType;

    new-instance v0, Lcom/liquable/nemo/model/account/SubIdType;

    const-string/jumbo v1, "PUB_CHANNEL_BROADCASTER"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/model/account/SubIdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/account/SubIdType;->PUB_CHANNEL_BROADCASTER:Lcom/liquable/nemo/model/account/SubIdType;

    .line 5
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/liquable/nemo/model/account/SubIdType;

    sget-object v1, Lcom/liquable/nemo/model/account/SubIdType;->PARENT:Lcom/liquable/nemo/model/account/SubIdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/model/account/SubIdType;->SUB_ACCOUNT:Lcom/liquable/nemo/model/account/SubIdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/model/account/SubIdType;->OPEN_API_APP_SENDER:Lcom/liquable/nemo/model/account/SubIdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/model/account/SubIdType;->INVALID:Lcom/liquable/nemo/model/account/SubIdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/model/account/SubIdType;->PUB_CHANNEL_BROADCASTER:Lcom/liquable/nemo/model/account/SubIdType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/liquable/nemo/model/account/SubIdType;->$VALUES:[Lcom/liquable/nemo/model/account/SubIdType;

    .line 25
    const-string/jumbo v0, "([1-9]|[1-5][0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/model/account/SubIdType;->SUB_ACCOUNT_SUB_ID_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static detect(Ljava/lang/String;)Lcom/liquable/nemo/model/account/SubIdType;
    .locals 1
    .param p0, "subId"    # Ljava/lang/String;

    .prologue
    .line 9
    if-nez p0, :cond_0

    .line 10
    sget-object v0, Lcom/liquable/nemo/model/account/SubIdType;->PARENT:Lcom/liquable/nemo/model/account/SubIdType;

    .line 18
    :goto_0
    return-object v0

    .line 11
    :cond_0
    sget-object v0, Lcom/liquable/nemo/model/account/SubIdType;->SUB_ACCOUNT_SUB_ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    sget-object v0, Lcom/liquable/nemo/model/account/SubIdType;->SUB_ACCOUNT:Lcom/liquable/nemo/model/account/SubIdType;

    goto :goto_0

    .line 13
    :cond_1
    const-string/jumbo v0, "10000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    sget-object v0, Lcom/liquable/nemo/model/account/SubIdType;->OPEN_API_APP_SENDER:Lcom/liquable/nemo/model/account/SubIdType;

    goto :goto_0

    .line 15
    :cond_2
    const-string/jumbo v0, "20000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    sget-object v0, Lcom/liquable/nemo/model/account/SubIdType;->PUB_CHANNEL_BROADCASTER:Lcom/liquable/nemo/model/account/SubIdType;

    goto :goto_0

    .line 18
    :cond_3
    sget-object v0, Lcom/liquable/nemo/model/account/SubIdType;->INVALID:Lcom/liquable/nemo/model/account/SubIdType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/model/account/SubIdType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/liquable/nemo/model/account/SubIdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/account/SubIdType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/model/account/SubIdType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/liquable/nemo/model/account/SubIdType;->$VALUES:[Lcom/liquable/nemo/model/account/SubIdType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/model/account/SubIdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/model/account/SubIdType;

    return-object v0
.end method
