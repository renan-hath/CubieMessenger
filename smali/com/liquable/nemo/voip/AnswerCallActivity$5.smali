.class Lcom/liquable/nemo/voip/AnswerCallActivity$5;
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
    .line 182
    iput-object p1, p0, Lcom/liquable/nemo/voip/AnswerCallActivity$5;->this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity$5;->this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;

    # getter for: Lcom/liquable/nemo/voip/AnswerCallActivity;->quitBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->access$400(Lcom/liquable/nemo/voip/AnswerCallActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity$5;->this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;

    # getter for: Lcom/liquable/nemo/voip/AnswerCallActivity;->hangupBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->access$300(Lcom/liquable/nemo/voip/AnswerCallActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity$5;->this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;

    # getter for: Lcom/liquable/nemo/voip/AnswerCallActivity;->rejectBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->access$200(Lcom/liquable/nemo/voip/AnswerCallActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity$5;->this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;

    # getter for: Lcom/liquable/nemo/voip/AnswerCallActivity;->answerBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->access$100(Lcom/liquable/nemo/voip/AnswerCallActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/liquable/nemo/voip/AnswerCallActivity$5;->this$0:Lcom/liquable/nemo/voip/AnswerCallActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/AnswerCallActivity;->finish()V

    .line 191
    return-void
.end method
