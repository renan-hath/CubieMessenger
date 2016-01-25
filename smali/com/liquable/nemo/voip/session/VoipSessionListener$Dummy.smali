.class public final enum Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;
.super Ljava/lang/Enum;
.source "VoipSessionListener.java"

# interfaces
.implements Lcom/liquable/nemo/voip/session/VoipSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/session/VoipSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Dummy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;",
        ">;",
        "Lcom/liquable/nemo/voip/session/VoipSessionListener;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;

.field public static final enum INSTANCE:Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;->INSTANCE:Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;

    .line 4
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;->INSTANCE:Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;->$VALUES:[Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;->$VALUES:[Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;

    invoke-virtual {v0}, [Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;

    return-object v0
.end method


# virtual methods
.method public onSessinoReport(Lcom/liquable/nemo/voip/session/VoipSessionReport;)V
    .locals 0
    .param p1, "report"    # Lcom/liquable/nemo/voip/session/VoipSessionReport;

    .prologue
    .line 8
    return-void
.end method

.method public onSessionClosed()V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method public onSessionError(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 14
    return-void
.end method

.method public onSessionPeerLost()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public onSessionStateChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 20
    return-void
.end method
