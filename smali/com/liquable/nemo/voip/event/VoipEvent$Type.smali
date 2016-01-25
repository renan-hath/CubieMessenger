.class public final enum Lcom/liquable/nemo/voip/event/VoipEvent$Type;
.super Ljava/lang/Enum;
.source "VoipEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/event/VoipEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/voip/event/VoipEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum ACCEPTED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum AUDIO_PLAYER_FAIL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum AUDIO_RECORDER_FAIL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum AUTHENTICATION_FAIL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum CONNECTED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum DIALED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum DIALER_LOST:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum DIALING_PUSH_FAIL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum DIALING_PUSH_SUCCESS:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum DIAL_TIMEOUT:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum DISCONNECTED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum HUNG_UP:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum INVALID_HMAC:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum OPUS_CODEC_EXCEPTION:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum PEER_BROKEN:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum PEER_BUSY:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum PING_PONG:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum PLATFORM_ERROR:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum RECEIVED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum RECEIVE_TIMEOUT:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum REJECTED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum TELEPHONE_CALL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

.field public static final enum UNEXPECTED_CLIENT_FRAME:Lcom/liquable/nemo/voip/event/VoipEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "ACCEPTED"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->ACCEPTED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "DIALED"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->DIALED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "HUNG_UP"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->HUNG_UP:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "RECEIVED"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->RECEIVED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "REJECTED"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->REJECTED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "PEER_BROKEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->PEER_BROKEN:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "PEER_BUSY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->PEER_BUSY:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "DIALER_LOST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->DIALER_LOST:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    .line 7
    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "DIAL_TIMEOUT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->DIAL_TIMEOUT:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "RECEIVE_TIMEOUT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->RECEIVE_TIMEOUT:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    .line 10
    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "CONNECTED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->CONNECTED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "DISCONNECTED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->DISCONNECTED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "PING_PONG"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->PING_PONG:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    .line 13
    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "INVALID_HMAC"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->INVALID_HMAC:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "UNEXPECTED_CLIENT_FRAME"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->UNEXPECTED_CLIENT_FRAME:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "AUTHENTICATION_FAIL"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->AUTHENTICATION_FAIL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "PLATFORM_ERROR"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->PLATFORM_ERROR:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    .line 16
    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "OPUS_CODEC_EXCEPTION"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->OPUS_CODEC_EXCEPTION:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "AUDIO_PLAYER_FAIL"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->AUDIO_PLAYER_FAIL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "AUDIO_RECORDER_FAIL"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->AUDIO_RECORDER_FAIL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    .line 19
    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "DIALING_PUSH_SUCCESS"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->DIALING_PUSH_SUCCESS:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "DIALING_PUSH_FAIL"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->DIALING_PUSH_FAIL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    .line 22
    new-instance v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    const-string/jumbo v1, "TELEPHONE_CALL"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->TELEPHONE_CALL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    .line 4
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    sget-object v1, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->ACCEPTED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->DIALED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->HUNG_UP:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->RECEIVED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->REJECTED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->PEER_BROKEN:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->PEER_BUSY:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->DIALER_LOST:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->DIAL_TIMEOUT:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->RECEIVE_TIMEOUT:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->CONNECTED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->DISCONNECTED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->PING_PONG:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->INVALID_HMAC:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->UNEXPECTED_CLIENT_FRAME:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->AUTHENTICATION_FAIL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->PLATFORM_ERROR:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->OPUS_CODEC_EXCEPTION:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->AUDIO_PLAYER_FAIL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->AUDIO_RECORDER_FAIL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->DIALING_PUSH_SUCCESS:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->DIALING_PUSH_FAIL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->TELEPHONE_CALL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->$VALUES:[Lcom/liquable/nemo/voip/event/VoipEvent$Type;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/voip/event/VoipEvent$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/voip/event/VoipEvent$Type;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->$VALUES:[Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-virtual {v0}, [Lcom/liquable/nemo/voip/event/VoipEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    return-object v0
.end method
