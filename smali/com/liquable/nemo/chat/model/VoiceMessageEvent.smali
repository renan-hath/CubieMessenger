.class public final enum Lcom/liquable/nemo/chat/model/VoiceMessageEvent;
.super Ljava/lang/Enum;
.source "VoiceMessageEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/chat/model/VoiceMessageEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/chat/model/VoiceMessageEvent;

.field public static final ACTION_NAME:Ljava/lang/String; = "com.liquable.nemo.chat.model.VOICE_MESSAGE_EVENT"

.field public static final KEY_MESSAGE_ID:Ljava/lang/String; = "com.liquable.nemo.chat.model.KEY_MESSAGE_ID"

.field public static final enum PLAY:Lcom/liquable/nemo/chat/model/VoiceMessageEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/liquable/nemo/chat/model/VoiceMessageEvent;

    const-string/jumbo v1, "PLAY"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/model/VoiceMessageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/model/VoiceMessageEvent;->PLAY:Lcom/liquable/nemo/chat/model/VoiceMessageEvent;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/chat/model/VoiceMessageEvent;

    sget-object v1, Lcom/liquable/nemo/chat/model/VoiceMessageEvent;->PLAY:Lcom/liquable/nemo/chat/model/VoiceMessageEvent;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/chat/model/VoiceMessageEvent;->$VALUES:[Lcom/liquable/nemo/chat/model/VoiceMessageEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/chat/model/VoiceMessageEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/chat/model/VoiceMessageEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/model/VoiceMessageEvent;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/chat/model/VoiceMessageEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/chat/model/VoiceMessageEvent;->$VALUES:[Lcom/liquable/nemo/chat/model/VoiceMessageEvent;

    invoke-virtual {v0}, [Lcom/liquable/nemo/chat/model/VoiceMessageEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/chat/model/VoiceMessageEvent;

    return-object v0
.end method
