.class public final enum Lcom/liquable/nemo/model/forum/ForumAbuseReason;
.super Ljava/lang/Enum;
.source "ForumAbuseReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/model/forum/ForumAbuseReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/model/forum/ForumAbuseReason;

.field public static final enum POLITICS_RELIGION:Lcom/liquable/nemo/model/forum/ForumAbuseReason;

.field public static final enum PORN_VIOLENCE:Lcom/liquable/nemo/model/forum/ForumAbuseReason;

.field public static final enum PRIVACY_INFRINGEMENT:Lcom/liquable/nemo/model/forum/ForumAbuseReason;

.field public static final enum SPAM:Lcom/liquable/nemo/model/forum/ForumAbuseReason;

.field public static final enum UNKNOWN:Lcom/liquable/nemo/model/forum/ForumAbuseReason;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    const-string/jumbo v1, "PORN_VIOLENCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/forum/ForumAbuseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->PORN_VIOLENCE:Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    new-instance v0, Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    const-string/jumbo v1, "POLITICS_RELIGION"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/model/forum/ForumAbuseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->POLITICS_RELIGION:Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    new-instance v0, Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    const-string/jumbo v1, "PRIVACY_INFRINGEMENT"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/model/forum/ForumAbuseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->PRIVACY_INFRINGEMENT:Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    new-instance v0, Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    const-string/jumbo v1, "SPAM"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/model/forum/ForumAbuseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->SPAM:Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    new-instance v0, Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/model/forum/ForumAbuseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->UNKNOWN:Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    sget-object v1, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->PORN_VIOLENCE:Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->POLITICS_RELIGION:Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->PRIVACY_INFRINGEMENT:Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->SPAM:Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->UNKNOWN:Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    aput-object v1, v0, v6

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->$VALUES:[Lcom/liquable/nemo/model/forum/ForumAbuseReason;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumAbuseReason;
    .locals 2
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 8
    :try_start_0
    invoke-static {p0}, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumAbuseReason;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 10
    :goto_0
    return-object v1

    .line 9
    :catch_0
    move-exception v0

    .line 10
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->UNKNOWN:Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumAbuseReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/model/forum/ForumAbuseReason;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->$VALUES:[Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    invoke-virtual {v0}, [Lcom/liquable/nemo/model/forum/ForumAbuseReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    return-object v0
.end method
