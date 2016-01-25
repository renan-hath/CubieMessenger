.class Lcom/liquable/nemo/voip/AnswerCallActivity$3;
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
    .line 160
    iput-object p1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity$3;->this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->voipReject()V

    .line 166
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity$3;->this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;

    # getter for: Lcom/liquable/nemo/voip/AnswerCallActivity;->answerBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->access$100(Lcom/liquable/nemo/voip/AnswerCallActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity$3;->this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;

    # getter for: Lcom/liquable/nemo/voip/AnswerCallActivity;->rejectBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->access$200(Lcom/liquable/nemo/voip/AnswerCallActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity$3;->this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->getVoipSession()Lcom/liquable/nemo/voip/session/VoipSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->reject()V

    .line 169
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity$3;->this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;

    # invokes: Lcom/liquable/nemo/voip/AnswerCallActivity;->releaseLock()V
    invoke-static {v0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->access$000(Lcom/liquable/nemo/voip/AnswerCallActivity;)V

    .line 170
    return-void
.end method
