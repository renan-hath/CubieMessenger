.class Lcom/liquable/nemo/chat/widget/InputMessageWidget$3;
.super Ljava/lang/Object;
.source "InputMessageWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/InputMessageWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$3;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$3;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/InputMessageWidget;->onSendButtonClickedListener:Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->access$600(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$3;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->access$000(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$3;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->access$000(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Landroid/widget/EditText;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;->isValid(Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$3;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/InputMessageWidget$3;->this$0:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->access$000(Lcom/liquable/nemo/chat/widget/InputMessageWidget;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/liquable/nemo/chat/widget/InputMessageWidget;->sendMessage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->access$100(Lcom/liquable/nemo/chat/widget/InputMessageWidget;Ljava/lang/String;)V

    goto :goto_0
.end method
