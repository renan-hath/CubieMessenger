.class Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$7;
.super Lcom/liquable/nemo/util/SendTextAsyncTask;
.source "VoipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->saveCallLog()V
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

.field final synthetic val$avgPingPongDuration:J

.field final synthetic val$dialerUid:Ljava/lang/String;

.field final synthetic val$duration:J

.field final synthetic val$myUid:Ljava/lang/String;

.field final synthetic val$receiverUid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$7;->this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    iput-object p2, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$7;->val$dialerUid:Ljava/lang/String;

    iput-object p3, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$7;->val$receiverUid:Ljava/lang/String;

    iput-wide p4, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$7;->val$duration:J

    iput-object p6, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$7;->val$myUid:Ljava/lang/String;

    iput-wide p7, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$7;->val$avgPingPongDuration:J

    invoke-direct {p0}, Lcom/liquable/nemo/util/SendTextAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 649
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 652
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$7;->val$dialerUid:Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$7;->val$receiverUid:Ljava/lang/String;

    iget-wide v4, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$7;->val$duration:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveCallLogMessage(Ljava/lang/String;Ljava/lang/String;J)Lcom/liquable/nemo/message/model/CallLogMessage;

    move-result-object v0

    .line 656
    .local v0, "callLog":Lcom/liquable/nemo/message/model/CallLogMessage;
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$7;->val$dialerUid:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$7;->val$myUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/CallLogMessage;->getDurationInMinutes()I

    move-result v2

    iget-wide v3, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$7;->val$avgPingPongDuration:J

    invoke-interface {v1, v2, v3, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService;->voipDialerCallLog(IJ)V

    .line 661
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
