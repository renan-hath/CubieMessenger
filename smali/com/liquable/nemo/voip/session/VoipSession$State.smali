.class final enum Lcom/liquable/nemo/voip/session/VoipSession$State;
.super Ljava/lang/Enum;
.source "VoipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/session/VoipSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/voip/session/VoipSession$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/voip/session/VoipSession$State;

.field public static final enum CAN_NOT_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

.field public static final enum CAN_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

.field public static final enum DIALING:Lcom/liquable/nemo/voip/session/VoipSession$State;

.field public static final enum INITIAL:Lcom/liquable/nemo/voip/session/VoipSession$State;

.field public static final enum RECEIVED:Lcom/liquable/nemo/voip/session/VoipSession$State;

.field public static final enum RECEIVING:Lcom/liquable/nemo/voip/session/VoipSession$State;

.field public static final enum RECEIVING_PENDING_DECISION:Lcom/liquable/nemo/voip/session/VoipSession$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 827
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$State;

    const-string/jumbo v1, "INITIAL"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/voip/session/VoipSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->INITIAL:Lcom/liquable/nemo/voip/session/VoipSession$State;

    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$State;

    const-string/jumbo v1, "DIALING"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/voip/session/VoipSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->DIALING:Lcom/liquable/nemo/voip/session/VoipSession$State;

    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$State;

    const-string/jumbo v1, "RECEIVING"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/voip/session/VoipSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->RECEIVING:Lcom/liquable/nemo/voip/session/VoipSession$State;

    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$State;

    const-string/jumbo v1, "RECEIVING_PENDING_DECISION"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/voip/session/VoipSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->RECEIVING_PENDING_DECISION:Lcom/liquable/nemo/voip/session/VoipSession$State;

    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$State;

    const-string/jumbo v1, "RECEIVED"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/voip/session/VoipSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->RECEIVED:Lcom/liquable/nemo/voip/session/VoipSession$State;

    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$State;

    const-string/jumbo v1, "CAN_TALK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/session/VoipSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$State;

    const-string/jumbo v1, "CAN_NOT_TALK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/session/VoipSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_NOT_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    .line 826
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/liquable/nemo/voip/session/VoipSession$State;

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->INITIAL:Lcom/liquable/nemo/voip/session/VoipSession$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->DIALING:Lcom/liquable/nemo/voip/session/VoipSession$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->RECEIVING:Lcom/liquable/nemo/voip/session/VoipSession$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->RECEIVING_PENDING_DECISION:Lcom/liquable/nemo/voip/session/VoipSession$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->RECEIVED:Lcom/liquable/nemo/voip/session/VoipSession$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_NOT_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->$VALUES:[Lcom/liquable/nemo/voip/session/VoipSession$State;

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
    .line 826
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/voip/session/VoipSession$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 826
    const-class v0, Lcom/liquable/nemo/voip/session/VoipSession$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/session/VoipSession$State;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/voip/session/VoipSession$State;
    .locals 1

    .prologue
    .line 826
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->$VALUES:[Lcom/liquable/nemo/voip/session/VoipSession$State;

    invoke-virtual {v0}, [Lcom/liquable/nemo/voip/session/VoipSession$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/voip/session/VoipSession$State;

    return-object v0
.end method
