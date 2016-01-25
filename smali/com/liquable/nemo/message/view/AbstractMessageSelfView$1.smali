.class Lcom/liquable/nemo/message/view/AbstractMessageSelfView$1;
.super Ljava/lang/Object;
.source "AbstractMessageSelfView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->initMessageBody(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/AbstractMessageSelfView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/AbstractMessageSelfView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/AbstractMessageSelfView;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView$1;->this$0:Lcom/liquable/nemo/message/view/AbstractMessageSelfView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, "msgId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/liquable/nemo/message/view/AbstractMessageSelfView$1;->this$0:Lcom/liquable/nemo/message/view/AbstractMessageSelfView;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/message/view/AbstractMessageSelfView;->onClickResend(Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method
