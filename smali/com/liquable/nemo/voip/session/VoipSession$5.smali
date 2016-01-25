.class Lcom/liquable/nemo/voip/session/VoipSession$5;
.super Ljava/lang/Object;
.source "VoipSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/session/VoipSession;->dial(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/session/VoipSession;

.field final synthetic val$dialerUid:Ljava/lang/String;

.field final synthetic val$receiverUid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/session/VoipSession;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 982
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/VoipSession$5;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    iput-object p2, p0, Lcom/liquable/nemo/voip/session/VoipSession$5;->val$dialerUid:Ljava/lang/String;

    iput-object p3, p0, Lcom/liquable/nemo/voip/session/VoipSession$5;->val$receiverUid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 986
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$5;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$2000(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$5;->val$dialerUid:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/VoipSession$5;->val$receiverUid:Ljava/lang/String;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onBeginDial(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->access$3000(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    return-void
.end method
