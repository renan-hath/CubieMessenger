.class public Lcom/liquable/nemo/voip/event/VoipRecorderException;
.super Lcom/liquable/nemo/voip/event/VoipException;
.source "VoipRecorderException.java"


# static fields
.field private static final serialVersionUID:J = 0x374af93e4ee68b96L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/liquable/nemo/voip/event/VoipException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/event/VoipException;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/voip/event/VoipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/event/VoipException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    return-void
.end method
