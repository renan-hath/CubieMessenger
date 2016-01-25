.class Lcom/liquable/nemo/chat/ImageViewerActivity$10;
.super Ljava/lang/Object;
.source "ImageViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ImageViewerActivity;->showToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

.field final synthetic val$msgResId:I


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ImageViewerActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$10;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    iput p2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$10;->val$msgResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 700
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$10;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    iget v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$10;->val$msgResId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 701
    return-void
.end method
