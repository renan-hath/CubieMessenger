.class public Lcom/liquable/nemo/voip/event/VoipExceptionEvent;
.super Lcom/liquable/nemo/voip/event/VoipEvent;
.source "VoipExceptionEvent.java"


# instance fields
.field private final cause:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "type"    # Lcom/liquable/nemo/voip/event/VoipEvent$Type;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    .line 47
    iput-object p2, p0, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;->cause:Ljava/lang/Exception;

    .line 48
    return-void
.end method

.method public static createPlayerFail(Ljava/lang/Exception;Ljava/lang/String;)Lcom/liquable/nemo/voip/event/VoipExceptionEvent;
    .locals 4
    .param p0, "cause"    # Ljava/lang/Exception;
    .param p1, "causeDescription"    # Ljava/lang/String;

    .prologue
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .local v0, "desc":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    if-eqz p0, :cond_0

    .line 12
    const-string/jumbo v2, " - root cause:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    :cond_0
    :goto_0
    new-instance v1, Lcom/liquable/nemo/voip/event/VoipPlayerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/liquable/nemo/voip/event/VoipPlayerException;-><init>(Ljava/lang/String;)V

    .line 21
    .local v1, "stacktrace":Lcom/liquable/nemo/voip/event/VoipPlayerException;
    new-instance v2, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    sget-object v3, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->AUDIO_PLAYER_FAIL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v2, v3, v1}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;Ljava/lang/Exception;)V

    return-object v2

    .line 16
    .end local v1    # "stacktrace":Lcom/liquable/nemo/voip/event/VoipPlayerException;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static createRecorderFail(Ljava/lang/Exception;Ljava/lang/String;)Lcom/liquable/nemo/voip/event/VoipExceptionEvent;
    .locals 4
    .param p0, "cause"    # Ljava/lang/Exception;
    .param p1, "causeDescription"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .local v0, "desc":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    if-eqz p0, :cond_0

    .line 31
    const-string/jumbo v2, " - root cause:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    :cond_0
    :goto_0
    new-instance v1, Lcom/liquable/nemo/voip/event/VoipRecorderException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/liquable/nemo/voip/event/VoipRecorderException;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, "stacktrace":Lcom/liquable/nemo/voip/event/VoipRecorderException;
    new-instance v2, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    sget-object v3, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->AUDIO_RECORDER_FAIL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v2, v3, v1}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;Ljava/lang/Exception;)V

    return-object v2

    .line 35
    .end local v1    # "stacktrace":Lcom/liquable/nemo/voip/event/VoipRecorderException;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public getCause()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;->cause:Ljava/lang/Exception;

    return-object v0
.end method
