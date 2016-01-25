.class public final enum Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;
.super Ljava/lang/Enum;
.source "IVoipClient.java"

# interfaces
.implements Lcom/liquable/nemo/voip/client/IVoipClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/client/IVoipClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Dummy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;",
        ">;",
        "Lcom/liquable/nemo/voip/client/IVoipClient;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;

.field public static final enum INSTANCE:Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;->INSTANCE:Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;

    sget-object v1, Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;->INSTANCE:Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;->$VALUES:[Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;->$VALUES:[Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;

    invoke-virtual {v0}, [Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;

    return-object v0
.end method


# virtual methods
.method public connectAsync(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 11
    return-void
.end method

.method public disconnectSync()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public getReadVoicePacketCount()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public getWriteVoicePacketCount()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public writeAccept(Ljava/lang/String;)V
    .locals 0
    .param p1, "dialId"    # Ljava/lang/String;

    .prologue
    .line 27
    return-void
.end method

.method public writeBusy(Ljava/lang/String;)V
    .locals 0
    .param p1, "dialId"    # Ljava/lang/String;

    .prologue
    .line 30
    return-void
.end method

.method public writeDial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dialId"    # Ljava/lang/String;
    .param p2, "dialerUid"    # Ljava/lang/String;
    .param p3, "receiverUid"    # Ljava/lang/String;

    .prologue
    .line 33
    return-void
.end method

.method public writeHangup(Ljava/lang/String;)V
    .locals 0
    .param p1, "dialId"    # Ljava/lang/String;

    .prologue
    .line 36
    return-void
.end method

.method public writePing(Ljava/lang/String;)V
    .locals 0
    .param p1, "dialId"    # Ljava/lang/String;

    .prologue
    .line 39
    return-void
.end method

.method public writeReceive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dialId"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 42
    return-void
.end method

.method public writeReject(Ljava/lang/String;)V
    .locals 0
    .param p1, "dialId"    # Ljava/lang/String;

    .prologue
    .line 45
    return-void
.end method

.method public writeVoicePacket(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "voicePacket"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 48
    return-void
.end method
