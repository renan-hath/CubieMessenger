.class final enum Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;
.super Ljava/lang/Enum;
.source "VoipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Prepare"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

.field public static final enum READY:Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

.field public static final enum WAITING_LAST_PING:Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

.field public static final enum WAIT_TIME_OUT:Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 734
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

    const-string/jumbo v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;->READY:Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

    const-string/jumbo v1, "WAITING_LAST_PING"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;->WAITING_LAST_PING:Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

    const-string/jumbo v1, "WAIT_TIME_OUT"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;->WAIT_TIME_OUT:Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

    .line 733
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;->READY:Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;->WAITING_LAST_PING:Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;->WAIT_TIME_OUT:Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;->$VALUES:[Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

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
    .line 733
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 733
    const-class v0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;
    .locals 1

    .prologue
    .line 733
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;->$VALUES:[Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

    invoke-virtual {v0}, [Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

    return-object v0
.end method
