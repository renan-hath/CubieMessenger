.class public final Lcom/liquable/nemo/voip/frame/Voip;
.super Ljava/lang/Object;
.source "Voip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/frame/Voip$StateChange;,
        Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;,
        Lcom/liquable/nemo/voip/frame/Voip$Receive;,
        Lcom/liquable/nemo/voip/frame/Voip$Pong;,
        Lcom/liquable/nemo/voip/frame/Voip$Ping;,
        Lcom/liquable/nemo/voip/frame/Voip$Frame;,
        Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;,
        Lcom/liquable/nemo/voip/frame/Voip$DialResponse;,
        Lcom/liquable/nemo/voip/frame/Voip$Dial;,
        Lcom/liquable/nemo/voip/frame/Voip$Command;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 5377
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .prologue
    .line 5375
    return-void
.end method
