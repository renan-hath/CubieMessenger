.class Lcom/liquable/nemo/voip/AnswerCallActivity$4;
.super Ljava/lang/Object;
.source "AnswerCallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/AnswerCallActivity;->onSessionCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/AnswerCallActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/AnswerCallActivity;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity$4;->this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity$4;->this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;

    # getter for: Lcom/liquable/nemo/voip/AnswerCallActivity;->hangupBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->access$300(Lcom/liquable/nemo/voip/AnswerCallActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity$4;->this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->getVoipSession()Lcom/liquable/nemo/voip/session/VoipSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->hangup()V

    .line 178
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity$4;->this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;

    # invokes: Lcom/liquable/nemo/voip/AnswerCallActivity;->releaseLock()V
    invoke-static {v0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->access$000(Lcom/liquable/nemo/voip/AnswerCallActivity;)V

    .line 179
    return-void
.end method
