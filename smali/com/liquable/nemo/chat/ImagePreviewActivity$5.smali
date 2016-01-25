.class Lcom/liquable/nemo/chat/ImagePreviewActivity$5;
.super Ljava/lang/Object;
.source "ImagePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ImagePreviewActivity;->initInputMessageWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ImagePreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ImagePreviewActivity;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$5;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$5;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    # getter for: Lcom/liquable/nemo/chat/ImagePreviewActivity;->showCaseEffectView:Lcom/liquable/nemo/widget/ShowcaseView;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->access$400(Lcom/liquable/nemo/chat/ImagePreviewActivity;)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$5;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    # getter for: Lcom/liquable/nemo/chat/ImagePreviewActivity;->showCaseEffectView:Lcom/liquable/nemo/widget/ShowcaseView;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->access$400(Lcom/liquable/nemo/chat/ImagePreviewActivity;)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/ShowcaseView;->hide()V

    .line 481
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$5;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/chat/ImagePreviewActivity;->showCaseEffectView:Lcom/liquable/nemo/widget/ShowcaseView;
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->access$402(Lcom/liquable/nemo/chat/ImagePreviewActivity;Lcom/liquable/nemo/widget/ShowcaseView;)Lcom/liquable/nemo/widget/ShowcaseView;

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$5;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    # invokes: Lcom/liquable/nemo/chat/ImagePreviewActivity;->openImageEditor()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->access$500(Lcom/liquable/nemo/chat/ImagePreviewActivity;)V

    .line 484
    return-void
.end method
