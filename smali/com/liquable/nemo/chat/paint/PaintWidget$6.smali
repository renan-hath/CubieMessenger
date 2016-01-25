.class Lcom/liquable/nemo/chat/paint/PaintWidget$6;
.super Ljava/lang/Object;
.source "PaintWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/paint/PaintWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/paint/PaintWidget;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/paint/PaintWidget;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$6;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    iput-object p2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$6;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->isPastable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$6;->val$context:Landroid/content/Context;

    const v1, 0x7f0d0542

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$6;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintWidget;->onPictureBtnClicked:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->access$400(Lcom/liquable/nemo/chat/paint/PaintWidget;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$6;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintWidget;->onPictureBtnClicked:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->access$400(Lcom/liquable/nemo/chat/paint/PaintWidget;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
