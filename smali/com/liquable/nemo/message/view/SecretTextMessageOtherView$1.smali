.class Lcom/liquable/nemo/message/view/SecretTextMessageOtherView$1;
.super Ljava/lang/Object;
.source "SecretTextMessageOtherView.java"

# interfaces
.implements Lcom/liquable/nemo/message/view/ReadSecretButton$OnReadSecretListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;->initUnlock(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/liquable/nemo/message/view/SecretTextMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRead(Lcom/liquable/nemo/message/model/ISecret;)V
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/ISecret;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/message/view/SecretTextMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;

    check-cast p1, Lcom/liquable/nemo/message/model/DomainMessage;

    .end local p1    # "message":Lcom/liquable/nemo/message/model/ISecret;
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;->updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 41
    return-void
.end method
