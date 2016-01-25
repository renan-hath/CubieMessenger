.class Lcom/liquable/nemo/chat/ImagePreviewActivity$4;
.super Ljava/lang/Object;
.source "ImagePreviewActivity.java"

# interfaces
.implements Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;


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
    .line 471
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$4;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSecretModeChanged(Z)V
    .locals 2
    .param p1, "isSecret"    # Z

    .prologue
    .line 474
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$4;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    const/4 v1, 0x0

    # invokes: Lcom/liquable/nemo/chat/ImagePreviewActivity;->updateImage(Z)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->access$300(Lcom/liquable/nemo/chat/ImagePreviewActivity;Z)V

    .line 475
    return-void
.end method
