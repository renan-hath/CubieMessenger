.class Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1$1;
.super Ljava/lang/Object;
.source "VoiceRecorderWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->onFail(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1$1;->this$2:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1$1;->this$2:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->val$context:Landroid/content/Context;

    const v1, 0x7f0d01ca

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 139
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1$1;->this$2:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$400(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 140
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1$1;->this$2:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$400(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1$1;->this$2:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtnText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$300(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d0511

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    return-void
.end method
