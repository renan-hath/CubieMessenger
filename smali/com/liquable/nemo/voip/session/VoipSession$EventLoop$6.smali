.class Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$6;
.super Ljava/lang/Object;
.source "VoipSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onTelephoneCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$6;->this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$6;->this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->fireSessionClosedOnlyOnce()V
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->access$2200(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)V

    .line 541
    return-void
.end method
