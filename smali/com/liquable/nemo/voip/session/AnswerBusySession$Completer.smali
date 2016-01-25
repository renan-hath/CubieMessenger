.class Lcom/liquable/nemo/voip/session/AnswerBusySession$Completer;
.super Ljava/util/concurrent/FutureTask;
.source "AnswerBusySession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/session/AnswerBusySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Completer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/liquable/nemo/voip/session/AnswerBusySession$Completer$1;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/session/AnswerBusySession$Completer$1;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 24
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/session/AnswerBusySession$Completer;->run()V

    .line 28
    return-void
.end method
