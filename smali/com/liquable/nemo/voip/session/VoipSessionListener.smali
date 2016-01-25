.class public interface abstract Lcom/liquable/nemo/voip/session/VoipSessionListener;
.super Ljava/lang/Object;
.source "VoipSessionListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;
    }
.end annotation


# virtual methods
.method public abstract onSessinoReport(Lcom/liquable/nemo/voip/session/VoipSessionReport;)V
.end method

.method public abstract onSessionClosed()V
.end method

.method public abstract onSessionError(Ljava/lang/String;)V
.end method

.method public abstract onSessionPeerLost()V
.end method

.method public abstract onSessionStateChanged(Ljava/lang/String;)V
.end method
