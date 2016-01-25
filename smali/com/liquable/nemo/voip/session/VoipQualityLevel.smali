.class public final enum Lcom/liquable/nemo/voip/session/VoipQualityLevel;
.super Ljava/lang/Enum;
.source "VoipQualityLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/voip/session/VoipQualityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/voip/session/VoipQualityLevel;

.field public static final enum LV_1:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

.field public static final enum LV_2:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

.field public static final enum LV_3:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

.field public static final enum LV_4:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

.field public static final enum LV_5:Lcom/liquable/nemo/voip/session/VoipQualityLevel;


# instance fields
.field private final count:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    const-string/jumbo v1, "LV_1"

    invoke-direct {v0, v1, v7, v3}, Lcom/liquable/nemo/voip/session/VoipQualityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->LV_1:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    new-instance v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    const-string/jumbo v1, "LV_2"

    invoke-direct {v0, v1, v3, v4}, Lcom/liquable/nemo/voip/session/VoipQualityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->LV_2:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    new-instance v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    const-string/jumbo v1, "LV_3"

    invoke-direct {v0, v1, v4, v5}, Lcom/liquable/nemo/voip/session/VoipQualityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->LV_3:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    new-instance v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    const-string/jumbo v1, "LV_4"

    invoke-direct {v0, v1, v5, v6}, Lcom/liquable/nemo/voip/session/VoipQualityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->LV_4:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    new-instance v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    const-string/jumbo v1, "LV_5"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/liquable/nemo/voip/session/VoipQualityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->LV_5:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->LV_1:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->LV_2:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->LV_3:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->LV_4:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->LV_5:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->$VALUES:[Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->count:I

    .line 24
    return-void
.end method

.method public static calcQualityLevel(J)Lcom/liquable/nemo/voip/session/VoipQualityLevel;
    .locals 2
    .param p0, "pingPongDuration"    # J

    .prologue
    .line 7
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 8
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->LV_1:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    .line 16
    :goto_0
    return-object v0

    .line 9
    :cond_0
    const-wide/16 v0, 0x2bc

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    .line 10
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->LV_2:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    goto :goto_0

    .line 11
    :cond_1
    const-wide/16 v0, 0x226

    cmp-long v0, p0, v0

    if-ltz v0, :cond_2

    .line 12
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->LV_3:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    goto :goto_0

    .line 13
    :cond_2
    const-wide/16 v0, 0x190

    cmp-long v0, p0, v0

    if-ltz v0, :cond_3

    .line 14
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->LV_4:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    goto :goto_0

    .line 16
    :cond_3
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->LV_5:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/voip/session/VoipQualityLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/voip/session/VoipQualityLevel;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->$VALUES:[Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    invoke-virtual {v0}, [Lcom/liquable/nemo/voip/session/VoipQualityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->count:I

    return v0
.end method
