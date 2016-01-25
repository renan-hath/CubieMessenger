.class Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog$1;
.super Ljava/lang/Object;
.source "SecretMessageTipDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;->preShow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog$1;->this$0:Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog$1;->this$0:Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/SecretMessageTipDialog;->dismiss()V

    .line 41
    const/4 v0, 0x1

    return v0
.end method
