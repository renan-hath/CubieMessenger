.class Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView$1;
.super Ljava/lang/Object;
.source "SecretPictureMessageOtherView.java"

# interfaces
.implements Lcom/liquable/nemo/message/view/ReadSecretButton$OnReadSecretListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView;->initBubbleBody(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRead(Lcom/liquable/nemo/message/model/ISecret;)V
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/ISecret;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView;

    iget-object v0, v0, Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView;->context:Landroid/content/Context;

    check-cast p1, Lcom/liquable/nemo/message/model/SecretPictureMessage;

    .end local p1    # "message":Lcom/liquable/nemo/message/model/ISecret;
    invoke-static {v0, p1}, Lcom/liquable/nemo/chat/ChattingActivity;->dispatchMediaMessageIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 36
    return-void
.end method
