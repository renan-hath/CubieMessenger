.class Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$8;
.super Lcom/liquable/nemo/util/SendTextAsyncTask;
.source "VoipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->sendMissedCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/SendTextAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

.field final synthetic val$constDialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$8;->this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    iput-object p2, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$8;->val$constDialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    invoke-direct {p0}, Lcom/liquable/nemo/util/SendTextAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 673
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 676
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$8;->val$constDialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->receiverUid:Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->access$1700(Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)Ljava/lang/String;

    move-result-object v1

    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 676
    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendMissedCallMessage(Ljava/lang/String;J)V

    .line 678
    const/4 v0, 0x0

    return-object v0
.end method
