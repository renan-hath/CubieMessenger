.class Lcom/liquable/nemo/chat/ImagePreviewActivity$3;
.super Ljava/lang/Object;
.source "ImagePreviewActivity.java"

# interfaces
.implements Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;


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
    .line 456
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$3;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 459
    const/4 v0, 0x1

    return v0
.end method

.method public sendWithSecretText(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$3;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    const/4 v1, 0x1

    new-instance v2, Lcom/liquable/nemo/analytics/PictureParameters;

    invoke-direct {v2}, Lcom/liquable/nemo/analytics/PictureParameters;-><init>()V

    # invokes: Lcom/liquable/nemo/chat/ImagePreviewActivity;->send(Ljava/lang/String;ZLcom/liquable/nemo/analytics/PictureParameters;)V
    invoke-static {v0, p1, v1, v2}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->access$200(Lcom/liquable/nemo/chat/ImagePreviewActivity;Ljava/lang/String;ZLcom/liquable/nemo/analytics/PictureParameters;)V

    .line 465
    return-void
.end method

.method public sendWithText(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$3;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    const/4 v1, 0x0

    new-instance v2, Lcom/liquable/nemo/analytics/PictureParameters;

    invoke-direct {v2}, Lcom/liquable/nemo/analytics/PictureParameters;-><init>()V

    # invokes: Lcom/liquable/nemo/chat/ImagePreviewActivity;->send(Ljava/lang/String;ZLcom/liquable/nemo/analytics/PictureParameters;)V
    invoke-static {v0, p1, v1, v2}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->access$200(Lcom/liquable/nemo/chat/ImagePreviewActivity;Ljava/lang/String;ZLcom/liquable/nemo/analytics/PictureParameters;)V

    .line 470
    return-void
.end method
