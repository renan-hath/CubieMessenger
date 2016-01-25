.class public Lcom/liquable/nemo/voip/event/VoipDialingPushEvent;
.super Lcom/liquable/nemo/voip/event/VoipEvent;
.source "VoipDialingPushEvent.java"


# instance fields
.field private final dialId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "dialId"    # Ljava/lang/String;

    .prologue
    .line 8
    if-eqz p1, :cond_0

    sget-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->DIALING_PUSH_SUCCESS:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    :goto_0
    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    .line 9
    iput-object p2, p0, Lcom/liquable/nemo/voip/event/VoipDialingPushEvent;->dialId:Ljava/lang/String;

    .line 10
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->DIALING_PUSH_FAIL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    goto :goto_0
.end method


# virtual methods
.method public getDialId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/liquable/nemo/voip/event/VoipDialingPushEvent;->dialId:Ljava/lang/String;

    return-object v0
.end method
