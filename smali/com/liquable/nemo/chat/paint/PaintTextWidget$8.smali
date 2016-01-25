.class Lcom/liquable/nemo/chat/paint/PaintTextWidget$8;
.super Ljava/lang/Object;
.source "PaintTextWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/paint/PaintTextWidget;->onOpen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$8;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$8;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintTextWidget$8;->this$0:Lcom/liquable/nemo/chat/paint/PaintTextWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintTextWidget;->editPaintText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/liquable/nemo/chat/paint/PaintTextWidget;->access$000(Lcom/liquable/nemo/chat/paint/PaintTextWidget;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->toggleKeyboard(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 165
    return-void
.end method
