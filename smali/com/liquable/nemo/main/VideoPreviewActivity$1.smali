.class Lcom/liquable/nemo/main/VideoPreviewActivity$1;
.super Ljava/lang/Object;
.source "VideoPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/VideoPreviewActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/VideoPreviewActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/VideoPreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/VideoPreviewActivity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/liquable/nemo/main/VideoPreviewActivity$1;->this$0:Lcom/liquable/nemo/main/VideoPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/liquable/nemo/main/VideoPreviewActivity$1;->this$0:Lcom/liquable/nemo/main/VideoPreviewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/main/VideoPreviewActivity;->setResult(I)V

    .line 85
    iget-object v0, p0, Lcom/liquable/nemo/main/VideoPreviewActivity$1;->this$0:Lcom/liquable/nemo/main/VideoPreviewActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/main/VideoPreviewActivity;->finish()V

    .line 86
    return-void
.end method
