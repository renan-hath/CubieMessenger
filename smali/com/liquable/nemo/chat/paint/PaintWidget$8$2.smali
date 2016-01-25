.class Lcom/liquable/nemo/chat/paint/PaintWidget$8$2;
.super Ljava/lang/Object;
.source "PaintWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/paint/PaintWidget$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/chat/paint/PaintWidget$8;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/paint/PaintWidget$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/chat/paint/PaintWidget$8;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$8$2;->this$1:Lcom/liquable/nemo/chat/paint/PaintWidget$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$8$2;->this$1:Lcom/liquable/nemo/chat/paint/PaintWidget$8;

    iget-object v0, v0, Lcom/liquable/nemo/chat/paint/PaintWidget$8;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->clear()V

    .line 261
    return-void
.end method
