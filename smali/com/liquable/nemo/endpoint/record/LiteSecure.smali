.class public final Lcom/liquable/nemo/endpoint/record/LiteSecure;
.super Ljava/lang/Object;
.source "LiteSecure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;,
        Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;,
        Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;,
        Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;,
        Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;,
        Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;,
        Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;,
        Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 4136
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .prologue
    .line 4134
    return-void
.end method
