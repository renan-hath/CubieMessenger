.class Lcom/liquable/nemo/chat/paint/PaintWidget$8;
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
    .line 251
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$8;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    iput-object p2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$8;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d03b3

    new-instance v2, Lcom/liquable/nemo/chat/paint/PaintWidget$8$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$8$2;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget$8;)V

    .line 256
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00c5

    new-instance v2, Lcom/liquable/nemo/chat/paint/PaintWidget$8$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/paint/PaintWidget$8$1;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget$8;)V

    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0118

    .line 268
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 271
    return-void
.end method
